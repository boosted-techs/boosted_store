<?php
/**
 * Created by PhpStorm.
 * User: welcome
 * Date: 2020-11-22
 * Time: 18:26
 */

class Products_model extends Model
{
    public $search_permutations = "";
    function __construct()
    {
        parent::__construct();
    }

    function get_sizes() {
        $this->db->orderBy("size", "asc");
        $data = $this->db->get("product_general_sizes", null, "id, 
        size, 
        status, 
        date_created, 
         (select names from basic_info where user = product_general_sizes.user) as names");
        return $data;
    }

    function new_size($user) {

        if (! $user)
            return false;
        $size = $this->xss_clean($this->input->post("size"));
        $status = $this->xss_clean($this->input->post("status"));

        if (empty($size) or empty($status))
            return false;

        $this->db->insert("product_general_sizes",
            array("size" => $size,
                "status" => $status,
                "date_created" => date("Y-m-d"),
                "user" => $user
               ));

        return true;
    }

    function get_colors() {
        $this->db->orderBy("color", "asc");
        $data = $this->db->get("product_colors", null, "id, 
        color, 
        status, 
        date_created, 
         (select names from basic_info where user = product_colors.user) as names");
        return $data;
    }

    function new_color($user) {
        if (! $user)
            return false;
        $color = $this->xss_clean($this->input->post("color"));
        $status = $this->xss_clean($this->input->post("status"));

        if (empty($color) or empty($status))
            return false;

        $this->db->insert("product_colors",
            array("color" => $color,
                "status" => $status,
                "date_created" => date("Y-m-d"),
                "user" => $user
            ));

        return true;
    }

    function new_product($user) {
        if (! $user)
            return false;
        //print_r($this->input->post());
        $product = $this->xss_clean($this->input->post("product"));
        $url = str_replace(" ", "-", $this->replace_multiple_spaces($this->remove_none_utf_char($this->remove_special_chars($product))));
        $url = $this->check_url_for_duplicates(strtolower($url), "products", "url");
        $new_price = $this->xss_clean($this->input->post("price_one"));
        $old_price = $this->xss_clean($this->input->post("price_two"));
        $sizes = $this->input->post("sizes");
        $color = $this->input->post("color");
        $summary = $this->xss_clean($this->input->post("summary"));
        $description = $this->input->post("description");
        $currency = $this->xss_clean($this->input->post("currency"));
        $supplier = $this->xss_clean($this->input->post("supplier"));
        $measurement = $this->xss_clean($this->input->post("measurement"));
        $category = $this->xss_clean($this->input->post("category"));
        $keywords = $this->xss_clean($this->input->post("keywords"));
        $sub_category = $this->xss_clean($this->input->post("sub-category"));
        $id = $this->db->insert("products", array("name" => $product, "metric" => $measurement, "currency" => $currency,
            "description" => $description,"keywords" => $keywords, "summary" => $summary, "price_1" => $new_price, "price_2" => $old_price, "date_added" => date("Y-m-d"),
            "user" => $user, "category" => $category, "sub_category" => $sub_category, "supplier" => $supplier, "url" => $url));
        if (! empty($sizes))
            foreach($sizes as $size => $i)
                $this->db->insert("product_sizes", array("size" => $i, "user" => $user, "date_created" => date("Y-m-d"), "product" => $id));
        if (! empty($color))
            foreach($color as $size => $i)
                $this->db->insert("product_set_colors", array("color" => $i, "user" => $user, "date_created" => date("Y-m-d"), "product" => $id));
        return $url;
    }

    function get_product_info($product, $status = false, $record_country = false, $user = false) {
        $product = $this->get_product_id_by_url($this->xss_clean($product));
        if (! $product)
            return false;
        $this->db->where("id", $product);
        if($status)
            $this->db->where("status", 1);
        $data = $this->db->getOne("products", "keywords, products.id, name, metric, currency, description, summary, price_1, price_2,
        feature_photo, 
        rates,
         date_added, 
        date_updated, user, metric,
        in_stock,
        (select supplier from product_suppliers where product_suppliers.id = products.supplier) as supplier_name,
        (select url from product_suppliers where product_suppliers.id = products.supplier) as supplier_url,
        (select currency from product_currency where id = products.currency) as currency_name,
        (select category from product_categories where product_categories.id = products.category) as product_category, category,
         sub_category, 
         (select category from product_sub_categories where product_sub_categories.id = products.sub_category) as product_sub_category,
         sub_category,
          supplier,
           url, 
           status,
            (select names from basic_info where user = products.user) as names
         ");

        $this->db->where("product", $product);
        $colors = $this->db->get("product_set_colors", null, "color");
        $color_array = [];
        foreach($colors as $color)
            array_push($color_array, $color['color']);

        $this->db->where("product", $product);
        $sizes = $this->db->get("product_sizes", null, "size");
        $size_array = [];
        foreach($sizes as $size)
            array_push($size_array, $size['size']);

        /*
         * lets record the region from which the product was viewed from
         */
        if($record_country and count($data) > 0) {
            $this->model("User_agents_model");
            $location_details = $this->model->User_agents_model->get_client_location();
            $user = $user ?? NULL;
            $id = $this->db->insert("products_viewed", array("product" => $product, "user" => $user));
            $this->db->insert("products_view_location",
                array("product_view_id" => $id, "country" => $location_details['country'],
                    "city" => $location_details['country'],
                    "region" => $location_details['region']));
        }
        return array("product_info" => $data, "colors" => $color_array, "sizes" => $size_array, "thumbnails" => $this->get_product_thumbnails($product));
    }

    function get_all_products($limit = null, $status = false, $category = false, $supplier = false, $sub_category = false) {
        if ($status)
            $this->db->where("status", 1);

        if ($category)
            $this->db->where("category", $category);

        if ($supplier)
            $this->db->where("supplier", $supplier);

        if ($sub_category)
            $this->db->where("sub_category", $sub_category);

        $page = $this->input->get("page") ? $this->input->get("page") : 1;
        $page = (int)$page;
        $this->db->pageLimit = is_null($limit) ? 200 : 12;

        $this->db->orderBy("id", "desc");
        $data = $this->db->paginate("products", $page,"products.id, name, metric, currency, description, summary, price_1, price_2,
        feature_photo, 
        rates,
         date_added, 
        date_updated, user, 
        (select (sum(rate) / count(product_rate.id)) from product_rate where product_rate.product = products.id) as total_rates,
        (select currency from product_currency where id = products.currency) as currency_name,
        (select category from product_categories where product_categories.id = products.category) as product_category, category,
         sub_category, (select category from product_sub_categories where product_sub_categories.id = products.sub_category) as product_sub_category,
         sub_category, supplier, url, status, (select names from basic_info where user = products.user) as names
         ");
        return $data;
    }

    function get_most_rated_products($status = false, $category = false, $special_category = false, $table = false, $sub_category = false) {
        /*
         * Table is containing special tables eg best deals, etc
         */
        $page = 1;
        if ($status)
            $this->db->where("status", 1);
        $this->db->pageLimit = 12;
        if ($category and ! $special_category and $sub_category)
            $this->db->where("products.category", $category);
        if ($special_category)
            $this->db->join($table, $table . ".product = products.id");

        if ($sub_category)
            $this->db->where("products.sub_category", $category);

        $this->db->join("product_rate", "product_rate.product = products.id", "left");

        $this->db->groupBy("products.id");
        $this->db->orderBy("products_count", "desc");
        $data = $this->db->paginate("products", $page, "sum(product_rate.rate) as products_count, products.id, name, metric, currency, description, summary, price_1, price_2,
        feature_photo, 
        rates,
         products.date_added, 
        products.date_updated, products.user,
                (select (sum(rate) / count(product_rate.id)) from product_rate where product_rate.product = products.id) as total_rates,
        (select currency from product_currency where id = products.currency) as currency_name,
        (select category from product_categories where product_categories.id = products.category) as product_category, category,
         sub_category, (select category from product_sub_categories where product_sub_categories.id = products.sub_category) as product_sub_category,
         sub_category, supplier, url, status, (select names from basic_info where user = products.user) as names");
       return $data;
    }

    function get_most_sold_products($status = false, $category = false, $special_category = false, $table = false,$sub_category = false) {
        /*
        * Table is containing special tables eg best deals, etc
        */
        $page = 1;
        if ($status)
            $this->db->where("status", 1);
        $this->db->pageLimit = 12;
        if ($category and ! $special_category and ! $sub_category)
            $this->db->where("products.category", $category);
        if ($special_category)
            $this->db->join($table, $table . ".product = products.id");

        if ($sub_category)
            $this->db->where("products.sub_category", $category);

        $this->db->join("ordered_items", "ordered_items.product = products.id");
        $this->db->groupBy("products.id");
        $this->db->orderBy("products_count", "desc");
        $data = $this->db->paginate("products", $page, "count(ordered_items.product) as products_count, products.id, name, metric, currency, description, summary, price_1, price_2,
        feature_photo, 
        rates,
         products.date_added, 
        products.date_updated, products.user,
                (select (sum(rate) / count(product_rate.id)) from product_rate where product_rate.product = products.id) as total_rates,
        (select currency from product_currency where id = products.currency) as currency_name,
        (select category from product_categories where product_categories.id = products.category) as product_category, category,
         sub_category, (select category from product_sub_categories where product_sub_categories.id = products.sub_category) as product_sub_category,
         sub_category, supplier, url, status, (select names from basic_info where user = products.user) as names");
        //echo $this->db->getLastQuery(); die();
        return $data;
    }

    function special_category_products($table) {
        return $this->get_special_categories(null, $table);
    }

    function get_product_id_by_url($url) {
        $this->db->where("url", $url);
        return $this->db->getValue("products", "id");
    }


    function update_product($user) {
        if (! $user)
            return false;
        //print_r($this->input->post());
        $id = $this->input->post("id");
        $product = $this->xss_clean($this->input->post("product"));
        $new_price = $this->xss_clean($this->input->post("price_one"));
        $old_price = $this->xss_clean($this->input->post("price_two"));
        $summary = $this->xss_clean($this->input->post("summary"));
        $description = $this->input->post("description");
        $currency = $this->xss_clean($this->input->post("currency"));
        $supplier = $this->xss_clean($this->input->post("supplier"));
        $measurement = $this->xss_clean($this->input->post("measurement"));
        $category = $this->xss_clean($this->input->post("category"));
        $sub_category = $this->xss_clean($this->input->post("sub-category"));
        $keywords = $this->xss_clean($this->input->post("keywords"));
        $this->db->where("id", $id);
        $this->db->update("products", array("name" => $product, "keywords" => $keywords, "metric" => $measurement, "currency" => $currency,
            "description" => $description, "summary" => $summary, "price_1" => $new_price, "price_2" => $old_price, "date_added" => date("Y-m-d"),
            "user" => $user, "category" => $category, "sub_category" => $sub_category, "supplier" => $supplier));
    }

    function update_product_size($user, $table, $column) {
        if (! $user)
            return false;
        $action = $this->input->post("action");
        $value = $this->input->post("value");
        $product = $this->input->post("product");
        if ($action) {
            $this->db->insert($table, array($column => $value,
                "date_created" => date("Y-m-d"),
                "product" => $product,
                "user" => $user));
        } else {
            $this->db->where("product", $product);
            $this->db->where($column, $value);
            $this->db->delete($table);
        }
    }

    function get_product_thumbnails($product) {
        $this->db->where("product", $product);
        $this->db->orderBy("id", "desc");
        return $this->db->get("product_images", null, "photo, id,
        product, user, 
        status, date_created,feature_photo,
        (select names from basic_info where user = product_images.user) as names");
    }

    function add_thumbnail($file_name, $user, $product) {
        $this->db->insert("product_images", array("photo" => $file_name,
            "user" => $user,
            "product" => $product,
            "date_created" => date("Y-m-d")));
    }

    function make_feature_photo($photo, $product, $user) {
        if (empty($user))
            return false;

        $action = $this->input->get("i");
        if (! is_numeric($action))
            return false;
        $action = $action == 2 ? 1 : 0;
        $this->db->where("product", $product);
        $this->db->update("product_images", array("feature_photo" => 0));

        $this->db->where("id", $photo);
        $this->db->update("product_images", array("feature_photo" => $action));

        $this->db->where("id", $photo);
        $photo_link = $this->db->getValue("product_images", "photo");

        $this->db->where("id", $product);
        $this->db->update("products", array("feature_photo" => $photo_link));
    }

    function activate_product_attributes($user) {
        if (empty($user))
            return false;
        //print_r($this->input->post());
        /*
         * This is a general method that changes status to all product attributes to there different tables
         */
        $column_data = $this->input->post("data");
        $table = $this->xss_clean($this->input->post("page"));
        $action = $this->xss_clean($this->input->post("action"));

        $action = $action == 2 ? 0 : 1;

        if (empty($column_data))
            return false;

        foreach ($column_data as $pk => $key)/*Pk is primaey key */{
            $this->db->where("id", $key);
            $this->db->update($table, array("status" => $action));
        }
        echo $this->db->getLastQuery();
    }

    function manage_special_categories($user) {
        if (empty($user))
            return false;
        //print_r($this->input->post());
        /*
         * This is a general method that changes status to all product attributes to there different tables
         */
        $column_data = $this->input->post("data");
        $table = $this->xss_clean($this->input->post("page"));
        $action = $this->xss_clean($this->input->post("action"));

        /*
         * Action 1 is adding to special category
         * Action 2 is deleting
         */
        if (empty($column_data))
            return false;

        if ($action == 1) {
            /*
             * Before adding, we need to avoid duplicates
             */
            foreach ($column_data as $pk => $key)/*Pk is primaey key */{
                $this->db->where("product", $key);
                $data = $this->db->getValue($table, "id");
                if ($data)
                    continue; //We avoid duplicates so we check if the data exists in the table before insertion
                $this->db->insert($table, array("product" => $key, "user" => $user));
            }

        } else {
            foreach ($column_data as $pk => $key)/*Pk is primaey key */{
                $this->db->where("product", $key);
                $this->db->delete($table);
            }
        }
    }

    function get_special_categories($limit = 10, $table, $status = true) {
        $page = $this->input->get("page") ? $this->input->get("page") : 1;
        $page = (int)$page;
        $this->db->pageLimit = 20;
        if ($status)
            $this->db->where("Status", 1);
        $this->db->orderBy("id", "desc");
        $this->db->join("products", "products.id = " . $table . ".product", "left");
        return $this->db->paginate($table, $page, "products.id, name, metric, currency, description, summary, price_1, price_2,
        feature_photo, 
        rates,
         products.date_added,
         (select (sum(rate) / count(id)) from product_rate where product = products.id) as total_rates, 
        products.date_updated, products.user, metric,
        (select currency from product_currency where id = products.currency) as currency_name,
        (select category from product_categories where product_categories.id = products.category) as product_category, category,
         sub_category, (select category from product_sub_categories where product_sub_categories.id = products.sub_category) as product_sub_category,
         sub_category, supplier, url, status, (select names from basic_info where user = products.user) as names
         ");
    }

    function get_product_attribute($product) {
        $this->db->where("product", $product);
        $this->db->join("product_colors", "product_colors.id = product_set_colors.color");
        $colors = $this->db->get("product_set_colors", null, "product_colors.color, product_colors.id");

        $this->db->where("product", $product);
        $this->db->join("product_general_sizes", "product_general_sizes.id = product_sizes.size");
        $sizes = $this->db->get("product_sizes", null, "product_general_sizes.size, product_general_sizes.id");
        return array("colors" => $colors, "sizes" => $sizes);
    }

    function get_products_by_category() {
        $this->model("Categories_model");
        $categories = $this->model->Categories_model->get_categories(true);
        $category_data = [];
        foreach ($categories as $item) {
            $item['products'] = $this->get_all_products(6,  true, $item['id']);
            array_push($category_data, $item);
        }
        return $category_data;
    }

    function get_cart_items($cart_items) {
        if (empty($cart_items))
            return false;

        $this->db->where("id", $cart_items, "IN");
        $data = $this->db->get("products", null,"products.id, name, metric, currency, description, summary, price_1, price_2,
        feature_photo, 
        rates,
         date_added, 
        date_updated, user, 
        (select currency from product_currency where id = products.currency) as currency_name,
        (select (sum(rate) / count(id)) from product_rate where product = products.id) as total_rates,
        (select category from product_categories where product_categories.id = products.category) as product_category, category,
         sub_category, (select category from product_sub_categories where product_sub_categories.id = products.sub_category) as product_sub_category,
         sub_category, supplier, url, status, (select names from basic_info where user = products.user) as names
         ");
        $data_array = [];
        foreach ($data as $item) {
            $item['attributes'] = $this->get_product_attribute($item['id']);
            $data_array[] = $item;
        }
        return $data_array;
    }

    function search_products($user) {
        $search_query = $this->xss_clean(trim($this->input->get("q")));
        $page = $this->input->get("page") ? $this->input->get("page") : 1;
        $page = (int)$page;
        if(empty($search_query))
            return array();

        if (strlen($search_query) < 2)
            return array();


        $user = $user ? $user : null;

        $this->db->pageLimit = 20;

        $search_array = explode(" ", $search_query);
        $i = 0; //Limiting he search words to only 4
        foreach ($search_array as $item) {
            if ($i > 3)
                break; //So when our search words are greater than 4, we terminate the loop
            $this->db->orWhere("LOWER(name)", "%" . strtolower($item) . "%", "like");
            $i++;
        }
        $this->db->where("status", 1);
        $data = $this->db->paginate("products", $page,"products.id, name, metric, currency, description, summary, price_1, price_2,
                feature_photo, 
                rates,
                 date_added, 
                date_updated, user, 
                (select (sum(rate) / count(id)) from product_rate where product = products.id) as total_rates,
                (select currency from product_currency where id = products.currency) as currency_name,
                (select category from product_categories where product_categories.id = products.category) as product_category, category,
                 sub_category, (select category from product_sub_categories where product_sub_categories.id = products.sub_category) as product_sub_category,
                 sub_category, supplier, url, status, (select names from basic_info where user = products.user) as names
                 ");
        $id = $this->db->insert("products_search_base", array("user" => $user, "search_term" => $search_query));
        if (! empty($data))
            foreach ($data as $item)
                $this->db->insert("products_searched", array("user" => $user, "product" => $item['id'], "search_query" => $id));

        return $data;
    }

    function pc_permute($items, $column,  $perms = array( )) {
        if (empty($items)) {
            $this->db->orWhere("( LOWER(" . $column . ") like ?)", array("%" . join(' ', $perms) . "%"));
             //$this->search_permutations = $this->search_permutations ." (". $column . " like '" . join(' ', $perms) . "%') OR ";

        }  else {
            for ($i = count($items) - 1; $i >= 0; --$i) {
                $new_items = $items;
                $new_perms = $perms;
                list($foo) = array_splice($new_items, $i, 1);
                array_unshift($new_perms, $foo);
                $this->pc_permute($new_items, $column, $new_perms);
            }
            //return $string;
        }
    }

    function Get_pending_confirmation_orders() {
        $this->db->where("payment_confirmation", 1);
        $this->db->where("orders.mail", 0);
        $this->db->join("basic_info", "basic_info.user = orders.user");
        return $this->db->get("orders", null, array("orders.id, amount, orders.date_created, names, email, (select email from addresses where user = orders.user) as alt_email"));
    }

    function payment_confirmation_mail_sent($order) {
        $this->db->where("id", $order);
        $this->db->update("orders", array("mail" => 1));
    }

    function rate_product($rate, $product, $user) {
        if (! $user)
            return false;
        if (! is_numeric($product) or ! is_numeric($rate) or $rate < 1 or $rate > 5)
            return false;
        $this->db->where("user", $user);
        $this->db->where("product", $product);
        $id = $this->db->getValue("product_rate", "id");
        if ($id) {
            $this->db->where("id", $id);
            $this->db->update("product_rate", array("rate" => $rate));
        }
        else
            $this->db->insert("product_rate", array("user" => $user, "product" => $product, "rate" => $rate));
        return true;

    }

    function comment_on_product($product, $comment, $user) {
        if (! $user)
            return false;
        echo 1;
        if (empty($comment) or empty($product) or ! is_numeric($product))
            return false;
        $comment = $this->xss_clean($comment);
        $this->db->insert("product_views", array("product" => $product, "user" => $user, "comment" => $comment));
        return true;
    }

    function delete_photo() {
        $image_name = $this->input->get("i");
        if (! $image_name)
            return false;
        $image_path = "media/products_thumbnails/" . $image_name;
        $this->db->where("photo", $image_name);
        if ($this->db->delete("product_images"))
            unlink($image_path);
    }

    function get_viewed_products($user) {
        if (! $user)
            return false;

        $page = 1;
        $this->db->join("products", "products.id = products_viewed.product");
        $this->db->groupBy("products_viewed.product");
        $data = $this->db->paginate("products_viewed", $page,"products.id as product, products_viewed.id, name, metric, currency, description, summary, price_1, price_2,
                feature_photo,
                count(products_viewed.id) as views, 
                rates,
                                 sub_category, (select category from product_sub_categories where product_sub_categories.id = products.sub_category) as product_sub_category,
                         (select category from product_categories where product_categories.id = products.category) as product_category, category,
                 products_viewed.date_added, 
                    date_updated, products_viewed.user, 
                 sub_category, supplier, url, status, (select names from basic_info where user = products.user) as names
                 ");
        return $data;
    }

    function add_thumbnail_url($user) {
        if (! $user)
            return false;
        $id = $this->xss_clean($this->input->post("product"));
        $url = $this->xss_clean($this->input->post("url"));

        $this->db->where("product", $id);
        $this->db->where("photo", $url);
        $data = $this->db->getValue("product_images", "id");
        if ($data) {
            $this->db->where("id", $data);
            $this->db->delete("product_images");
        }
        else
            $this->db->insert("product_images", array("photo" => $url, "product" => $id, "user" => $user, "date_created" => date("Y-m-d")));
    }

    function get_supplier_order_summary($id) {
        if (! $id)
            return false;
        $products = $this->db->rawQuery("
        select count(products.id) as products, products.supplier as supplier_1, 
        (select count(ordered_items.id) from ordered_items left join orders on orders.id = ordered_items.product left join products on products.id = ordered_items.product where products.supplier = supplier_id) as orders from products join product_suppliers on product_suppliers.id = products.supplier where supplier_id = ?", array($id));
        return $products;
    }

    function get_products_per_category() {
        $this->db->where("status", 1);
        $this->db->where("display", 1);
        $this->db->orderBy("priority", "desc");
        $data = $this->db->get("product_sub_categories", null, array("category, id, url"));
        $sub_category_data = [];
        foreach ($data as $item) {
            $item['products'] = $this->get_all_products(null, false, false, false, $item['id']);
            array_push($sub_category_data, $item);
        }
        return $sub_category_data;
    }

    function duplicate_product($user, $item) {
        if ($user[0]['role'] != 1)
            return false;

        //echo $item;
        $this->db->where("id", $item);
        $item_data = $this->db->getOne("products", "*");
        if (empty($item_data))
            return false;
        $url = $this->check_url_for_duplicates(strtolower($item_data['url']), "products", "url");
        //echo $url;

        $thumbnails = $this->get_product_thumbnails($item);
        $item_data['url'] = $url;
        $item_data['date_added'] = date("Y-m-d");
        $item_data['user'] = $user[0]['user_id'];
        $item_data['status'] = 0;
        unset($item_data['id']);
        $product = $this->db->insert("products", $item_data);
        if (! empty($thumbnails)) {
            foreach ($thumbnails as $list) {
                unset($list['id']);
                unset($list['names']);
                $list['user'] = $user[0]['user_id'];
                $list['date_created'] = date("Y-m-d");
                $list['product'] = $product;
                $this->db->insert("product_images", $list);
            }
        }
        return $url;
    }
}