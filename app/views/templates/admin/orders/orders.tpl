{extends file="admin/index.tpl"}
{block name="body"}
    <div class="col-md-12">
        {if empty($orders)}
            <div class="bg-danger text-white p-4">
                <h6><span class="fa fa-exclamation-triangle"></span> No orders have been made yet.</h6>
            </div>
        {else}
            <div class="">
                <table class="table  shadow table-responsive">
                    <thead>
                    <tr>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th><b>Order</b></th>
                        <th><b>Payment</b></th>
                        <th><b>Status</b></th>
                        <th><b>Amount</b></th>
                        <th><b>District</b></th>
                        <th><b>Date</b></th>
                    </tr>
                    </thead>
                    <tbody>
                    {foreach $orders item=list name=order}
                        <tr class="{if $list.payment_confirmation == 0} bg-warning{/if}">
                            <td>{$smarty.foreach.order.index + 1}</td>
                            <th><a href="//{$smarty.server.SERVER_NAME}/dashboard/users/{$list.user}"><img src="{$list.image}" style="width:50px;" alt="{$list.names}" /></th>
                            <th><a href="//{$smarty.server.SERVER_NAME}/dashboard/users/{$list.user}">{$list.names}</a></th>
                            <td><a class="{if $list.payment_confirmation == 0} text-white {/if}" href="//{$smarty.server.SERVER_NAME}/dashboard/order/{$list.id}">#ORDER{$list.id}</a></td>
                            <td>{if $list.payment_confirmation == 0}NOT PAID{elseif $list.payment_confirmation == 1}<b>PAID</b>{/if}</td>
                            <td>{if $list.order_state == 0}Pending{elseif $list.order_state == 1}Submitted{elseif $list.order_state == 2}Delivered{elseif $list.order_state == 3}Returned{/if}</td>
                            <td>{$list.amount|number_format:2}</td>
                            <td>{$list.district}</td>
                            <td>{$list.date_created}</td>
                        </tr>
                    {/foreach}
                    </tbody>
                </table>
            </div>
        {if isset($ordered_items)}
            <div class="alert alert-warning mt-4 rounded-0">
                <h6 class="font-weight-bolder">Order message</h6>
                {$list.description}
            </div>
            <h4 class="text-center text-danger p-3">Items on order list</h4>
            <table class="table table-responsive">
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
                                <img src="//{$smarty.server.SERVER_NAME}/media/products_thumbnails/{$list.feature_photo}" style="width:100px"/>
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
                            <br/>
                            <small>Supplied by <a href="//{$smarty.server.SERVER_NAME}/dashboard/supplier/{$list.supplier_url}">{$list.supplier}</a></small>
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
    </div>
{/block}