{extends file="admin/index.tpl"}
{block name="body"}
    <div class="col-md-12 mt-4">
        <div class="card">
        </div>
            {foreach $users item=list name=user}
                <div class="card-header bg-dark text-white">
                    <img src="{$list.image}" class="float-right" style="width:100px;" alt="{$list.names}" />
                    <h5><b>{$list.names}</b> ({$list.age})</h5>
                </div>
                <div class="card-body">
                    <h5 class="p-4 text-center font-weight-bolder">Basic info</h5>
                    <table class="table shadow">
                        <tr>
                            <td>Orders</td><td><a href="//{$smarty.server.SERVER_NAME}/dashboard/orders?user={$list.user}">
                                    <b>All orders</b>: {$list.orders}
                                </a>
                                <br/><b>Successful : {$list.placed_orders}</b></td>
                        </tr>
                        <tr>
                            <td>Email</td><td>{$list.email}</td>
                        </tr>
                        <tr>
                            <td>Supplier</td>
                            <td>
                                <span class="font-weight-bolder">{if $list.supplier == 1}<a href="//{$smarty.server.SERVER_NAME}/dashboard/application/{$list.supplier_application}">Enrolled</a>{else}NO{/if}</span>
                            </td>
                        </tr>
                        <tr {if $list.boo_cash == 1}class="alert alert-info"{/if}>
                            <td>Affiliate</td>
                            <td>{if $list.boo_cash == 1}Enrolled{else}<i class="fa fa-times-circle"></i>{/if}</td>
                        </tr>
                        <tr>
                            <td>Role</td><td>{if $list.role == 1}Admin{else}User{/if}</td>
                        </tr>
                        <tr>
                            <td>Gender</td><td>
                                {if $list.gender == 1}
                                    <i class="fa fa-male"></i>
                                {elseif $list.gender == 2}
                                    <i class="fa fa-female"></i>
                                {else}
                                    Not specified
                                {/if}
                            </td>
                        </tr>
                        <tr>
                            <td>Country</td>
                            <td>
                                {$list.country}
                            </td>
                        </tr>
                        <tr>
                            <td>Continent</td>
                            <td>
                                {$list.continent}
                            </td>
                        </tr>
                    </table>
                    {if $list.boo_cash == 1}
                        <div class="card border-top shadow">
                            <div class="card-header bg-transparent text-center">
                                <h3>Boo Cash</h3>
                                <p>View your Boo cash transactions from here.</p>
                            </div>
                            <div class="card-body">
                                <div class="p-4 shadow">
                                    User enrolled for Boo cash
                                    <div class="input-group">
                                        <input type="text"  class="form-control" id="boo-link" value="http://{$smarty.server.SERVER_NAME}/boo-cash/{$user_info[0].username}"/>
                                        <button class="input-group-append btn btn-danger" onclick="copyToClipBoard()">Copy link <i class="fa fa-copy"></i></button>
                                    </div>
                                </div>
                                <div class="col-md-12 mt-4">
                                    <table class="table mt-2 mb-2 shadow">
                                        <thead>
                                        <tr>
                                            <th>Amount collected</th>
                                            <th>Available</th>
                                            <th>Collected</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td class="bg-dark text-white font-weight-bolder">{$boo_snippet['successful_orders']|number_format}</td>
                                            <td class="bg-info font-weight-bolder">{$amount = $boo_snippet['successful_orders'] - $boo_snippet['all_withdraws']} {$amount|number_format} <br/><button class="btn btn-info disabled rounded-0">Withdraw</button></td>
                                            <td class="bg-success text-white font-weight-bolder">{$boo_snippet['all_withdraws']|number_format}</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    <table class="table table-striped mt-2 mb-2 shadow">
                                        <thead>
                                        <tr>
                                            <th></th>
                                            <th>User</th>
                                            <th>%</th>
                                            <th>Amount</th>
                                            <th>Status</th>
                                            <th>Date</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        {foreach $affiliate_summary item=list name=aff_index}
                                            <tr {if $list.order_state == 0} class="bg-warning"{/if}>
                                                <td>{$smarty.foreach.aff_index.index + 1}</td>
                                                <td>{$list.names}</td>
                                                <td>{$list.discount}%</td>
                                                <td>{$amount = (($list.discount / 100) * $list.amount)}{$amount|number_format:0}</td>
                                                <td>{if $list.order_state == 1}Successful{else}Failed{/if}</td>
                                                <td>{$list.date_created}</td>
                                            </tr>
                                        {/foreach}
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    {/if}
                    <h5 class="p-4 text-center font-weight-bolder">Addresses</h5>
                    <div class="mt-4 mb-4">
                        <label>Company name</label>
                        <input type="text" class="form-control" disabled value="{$addresses.company}" name="company" placeholder="Company name (Optional)" />
                    </div>
                    <div class="mt-4 mb-4">
                        <label>Country</label>
                        {$addresses.country}
                    </div>
                    <div class="mt-4 mb-4">
                        <label>Street Address *</label>
                        <input type="text" value="{$addresses.street}" required disabled class="form-control" name="street" placeholder="Street address" />
                    </div>
                    <div class="mt-4 mb-4">
                        <label>Town / Village *</label>
                        <input type="text" value="{$addresses.village}" required class="form-control" name="town" placeholder="Town or village name" />
                    </div>
                    <div class="mt-4 mb-4">
                        <label>District</label>
                        {$addresses.district}
                    </div>
                    <div class="mt-4 mb-4">
                        <label>Phone *</label>
                        <input type="text" value="{$addresses.phone_no}" disabled required class="form-control" name="phone" placeholder="Phone number" />
                    </div>
                    <div class="mt-4 mb-4">
                        <label>Postal address</label>
                        <input type="text" value="{$addresses.box_no}" disabled class="form-control" name="box" placeholder="Postal Address" />
                    </div>
                    <div class="mt-4 mb-4">
                        <label>Email *</label>
                        <input type="email" value="{$addresses.email}" disabled required class="form-control" name="email" placeholder="Email address" />
                    </div>
                </div>
            {/foreach}
    </div>
{/block}