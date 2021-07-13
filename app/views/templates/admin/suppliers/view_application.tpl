{extends file="admin/index.tpl"}
{block name="body"}
    <div class="col-md-12 mt-4">
        <h5 class="alert alert-secondary rounded-0 border-0 text-center font-weight-bolder">Supplier Application</h5>
        <a href="//{$smarty.server.SERVER_NAME}/dashboard/suppliers">
            <button class="btn btn-warning rounded-0 mb-2 ">View suppliers</button>
        </a>
        {$application_data = $supplier_applications[0]}
        <div class="card border-0 shadow">
            <div class="card-header">
                <a data-toggle="collapse" href="#suppliers" class="text-danger font-weight-bolder">
                    Business information
                    <span class="float-right"><i class="fa fa-angle-down"></i></span>
                </a>
            </div>
            <div class="card-body collapse" id="suppliers">
                <div class="alert alert-warning rounded-0">
                    {if $application_data.status == 0}
                        <span>Create account from application data</span>
                        <br/>
                        <button class="btn btn-danger border-0 rounded-0" onclick="convertApplicationToSupplier()">Create account</button>
                    {else}
                        <span>A supplier's page associated to this application is created</span><br/>
                        <a href="//{$smarty.server.SERVER_NAME}/dashboard/supplier/{$application_data.supplier_url}">
                            <button class="btn btn-danger rounded-0 mt-4">Go to Business page</button>
                        </a>
                    {/if}
                </div>
                <table class="table table-responsive">
                    <tr">
                        <td class="font-weight-bolder border-0">Business name</td>
                    <td class="border-0">{$application_data.business_name}<b>#{$application_data.user}</b></td>
                    </tr>
                    <tr>
                        <td class="font-weight-bolder">Type of business</td>
                        <td>{$application_data.business_type}</td>
                    </tr>
                    <tr>
                        <td class="font-weight-bolder">About business</td>
                        <td>{$application_data.description}</td>
                    </tr>
                    <tr>
                        <td class="font-weight-bolder">Business location</td>
                        <td>{$application_data.address}</td>
                    </tr>
                    <tr>
                        <td class="font-weight-bolder">Contacts</td>
                        <td>{$application_data.phone_number}</td>
                    </tr>
                    <tr>
                        <td class="font-weight-bolder">Email</td>
                        <td>{$application_data.email}</td>
                    </tr>
                    <tr>
                        <td class="font-weight-bolder">Website</td>
                        <td>{$application_data.website}</td>
                    </tr>
                    <tr>
                        <td class="font-weight-bolder">Products</td>
                        <td>{$application_data.items_sold}</td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="card border-0 shadow mt-4">
            {$list = $applicant_profile[0]}
            <div class="card-header">
                <a data-toggle="collapse" href="#personal_info" class="text-danger font-weight-bolder">
                    <img src="{$list.image}" class="float-right" style="width:100px;" alt="{$list.names}" />
                    <h5><b>{$list.names}</b> ({$list.age})</h5>
                    {if $list.boo_cash == 1}
                        //{$smarty.server.SERVER_NAME}/boo-cash/{$list.username}
                    {/if}
                </a>
            </div>
            <div class="card-body collapse" id="personal_info">
                <h5 class="p-4 text-center font-weight-bolder">Basic info</h5>
                <table class="table table-responsive">
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
            </div>
        </div>
    </div>
    <script>
        let applicantData = {$application_data|json_encode};
    </script>
{/block}