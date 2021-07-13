{extends file="index.tpl"}
{block name="meta"}
    <title>Boo store - Dashboard</title>
    <meta name="keywords" content="Sell with Boo store, How to sell online, sell online, online store, Uganda online store, Boo, Boo store, Boosted Store, Boosted Technologies, DevMate, Tumusiime, Rickie Ashan Tumusiime, boo.store, booo.store, Boosted Technologies Uganda, Ugandan online store, Online boo, Booo store, Betty Happy"/>
    <meta name="description" content="Manage your orders, addresses, Boo Cash from Boo simplified dashboard. Boo store for a convinient and reliable shopping">
    <meta name="contact" content="office[at]boostedtechs[dot]com" />
    <meta name="author" content="DevMate <https://devmate.boostedtechs.com>" />
    <meta name="copyright" content="Boosted Technologies" />
    <meta Name="rating" content="General"/>
    <meta property="og:site_name" content="Sell online with Boo store">
    <meta property="og:description" content="Are you an a manufacturer, wholesaler or retailer, our growing audience is ready to buy your products at your price. Sell now">
    <meta property="og:image" content="//{$smarty.server.SERVER_NAME}/media/boosted-thumbnail.jpg">
    <PageMap>
        <DataObject type="thumbnail">
            <Attribute name="src" value="//{$smarty.server.SERVER_NAME}/media/boosted-thumbnail.jpg"/>
            <Attribute name="width" value="100"/>
        </DataObject>
        <DataObject type="action">
            <Attribute name="label" value="Shop now"/>
            <Attribute name="url" value="https://booo.store"/>
            <Attribute name="class" value="download"/>
        </DataObject>
        <DataObject type="publication">
            <Attribute name="author" value="Boosted Technologies"/>
            <Attribute name="date" value="1ST NOV 2020"/>
            <Attribute name="category" value="E-commerce"/>
        </DataObject>
    </PageMap>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/jszip-2.5.0/dt-1.10.20/b-1.6.1/b-html5-1.6.1/b-print-1.6.1/fh-3.1.6/kt-2.5.1/r-2.2.3/sc-2.0.1/sp-1.0.1/datatables.min.css"/>
{/block}
{block name="body"}
    {include file="small-bar.tpl"}
    <div class="container">
        <div class="col-md-12">
            {if ! ($user_info)}
                <h6 class="p-2 text-center">You are not logged in.</h6>
                {if isset($smarty.cookies.temporary_id)}
                    {if isset($orders_temp_id)}
                        {if ! empty($orders_temp_id)}
                            <div class="col-md-8 mx-auto">
                                <div class="alert alert-warning text-center">
                                    You have orders pending. Please, sign up to complete them.
                                    <Br/>
                                    <br/>
                                    <a href="{$domain.auth}/app/{$key}?i=4&redirect={$domain.redirect}">
                                        <button class="btn btn-danger">Click here to sign up</button>
                                    </a>
                                </div>
                                <table class="table table-responsive">
                                    <thead>
                                    <tr>
                                        <td></td>
                                        <td><b>Order</b></td>
                                        <td><b>Payment</b></td>
                                        <td><b>Status</b></td>
                                        <td><b>Amount</b></td>
                                        <td><b>Date</b></td>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    {foreach $orders_temp_id item=list name=order}
                                        <tr>
                                            <td>{$smarty.foreach.order.index + 1}</td>
                                            <td>#ORDER{$list.id}</td>
                                            <td>{if $list.payment_confirmation == 0}NOT PAID<br/><a href="{$domain.auth}/app/{$key}?i=4&redirect={$domain.redirect}">Sign up to complete your order</a>{elseif $list.payment_confirmation == 1}<b>PAID</b> <br/><a href="{$domain.auth}/app/{$key}?i=4&redirect={$domain.redirect}">Sign up to view this order</a>{/if}</td>
                                            <td>{if $list.order_state == 0}Pending{elseif $list.order_state == 1}Submitted{elseif $list.order_state == 2}Delivered{elseif $list.order_state == 3}Returned{/if}</td>
                                            <td>{$list.amount|number_format:2}</td>
                                            <td>{$list.date_created}</td>
                                        </tr>
                                    {/foreach}
                                    </tbody>
                                </table>
                            </div>
                        {/if}
                    {/if}
                {/if}
                {if ! $user_info}
                    {if ! isset($website)}
                        <div class="login-overlay">
                            <div class="col-md-5 mx-auto">
                                <div class="card mt-5 border-0">
                                    {*<div class="card-header border-0 bg-danger text-white">*}
                                        {*<h4>Sign Up / LOGIN</h4>*}
                                    {*</div>*}
                                    <div class="card-body">

                                        <div class="text-center border-bottom mb-2 p-3">

                                                <img style="width: 100px;" src="//{$smarty.server.SERVER_NAME}/assets/loading.gif" lsrc="//{$smarty.server.SERVER_NAME}/assets/images/logo/logo-red.png" class="rounded-0" alt="Logo"/>
                                                <img style="width: 100%;" src="//{$smarty.server.SERVER_NAME}/assets/loading.gif" lsrc="//{$smarty.server.SERVER_NAME}/assets/login/login.png" class="rounded-0" alt="Logo"/>

                                        </div>
                                        <a class="text-dark" href="{$domain.auth}/app/{$key}?i=4&redirect={$domain.redirect}">
                                            <button class="btn btn-danger rounded-0 mt-3 mb-3 form-control font-weight-bolder">REGISTER</button>
                                        </a>
                                        <p class="text-center">
                                            - OR -
                                        </p>
                                        <a class="text-dark" href="{$domain.auth}/app/{$key}?i=4&redirect={$domain.redirect}">
                                            <button class="btn btn-dark rounded-0 mb-3 form-control font-weight-bolder">LOGIN</button>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    {/if}
                {else}
                {/if}
                <a class="text-dark" href="{$domain.auth}/app/{$key}?i=4&redirect={$domain.redirect}">
                    <h4 class="mt-1 text-center"><button class="btn btn-danger">Sign up</button></h4>
                </a>
            {else}
                <div class="row">
                    {include "profile/profile_menu.tpl"}
                    <div class="col-md-8">
                        <h4 class="mt-2 mb-2 text-center p-4">
                            {if ! isset($profile_page)}
                                My account
                            {else}
                                {$profile_page}
                            {/if}
                        </h4>
                        {if $user_info[0].role == 1}
                            <div class="text-center">
                                <a href="//{$smarty.server.SERVER_NAME}/dashboard"><button class="btn btn-danger rounded-0">Admin Dashboard</button></a>
                            </div>
                        {/if}
                        {if $user_info[0].boo_cash == 1}
                            <div class="p-4">
                                You are enrolled for Boo cash
                                <div class="input-group">
                                    <input type="text"  class="form-control" id="boo-link" value="http://{$smarty.server.SERVER_NAME}/boo-cash/{$user_info[0].username}"/>
                                    <button class="input-group-append btn btn-danger" onclick="copyToClipBoard()">Copy link <i class="fa fa-copy"></i></button>
                                </div>
                            </div>
                        {/if}
                        {if $user_info[0].supplier == 0}
                            <div class="shadow mt-2 mb-2">
                                <img src="//{$smarty.server.SERVER_NAME}/assets/loading.gif" lsrc="//{$smarty.server.SERVER_NAME}/assets/images/others/sell-with-boo.png" class="w-100"/>
                                <p class="font-weight-bolder pl-3 pr-3 mt-2">You are just a click away to start selling with Boo Store.</p>
                                <p class="pl-3 pr-3 mt-2">Fill in the supplier's application form and we shall contact you as soon as it is submited</p>
                                <a href="javascript:supplierApplication()" class="pl-3 pr-3">
                                    <button class="btn btn-danger rounded-0" >Apply now</button>
                                </a>
                                <p class="text-muted mt-3 mb-3 p-3 font-weight-bolder">It is free. No hidden costs</p>
                            </div>
                        {/if}
                        {if ! isset($profile_index)}
                            <br/>
                            Hello <b>{$user_info[0].names}</b>
                            <p class="mt-2">From your dashboard, you can view your <a href="//{$smarty.server.SERVER_NAME}/profile/order">orders</a>, your <a href="//{$smarty.server.SERVER_NAME}/profile/details">profile details</a> and  manage your <a href="//{$smarty.server.SERVER_NAME}/profile/address">billing addresses</a></p>
                            <br/>
                        {elseif $profile_index == 1}
                            <div class="text-center p-2">
                                <img src="{$user_info[0].image}" class="img-thumbnail" style="width: 100px;"/>
                            </div>
                            <table class="table shadow">
                                <tr><td>Names</td><Td>{$user_info[0]['names']}</Td></td></tr>
                                <tr><td>Username</td><Td>{$user_info[0]['username']}</Td></td></tr>
                                <tr><td>Email</td><Td>{$user_info[0]['email']}</Td></td></tr>
                                <tr><td>Date of Birth</td><Td>{$user_info[0]['dob']}</Td></td></tr>
                                <tr><td>Gender</td><Td>{$user_info[0]['gender']}</Td></td></tr>
                                <tr><td>City</td><Td>{$user_info[0]['city']}</Td></td></tr>
                                <tr><td>Country</td><Td>{$user_info[0]['country']}</Td></td></tr>
                            </table>
                        {elseif $profile_index == 2}
                            <form action="//{$smarty.server.SERVER_NAME}/profile/update" method="post">
                                <div class="mt-4 mb-4">
                                    <label>Company name</label>
                                    <input type="text" class="form-control" value="{$addresses.company}" name="company" placeholder="Company name (Optional)" />
                                </div>
                                <div class="mt-4 mb-4">
                                    <label>Country</label>
                                    <select class="form-control" name="country">
                                        {foreach $country_list item=list}
                                            <option value="{if $list.status == 0}disabled{/if}" {if $addresses.country == $list.id} selected {/if} value="{$list.id}">{$list.country}</option>
                                        {/foreach}
                                    </select>
                                </div>
                                <div class="mt-4 mb-4">
                                    <label>Street Address *</label>
                                    <input type="text" value="{$addresses.street}" required class="form-control" name="street" placeholder="Street address" />
                                </div>
                                <div class="mt-4 mb-4">
                                    <label>Town / Village *</label>
                                    <input type="text" value="{$addresses.village}" required class="form-control" name="town" placeholder="Town or village name" />
                                </div>
                                <div class="mt-4 mb-4">
                                    <label>District</label>
                                    <select class="form-control" name="district">
                                        {foreach $district_list item=list}
                                            <option {if $addresses.district == $list.id} selected {/if} {if $list.status ==0}disabled{/if} value="{$list.id}">{$list.district}</option>
                                        {/foreach}
                                    </select>
                                </div>
                                <div class="mt-4 mb-4">
                                    <label>Phone *</label>
                                    <input type="text" value="{$addresses.phone_no}" required class="form-control" name="phone" placeholder="Phone number" />
                                </div>
                                <div class="mt-4 mb-4">
                                    <label>Postal address</label>
                                    <input type="text" value="{$addresses.box_no}" class="form-control" name="box" placeholder="Postal Address" />
                                </div>
                                <div class="mt-4 mb-4">
                                    <label>Email *</label>
                                    <input type="email" value="{$addresses.email}" required class="form-control" name="email" placeholder="Email address" />
                                </div>
                                <button class="btn btn-danger mt-4 mb-4 ">Update address</button>
                            </form>
                        {elseif $profile_index == 3}
                        {if empty($orders)}
                            <div class="bg-danger text-white p-4">
                                <h6><span class="fa fa-exclamation-triangle"></span> No orders have been made yet. <a href="//{$smarty.server.SERVER_NAME}/shop"><button class="float-right btn btn-dark">Shop now</button></a></h6>
                            </div>
                        {else}
                            <div class="">
                                <table class="table w-100">
                                    <thead>
                                    <tr>
                                        <td></td>
                                        <td><b>Order</b></td>
                                        <td><b>Payment</b></td>
                                        <td><b>Status</b></td>
                                        <td><b>Amount</b></td>
                                        <td><b>Date</b></td>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    {foreach $orders item=list name=order}
                                        <tr>
                                            <td>{$smarty.foreach.order.index + 1}</td>
                                            <td><a href="//{$smarty.server.SERVER_NAME}/profile/order/{$list.id}">#ORDER{$list.id}</a></td>
                                            <td>{if $list.payment_confirmation == 0}NOT PAID<br/><a href="//{$smarty.server.SERVER_NAME}/profile/order/{$list.id}#paymentButton">Pay for Order</a>{elseif $list.payment_confirmation == 1}<b>PAID</b>{/if}</td>
                                            <td>{if $list.order_state == 0}Pending{elseif $list.order_state == 1}Submitted{elseif $list.order_state == 2}Delivered{elseif $list.order_state == 3}Returned{/if}</td>
                                            <td>{$list.amount|number_format:2}</td>
                                            <td>{$list.date_created}</td>
                                        </tr>
                                    {/foreach}
                                    </tbody>
                                </table>
                            </div>
                        {if isset($ordered_items)}
                        {if $list.payment_confirmation == 0}
                            <div class="text-center p-4">
                                <script src="https://checkout.flutterwave.com/v3.js"></script>
                                <button class="btn btn-danger" id="paymentButton" onclick="makePayment('{$list.ref}')">PAY ORDER NOW</button>
                            </div>
                            <script>
                                function makePayment(ref) {
                                    FlutterwaveCheckout({
                                        public_key: "{$public_key}",
                                        tx_ref: ref,
                                        amount: {$list.amount},
                                        currency: "UGX",
                                        country: "UG",
                                        payment_options: false,
                                        redirect_url: // specified redirect URL
                                            "http://" + window.location.host + "/payment_progress",
                                        meta: {
                                            consumer_id: {$user_info[0]['id']},
                                            consumer_mac: "92a3-912ba-1192a",
                                        },
                                        customer: {
                                            email: "{$addresses.email}",
                                            phone_number: "{$addresses.phone_no}",
                                            name: "{$user_info[0]['names']}",
                                        },
                                        callback: function (data) {
                                            console.log(data);
                                        },
                                        onclose: function() {
                                            // close modal
                                        },
                                        customizations: {
                                            title: "BooStore",
                                            description: "Completing Boo transaction.",
                                            logo: "https://auth.boostedtechs.com/assets/app_icons/logo-red.png",
                                        },
                                    });
                                }
                            </script>
                        {/if}
                            <h4 class="text-center text-danger p-3">Items on order list</h4>
                            <table class="table w-100">
                                <thead>
                                <tr>
                                    <th></th>
                                    <th></th>
                                    <th>Product</th>
                                    <th>Description</th>
                                    <th>Amount</th>
                                    <th>Attributes</th>
                                </tr>
                                </thead>
                                <tbody>
                                {foreach $ordered_items item=list name=ordered_item}
                                    <tr>
                                        <td>{$smarty.foreach.ordered_item.index + 1}</td>
                                        <td>
                                            <a href="//{$smarty.server.SERVER_NAME}/product/{$list.url}">
                                                <img src="//{$smarty.server.SERVER_NAME}/assets/loading.gif" lsrc="//{$smarty.server.SERVER_NAME}/media/products_thumbnails/{$list.feature_photo}" style="width:100px"/>
                                            </a>
                                            <br/>
                                            <div class="text-center">
                                                <small class="badge badge-danger p-2 rounded-circle">{$list.total_rates|number_format:1} / 5</small>
                                            </div>
                                            {for $counter=1 to 5}
                                                <span onclick="rateProduct({$list.id}, {$counter}, '{$list.name}')" class="cursor star_{$list.id}_{$counter} star_{$list.id} {if $counter <= $list.user_rates}text-danger{/if}">
                                                                <i class="fa fa-star"></i>
                                                            </span>
                                            {/for}
                                        </td>
                                        <td><a href="//{$smarty.server.SERVER_NAME}/product/{$list.url}">{$list.name}</a>
                                        </td>
                                        <td>{$list.description|nl2br}</td>
                                        <td>{($list.amount * $list.qty)|number_format}</td>
                                        <td>
                                            {if ! empty($list.color)}<b>Color</b> <br/>{$list.color}{/if}
                                            {if ! empty($list.size)}<br/><b>Size</b> <br/>{$list.size}{/if}
                                        </td>
                                    </tr>
                                {/foreach}
                                </tbody>
                            </table>
                        {/if}
                        {/if}
                        {elseif $profile_index == 4}
                            <div class="">
                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th></th>
                                        <th></th>
                                        <th>Product</th>
                                        <th>Description</th>
                                        <th></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    {foreach $watchlist item=list name=watchlist_1}
                                        <tr>
                                            <td>{$smarty.foreach.watchlist_1.index + 1}</td>
                                            <td>
                                                <a href="//{$smarty.server.SERVER_NAME}/product/{$list.url}">
                                                    <img src="//{$smarty.server.SERVER_NAME}/assets/loading.gif" lsrc="//{$smarty.server.SERVER_NAME}/media/products_thumbnails/{$list.feature_photo}"  style="width:100px"/>
                                                </a>
                                            </td>
                                            <td>
                                                <a href="//{$smarty.server.SERVER_NAME}/product/{$list.url}">
                                                    {$list.name}
                                                </a>
                                            </td>
                                            <td>{$list.description}</td>
                                            <td>
                                                <div class="col-6 col-md-6 text-center bg-transparent border-0 cursor" onclick="addToCart({$list.id})" title="Add to cart">
                                                    <span class="fa fa-shopping-cart badge-danger p-1 rounded-circle cart-item-{$list.id}" title="add to cart"></span>
                                                </div>
                                                <div class="col-6 col-md-6 text-center bg-transparent border-0 cursor">
                                                    <br/>
                                                    <a href="//{$smarty.server.SERVER_NAME}/watchlist/delete/{$list.id}">
                                                        <span class="fa fa-times badge-dark p-1 rounded-circle" title="add to cart"></span>
                                                    </a>
                                                </div>
                                            </td>
                                        </tr>
                                    {/foreach}
                                    </tbody>
                                </table>
                            </div>
                        {/if}
                    </div>
                </div>
            {/if}
        </div>
    </div>
{/block}
{block name="scripts"}
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/v/bs4/jszip-2.5.0/dt-1.10.20/b-1.6.1/b-html5-1.6.1/b-print-1.6.1/fh-3.1.6/kt-2.5.1/r-2.2.3/sc-2.0.1/sp-1.0.1/datatables.min.js"></script>
    <script>
        $(document).ready(function() {
            let currentPage = {if isset($current_page)}{$current_page|json_encode}{else}'xx'{/if};
            $("."+currentPage).addClass("active");
            $('.table').DataTable({
                dom: 'Bfrtip',
                responsive: true,
                fixedHeader: false,
                buttons: [
                    'copyHtml5',
                    'excelHtml5',
                    'csvHtml5',
                    'pdfHtml5'
                ]
            } );
            $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
                $($.fn.dataTable.tables(true)).DataTable()
                    .columns.adjust()
                    .responsive.recalc();
            });
        } );
    </script>
{/block}