<?php
/**
 * Created by PhpStorm.
 * User: welcome
 * Date: 2020-11-28
 * Time: 20:53
 */

class Payments_model extends Model
{
    function __construct()
    {
        parent::__construct();
        $this->model("Products_model");
    }

    function create_invoice($user, $district, $description) {
        $temporary_id = $this->cookie->read("temporary_id");
        if (empty($temporary_id) )
            if (! $user or empty($district))
                return false;

        if (! empty($this->session->data("final_cart"))) {
            if (! empty($this->session->data("final_cart"))) {
                $final_cart = $this->session->data("final_cart");
                $cart_data = [];
                /*
                 * Let us get the cart content stored from add cart functionality
                 * The index of the session array is the exact key for the product
                 */
                foreach ($final_cart as $item => $list)
                    $cart_data[] = $item;

                /*
                 * Get information from the cart with that from products table
                 */
                $final_cart_products = $this->model->Products_model->get_cart_items($cart_data);
                $total_cost = 0;
                $this->db->where("id", $district);
                $delivery_cost = $this->db->getValue("districts", "delivery_amount");
                $coupon_cost = 0;

                foreach ($final_cart_products as $item)
                    $total_cost = $total_cost + $final_cart[$item['id']]['qty'] * $item['price_1'];

                $invoice_amount = ($total_cost + $delivery_cost) - $coupon_cost;

                if ($invoice_amount < 1000)
                    return false;
                $order = $this->db->insert("orders",
                    array("user" => $user,
                        "amount" => $invoice_amount,
                        "delivery_district" => $district,
                        "description" => $description,
                        "temporary_id" => $temporary_id,
                        "date_created" => date("Y-m-d H:i:s"))
                );

                if (! empty($this->cookie->cookie->affiliate)) {
                    $this->db->where("status", 1);
                    $commission = $this->db->getOne("affiliate_commissions", "commission")['commission'] ?? 0;
                    $affiliate = str_split($this->cookie->cookie->affiliate, 32)[1];
                    $this->db->insert("affiliate_transactions",
                        array("user" => $user,
                            "temporary_id" => $temporary_id,
                            "affiliate" => $affiliate,
                            "discount" => $commission,
                            "date_added" => date("Y-m-d"),
                            "order" => $order));
                }
                $cart_to_display = [];
                foreach ($final_cart_products as $item) {
                    //                    $item['order_qty'] = $final_cart[$item['id']]['qty'];
                    $size = $color = null;
                    if (isset($final_cart[$item['id']]['size']))
                        $size = $final_cart[$item['id']]['size'];

                    if (isset($final_cart[$item['id']]['color']))
                        $color = $final_cart[$item['id']]['color'];

                    $cart_to_display[] = array("product" => $item['id'],
                        "order" => $order,
                        "amount" => $item['price_1'],
                        "qty" => $final_cart[$item['id']]['qty'],
                        "color" => $color,
                        "size" => $size);
                }
                $this->db->insertMulti("ordered_items", $cart_to_display);

                $hash = hash("md5", time()) . "_ref_" . $order . "_" . $user ."_". $temporary_id;

                $this->db->insert("order_keys", array("order" => $order,
                    "order_ref" => $hash,
                    "user" => $user,
                    "temporary_id" => $temporary_id,
                    "date_created" => date("Y-m-d h:i:s")));
                return $hash;
            }

        }else
            return false;
    }

    function confirm_payment($response_json, $response_ref, $response_status, $response_amount, $response_currency) {
        $this->db->where("order_ref", $response_ref);
       $data = $this->db->getOne("order_keys", null, "id, order, order_ref, user, temporary_id");
       if (empty($data))
           return false;

       /*
        * Lets validate the sent data with the database data
        */
       $payment_status = 0;
       if (strcmp($response_ref, $data['order_ref']) == 0
           and
                strcmp($response_status, "success") == 0
                    and
                        strcmp($response_currency, "UGX") == 0)
           /*
            * If our validation is right, then lets update the order and the user has successfully completed the payment prococess
            */
           $payment_status = 1;

       /*
        * Lets update the key table
        */
        $this->db->where("order_ref", $response_ref);
        $this->db->update("order_keys", array("response_data" => $response_json));

        /*
         * Lets update the orders table
         */
        $this->db->where("id", $data['order']);
        $this->db->update("orders", array("payment_confirmation" => $payment_status, "order_state" => 1));
    }

    function get_payment_keys() {
        $data = $this->db->getOne("payment_keys", "production, testing, secret_key, testing_key, encryption");
        return array("production_public_key" => $data['production'],
            "test_public_key" => $data['testing'],
            "production_secret_key" => $data['secret_key'],
            "test_secret_key" => $data['testing_key'],
            "encryption" => $data['encryption']);
    }
}