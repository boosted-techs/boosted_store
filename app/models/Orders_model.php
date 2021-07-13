<?php
/**
 * Created by PhpStorm.
 * User: welcome
 * Date: 2020-12-03
 * Time: 07:11
 */

class Orders_model extends Model
{
    function __construct()
    {
        parent::__construct();
    }

    function get_user_orders($user, $order = false) {
        if (empty($user))
            return false;
        if ($order)
            $this->db->where("id", $order);
        $this->db->orderBy("id", "desc");
        $this->db->where("user", $user);
        $data = $this->db->get("orders", null,
            "id, 
            user, 
            order_state, 
            amount, 
            date_created, 
            payment_confirmation
          ,
            (select order_ref from order_keys where order_keys.order = orders.id) as ref");
        return $data;
    }

    function get_user_order_items($user, $order) {
        if (! $user)
            return false;
        $this->db->where("ordered_items.order", $order);
        $this->db->where("orders.user", $user);
        $this->db->orderBy("name", "asc");
        $this->db->join("orders", "orders.id = ordered_items.order");
        $this->db->join("products", "products.id = ordered_items.product");
        return $this->db->get("ordered_items", null, "name, products.id,
        (select rate from product_rate where product = products.id and user = '" . $user . "') as user_rates,
        (select (sum(rate) / count(id)) from product_rate where product = products.id) as total_rates,
        products.url, 
        orders.description, feature_photo, ordered_items.amount, qty, (select size from product_sizes where id = ordered_items.size) as size,
        (select color from product_set_colors where id = ordered_items.color) as color");
    }

    function get_orders_by_temporary_id() {
        $temporary_id = $this->cookie->read("temporary_id");
        $this->db->where("temporary_id", $temporary_id);
        $data = $this->db->get("orders", null,
            "id, 
            user, 
            order_state, 
            amount, 
            date_created, 
            payment_confirmation,
            (select order_ref from order_keys where order_keys.order = orders.id) as ref");
        return $data;
    }

    function get_order_list($user, $order = false) {
        if (! $user)
            return false;

        if ($order)
            $this->db->where("id", $order);
        $user_id = $this->xss_clean($this->input->get("user"));
        if ($user_id)
            $this->db->where("user", $user_id);
        $this->db->orderBy("id", "desc");
        $data = $this->db->get("orders", null,
            "id, 
            user, 
            order_state,
            (select names from basic_info where user = orders.user) as names, 
            (select image from basic_info where user = orders.user) as image, 
            amount, 
            date_created,
            description,
            (select district from districts where id = orders.delivery_district) as district, 
            payment_confirmation,
            (select order_ref from order_keys where order_keys.order = orders.id) as ref");
        return $data;
    }

    function get_ordered_items($order, $user) {
        if (! $user)
            return false;
        $this->db->where("ordered_items.order", $order);
        $this->db->orderBy("name", "asc");
        $this->db->join("orders", "orders.id = ordered_items.order");
        $this->db->join("products", "products.id = ordered_items.product");
        return $this->db->get("ordered_items", null, "name, products.id,
        (select rate from product_rate where product = products.id and user = '" . $user . "') as user_rates,
        (select (sum(rate) / count(id)) from product_rate where product = products.id) as total_rates,
        products.url,
        (select supplier from product_suppliers where product_suppliers.id = products.supplier) as supplier,
        (select url from product_suppliers where product_suppliers.id = products.supplier) as supplier_url,
        products.description, feature_photo, ordered_items.amount, qty, (select size from product_sizes where id = ordered_items.size) as size,
        (select color from product_set_colors where id = ordered_items.color) as color");
    }

}