<?php
/**
 * Created by PhpStorm.
 * User: welcome
 * Date: 2020-09-22
 * Time: 12:39
 */

class Home extends Controller
{
    function __construct()
    {
        parent::__construct();
        $this->model("Api_keys");
        $this->model("Api_model");
        $this->model("User_model");
        $this->model("Products_model");
        $this->model("Categories_model");
        $this->model("Suppliers_model");
    }

    function index() {
        if (! empty($this->input->get("out"))) {
            $this->cookie->destroy();
            $this->redirect("//" . $this->server->server_name);
        }
        $key = $this->model->Api_keys->generate_keys();
        $id = $this->model->User_model->is_logged_in();
        $this->smarty->assign("user_info", $this->model->User_model->get_user_profile($id));
        $this->session->set_user_data("key", $key);
        $this->smarty->assign("key", $key);
        $this->smarty->assign("website", "1");
        $this->smarty->assign("get_category_lists", $this->model->Products_model->get_products_per_category());
        $this->smarty->assign("top_rated", $this->model->Products_model->get_most_rated_products(true));
        $this->smarty->assign("most_sold_products", $this->model->Products_model->get_most_sold_products(true));
        $this->smarty->assign("suppliers", $this->model->Suppliers_model->get_suppliers(true));
        $this->smarty->assign("categories", $this->model->Categories_model->get_categories(true));
        $this->smarty->assign("special_offer", $this->model->Products_model->get_special_categories(1, "products_special_offers"));
        $this->smarty->assign("featured_products", $this->model->Products_model->get_special_categories(6, "products_featured"));
        $this->smarty->assign("best_deal_products", $this->model->Products_model->get_special_categories(6, "products_best_deals"));
        $this->smarty->assign("recently_added_products", $this->model->Products_model->get_all_products(8, true));
        $this->smarty->assign("domain", $this->model->User_model->active_domain());
        $this->smarty->display("website.tpl");
    }

    function create_cart() {

        $cart_item = $this->input->post("item");

        $cart = $this->session->data('cart');
        if (is_array($cart))
            if (($key = array_search($cart_item, $cart)) !== false)
                unset($cart[$key]);

        $cart[] = $cart_item;
        $this->session->set_user_data("cart", $cart);
        echo json_encode(count($cart));
    }

    function create_watchlist() {
        $id = $this->model->User_model->is_logged_in();
        $item = $this->input->post("item");
        $watchlist = $this->session->data("watchlist");
        if (is_array($watchlist))
            if (($key = array_search($item, $watchlist)) !== false)
                unset($watchlist[$key]);

        $watchlist[] = $item;
        $this->session->set_user_data("watchlist", $watchlist);
        if ($id)
            $watchlist = $this->model->User_model->update_watchlist($id, $watchlist);
        echo json_encode(count($watchlist));
    }

    function get_cart() {
        $id = $this->model->User_model->is_logged_in();
        $cart = $this->session->data("cart");
        if (is_array($cart))
            $cart_items = count($cart);
        else
            $cart_items = 0;

        if ($id)
            $watchlist_items = count($this->model->User_model->get_watchlist_items($id));
        else {
            $watchlist = $this->session->data("watchlist");
            if (is_array($watchlist))
                $watchlist_items = count($watchlist);
            else
                $watchlist_items = 0;
        }
        echo json_encode(array("cart" => $cart_items, "watchlist" => $watchlist_items));
    }

    function remove_from_cart($cart_item) {
        $cart = $this->session->data('cart');
        if (is_array($cart))
            if (($key = array_search($cart_item, $cart)) !== false)
                unset($cart[$key]);
        $this->session->set_user_data("cart", $cart);
        $this->redirect($this->server->http_refer);
    }

    function delete_watchlist_item($item) {
        $id = $this->model->User_model->is_logged_in();
        $this->model->User_model->delete_watchlist_item($id, $item);
        $this->redirect($this->server->http_refer);
    }

    function search_products() {
        $key = $this->model->Api_keys->generate_keys();
        $this->session->set_user_data("key", $key);
        $id = $this->model->User_model->is_logged_in();
        $this->smarty->assign("user_info", $this->model->User_model->get_user_profile($id));
        $this->smarty->assign("key", $key);
        $this->smarty->assign("page", "Search");
        $this->smarty->assign("domain", $this->model->User_model->active_domain());
        $this->smarty->assign("categories", $this->model->Categories_model->get_categories(true));
        $this->smarty->assign("search_results", $this->model->Products_model->search_products($id));
        $special_offer_products = $this->model->Products_model->get_special_categories(1, "products_special_offers");
        $this->smarty->assign("special_offer", $special_offer_products);
        $this->smarty->assign("top_rated", $this->model->Products_model->get_most_rated_products(true));
        $this->smarty->assign("most_sold_products", $this->model->Products_model->get_most_sold_products(true));
        $this->smarty->assign("suppliers", $this->model->Suppliers_model->get_suppliers(true));
        $this->smarty->assign("category_products", $special_offer_products);
        $this->smarty->assign("featured_products", $this->model->Products_model->get_special_categories(6, "products_featured"));
        $this->smarty->assign("best_deal_products", $this->model->Products_model->get_special_categories(6, "products_best_deals"));
        $this->smarty->assign("recently_added_products", $this->model->Products_model->get_all_products(8, true));
        $this->smarty->display("products/search.tpl");
    }

    function subscribe() {
        $email = trim($this->input->post("email"));
        if (!filter_var($email, FILTER_VALIDATE_EMAIL))
            $emailErr = "Invalid email format";
        else
            $emailErr = $this->model->User_model->subscribe($email);
        echo $emailErr;
    }

    function privacy() {
        $this->smarty->display("privacy/index.tpl");
    }

    function terms() {
        $this->smarty->display("privacy/terms.tpl");
    }

    function affiliate() {
        $key = $this->model->Api_keys->generate_keys();
        $id = $this->model->User_model->is_logged_in();
        $this->smarty->assign("user_info", $this->model->User_model->get_user_profile($id));
        $this->session->set_user_data("key", $key);
        $this->smarty->assign("key", $key);
        $this->smarty->assign("top_rated", $this->model->Products_model->get_most_rated_products(true));
        $this->smarty->assign("suppliers", $this->model->Suppliers_model->get_suppliers(true));
        $this->smarty->assign("most_sold_products", $this->model->Products_model->get_most_sold_products(true));
        $this->smarty->assign("domain", $this->model->User_model->active_domain());
        $this->smarty->assign("categories", $this->model->Categories_model->get_categories(true));
        $this->smarty->assign("special_offer", $this->model->Products_model->get_special_categories(1, "products_special_offers"));
        $this->smarty->assign("featured_products", $this->model->Products_model->get_special_categories(6, "products_featured"));
        $this->smarty->assign("best_deal_products", $this->model->Products_model->get_special_categories(6, "products_best_deals"));
        $this->smarty->assign("recently_added_products", $this->model->Products_model->get_all_products(8, true));
        $this->smarty->display("affiliate/index.tpl");
    }

    function become_a_supplier() {
        $key = $this->model->Api_keys->generate_keys();
        $id = $this->model->User_model->is_logged_in();
        $this->smarty->assign("user_info", $this->model->User_model->get_user_profile($id));
        $this->session->set_user_data("key", $key);
        $this->smarty->assign("key", $key);
        $this->smarty->assign("top_rated", $this->model->Products_model->get_most_rated_products(true));
        $this->smarty->assign("suppliers", $this->model->Suppliers_model->get_suppliers(true));
        $this->smarty->assign("most_sold_products", $this->model->Products_model->get_most_sold_products(true));
        $this->smarty->assign("domain", $this->model->User_model->active_domain());
        $this->smarty->assign("categories", $this->model->Categories_model->get_categories(true));
        $this->smarty->assign("special_offer", $this->model->Products_model->get_special_categories(1, "products_special_offers"));
        $this->smarty->assign("featured_products", $this->model->Products_model->get_special_categories(6, "products_featured"));
        $this->smarty->assign("best_deal_products", $this->model->Products_model->get_special_categories(6, "products_best_deals"));
        $this->smarty->assign("recently_added_products", $this->model->Products_model->get_all_products(8, true));
        $this->smarty->display("supplier/index.tpl");
    }

    function supplier_dashboard() {
        $key = $this->model->Api_keys->generate_keys();
        $id = $this->model->User_model->is_logged_in();
        $this->smarty->assign("user_info", $this->model->User_model->get_user_profile($id));
        $this->session->set_user_data("key", $key);
        $this->smarty->assign("key", $key);
        $this->smarty->assign("application_data", $this->model->Suppliers_model->get_supplier_application_data($id));
        $this->smarty->assign("top_rated", $this->model->Products_model->get_most_rated_products(true));
        $this->smarty->assign("suppliers", $this->model->Suppliers_model->get_suppliers(true));
        $this->smarty->assign("most_sold_products", $this->model->Products_model->get_most_sold_products(true));
        $this->smarty->assign("domain", $this->model->User_model->active_domain());
        $this->smarty->assign("categories", $this->model->Categories_model->get_categories(true));
        $this->smarty->assign("special_offer", $this->model->Products_model->get_special_categories(1, "products_special_offers"));
        $this->smarty->assign("featured_products", $this->model->Products_model->get_special_categories(6, "products_featured"));
        $this->smarty->assign("best_deal_products", $this->model->Products_model->get_special_categories(6, "products_best_deals"));
        $this->smarty->assign("recently_added_products", $this->model->Products_model->get_all_products(8, true));
        $this->smarty->display("supplier/dashboard.tpl");
    }

    function view_supplier_business($supplier) {
        $key = $this->model->Api_keys->generate_keys();
        $id = $this->model->User_model->is_logged_in();
        $supplier = $this->model->Suppliers_model->get_suppliers(true, $id);

        $this->smarty->assign("user_info", $this->model->User_model->get_user_profile($id));
        $this->session->set_user_data("key", $key);
        $this->smarty->assign("key", $key);
        $this->smarty->assign("application_data", $this->model->Suppliers_model->get_supplier_application_data($id));
        $this->smarty->assign("top_rated", $this->model->Products_model->get_most_rated_products(true));
        $this->smarty->assign("suppliers", $this->model->Suppliers_model->get_suppliers(true));
        $this->smarty->assign("most_sold_products", $this->model->Products_model->get_most_sold_products(true));
        $this->smarty->assign("domain", $this->model->User_model->active_domain());
        $this->smarty->assign("categories", $this->model->Categories_model->get_categories(true));
        $this->smarty->assign("special_offer", $this->model->Products_model->get_special_categories(1, "products_special_offers"));
        $this->smarty->assign("featured_products", $this->model->Products_model->get_special_categories(6, "products_featured"));
        $this->smarty->assign("best_deal_products", $this->model->Products_model->get_special_categories(6, "products_best_deals"));
        $this->smarty->assign("order_summary", $this->model->Products_model->get_supplier_order_summary($id));
        $this->smarty->assign("recently_added_products", $this->model->Products_model->get_all_products(8, true));
        $this->smarty->assign("suppliers", $supplier);
        $this->smarty->assign("photos", $this->model->Suppliers_model->get_supplier_thumbnails(false, $supplier[0]['id']));
        $this->smarty->display("supplier/business_profile.tpl");
    }
}