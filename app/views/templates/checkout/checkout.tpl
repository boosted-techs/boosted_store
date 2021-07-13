{extends file ="index.tpl"}
{block name="meta"}
    <title>Checkout - Boo store</title>
{/block}
{block name="body"}
    <div class="container">
        <div class="col-md-12 mt-3 mb-3">
            <div class="list-group list-group-horizontal">
                <div class="list-group-item border-0 bg-transparent">Home <i class="fa fa-angle-right"></i></div>
                <div class="list-group-item border-0 bg-transparent">Checkout</div>
            </div>
        </div>
        <div class="col-md-12 mt-4 mb-4">
            <h3 class="p-5 text-center">Checkout</h3>
            <div class="row mt-5 mb-5">
                <div class="col-md-6">
                    <h5 class="font-weight-bolder" id="billing-address">Your billing and Delivery address</h5>
                    <form action="//{$smarty.server.SERVER_NAME}/profile/update" method="post">
                        <div class="mt-4 mb-4">
                            <label>Your name / Company</label>
                            <input type="text" required class="form-control" value="{$addresses.company}" name="company" placeholder="Company name (Optional)" />
                        </div>
                        <div class="mt-4 mb-4">
                            <label>Country</label>
                            <select class="form-control" name="country">
                                {foreach $country_list item=list}
                                    <option {if $list.status == 0}disabled{/if} {if $addresses.country == $list.id} selected {/if} value="{$list.id}">{$list.country}</option>
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
                </div>
                <div class="col-md-6">
                    <div class="card border-0 bg-light">
                        <div class="card-header bg-transparent">
                            <h4>Your order</h4>
                        </div>
                        {if isset($smarty.session.final_cart)}
                            <div class="card-body">
                                <table class="table">
                                    <tr><th>Product</th><th class="text-right">Subtotal</th></tr>
                                    <tr>
                                        <Td class="border-0">Subtotal</Td><td class="border-0 text-right">UGX {$final_cart.sub_total|number_format:2}</td>
                                    </tr>
                                    <tr>
                                        <Td>Delivery costs</Td><td class="text-right">UGX {$final_cart.delivery_cost|number_format:2}</td>
                                    </tr>
                                    <tr>
                                        <Td>Coupon costs</Td><td class="text-right">UGX {$final_cart.coupon_cost|number_format:2}</td>
                                    </tr>
                                    <tr>
                                        <Th>Total</Th><td class="text-right font-weight-bold">UGX {$final_cart.grand_totals|number_format:2}</td>
                                    </tr>
                                </table>
                            </div>
                            <div class="card-footer bg-transparent">
                                <p>
                                    <input type="radio" disabled> Cash balance on delivery
                                </p>
                                <div class="p-2 bg-secondary text-white ">
                                    <p>Pay your cash with cash on delivery</p>
                                    <p class="alert alert-danger rounded-0">Cash on delivery is currently off.</p>
                                </div>
                                <p class="mt-2">
                                    <input type="radio" checked> Checkout with Mobile money or Debit/Credit card
                                </p>
                                <div class="p-2 bg-secondary text-white ">
                                    <p>With use of your Mobile money number, or debit / credit card, complete your order</p>
                                </div>
                                <div class="card mt-2 mb-2 border-0 shadow">
                                    <div class="card-header bg-danger text-white">
                                        Additional order information
                                    </div>
                                    <div class="card-body">
                                        <p>Any thing you would wish to share with us on this order, fill it in below.</p>
                                        <textarea class="form-control" placeholder="You can let us know more about what exactly you expect with your order" id="order-description"></textarea>
                                    </div>

                                </div>
                                <p class="mt-3 mb-3">By <b>Placing your order</b> You agree with <a href="//{$smarty.server.SERVER_NAME}/terms">Terms and conditions <sup>*</sup></a></p>
                                    {if empty($addresses.phone_no) or empty($addresses.email) or empty($addresses.village)}
                                        <div class="alert alert-danger p-3 text-center">Phone number, email address and your district and village are required before you can place your order. <br/><b>Update your Billing address to continue.</b>
                                        <br/>
                                            <a href="#billing-address">
                                                <button class="btn btn-danger">Update</button>
                                            </a>
                                        </div>
                                    {else}
                                        user
                                {/if}
                            </div>
                        {else}
                            <div class="alert alert-danger">Nothing to checkout. <a href="//{$smarty.server.SERVER_NAME}/cart">Go to cart</a></div>
                        {/if}
                    </div>

                </div>
            </div>
        </div>
    </div>
{/block}
{block name="scripts"}


{/block}