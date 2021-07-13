<?php
/**
 * Created by PhpStorm.
 * User: welcome
 * Date: 2020-12-03
 * Time: 07:10
 */

class Dashboard_summaries_model extends Model
{
    function __construct()
    {
        parent::__construct();
    }

    function get_all_summaries() {
        $duration = $this->input->get("duration"); #Get number of days in this variable
        /*
         * We get the day after these days elapsed
         * Eg, you maye need to get products in the last 30days
         */
        $duration = $duration ? $duration : 30; //if not set, get records for past 30 days
        $duration =  date("Y-m-d", strtotime((date("Y-m-d") . " -".$duration." days")));

        $duration = "CAST(date_created AS DATE) >= '" . $duration . "'";
        $this->db->where($duration);
        $order_data = $this->db->getOne("orders", "count(id) as all_orders, 
         (select  count(id) from orders where payment_confirmation = 0 and " . $duration .") as pending_orders,
          (select  count(id) from orders where payment_confirmation = 1 and " . $duration .") as confirmed_orders,
           (select  count(id) from orders where order_state = 2 and " . $duration .") as pending_delivery,
           (select  count(id) from orders where order_state = 3 and " . $duration .") as delivered_orders,
           (select  count(id) from orders where order_state = 4 and " . $duration .") as return_orders
           ");

        return array("orders" => $order_data,
            "products" => $this->get_summary_by_date_range("products"),
            "categories" => $this->get_summary_by_date_range("product_categories"),
            "users" => $this->get_summary_by_date_range("basic_info"),
            "product_viewed" => $this->get_summary_by_date_range("products_viewed"),
            "product_comments" => $this->get_summary_by_date_range("product_views"),
            "feature_products" => $this->get_summary_by_date_range("products_featured"),
            "products_best_deals" => $this->get_summary_by_date_range("products_best_deals"),
            "products_searched" => $this->get_summary_by_date_range("products_searched"));
    }

    function get_summary_by_date_range($table) {
        //$this->db->where($duration);
        return $this->db->getValue($table, "count(id)");
    }
}