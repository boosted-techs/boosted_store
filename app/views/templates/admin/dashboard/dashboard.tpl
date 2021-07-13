{extends file="admin/index.tpl"}
{block name="body"}
    <h4 class="p-4 text-center">Admin Dashboard</h4>
    <div class="row">
        <div class="col-md-4 p-5 text-center bg-light">
            <h2 class="font-weight-bolder">{$summary.users}</h2>
            All users
        </div>
        <div class="col-md-4 p-5 text-center  bg-warning">
            <h2 class="font-weight-bolder">{$summary.product_viewed}</h2>
            Product views
        </div>
        <div class="col-md-4 p-5 text-center  bg-primary text-white">
            <h2 class="font-weight-bolder">{$summary.product_comments}</h2>
            Total Comments
        </div>
        <div class="col-md-4 p-5 text-center bg-dark text-white">
            <h2 class="font-weight-bolder">{$summary.products}</h2>
            All products
        </div>
        <div class="col-md-4 p-5 text-center bg-warning text-dark">
            <h2 class="font-weight-bolder">{$summary.orders.all_orders}</h2>
            <a href="//{$smarty.server.SERVER_NAME}/dashboard/orders" class="text-dark">Recent orders</a>
        </div>
        <div class="col-md-4 p-5 text-center bg-danger text-white">
            <h2 class="font-weight-bolder">{$summary.orders.pending_orders}</h2>
            Pending orders
        </div>
        <div class="col-md-4 p-5 text-center bg-success text-white">
            <h2 class="font-weight-bolder">{$summary.orders.confirmed_orders}</h2>
            Confirmed Orders
        </div>
        <div class="col-md-4 p-5 text-center bg-white text-dark">
            <h2 class="font-weight-bolder">{$summary.orders.pending_delivery}</h2>
            Pending delivery Orders
        </div>
        <div class="col-md-4 p-5 text-center bg-secondary text-white">
            <h2 class="font-weight-bolder">{$summary.orders.delivered_orders}</h2>
            Delivered Orders
        </div>
        <div class="col-md-4 p-5 text-center bg-info text-white">
            <h2 class="font-weight-bolder">{$summary.orders.return_orders}</h2>
            Returned orders
        </div>
        <div class="col-md-4 p-5 text-center bg-dark text-white">
            <h2 class="font-weight-bolder">{$summary.categories}</h2>
            All categories / departments
        </div>
    </div>
{/block}