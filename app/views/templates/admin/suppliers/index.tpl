{extends file="admin/index.tpl"}
{block name="body"}
    <h4 class="p-4 text-center">Supplier</h4>
    <div class="dropdown float-right">
        <button type="button" class="btn btn-dark rounded-0 dropdown-toggle" data-toggle="dropdown">
            Choose action
        </button>
        <div class="dropdown-menu">
            <a class="dropdown-item active" href="javascript:activateFunction('product_suppliers', 1)">Activate</a>
            <a class="dropdown-item" href="javascript:activateFunction('product_suppliers', 2)">De activate</a>
        </div>
    </div>
    <button class="btn btn-info rounded-0 float-right mb-2" onclick="addSupplier()">Add new supplier</button>
    <table class="table table-responsive">
        <thead>
        <tr>
            <th></th>
            <th></th>
            <th>Supplier</th>
            <th>Email</th>
            <th>Contacts</th>
            <th>Description</th>
            <th>Date created</th>
            <th>Date Updated</th>
            <th>Status</th>
            <th>Owner</th>
        </tr>
        </thead>
        <tbody>
            {$i = 1}
            {foreach $suppliers item=list}
                <tr class="{if $list.status == 0}  alert alert-danger{/if}">
                    <td>{$i++}</td>
                    <td><input type="checkbox" class="checkbox" value="{$list.id}"/></td>
                    <td>
                        <a href="//{$smarty.server.SERVER_NAME}/dashboard/supplier/{$list.url}">
                            {$list.supplier}
                        </a>
                        <br/>
                        <a href="//{$smarty.server.SERVER_NAME}/supplier/{$list.url}">
                            <button class="btn btn-primary">View on store</button>
                        </a>
                    </td>
                    <td>{$list.email}</td>
                    <td>{$list.contacts}</td>
                    <td>{$list.description}</td>
                    <td>{$list.date_created}</td>
                    <td>{$list.date_updated}</td>
                    <td>{if $list.status == 0} Inactive {else}Active{/if}</td>
                    <td>{$list.names}</td>
                </tr>
            {/foreach}
        </tbody>
    </table>
    <div class="dropdown float-right">
        <button type="button" class="btn btn-dark rounded-0 dropdown-toggle" data-toggle="dropdown">
            Choose action
        </button>
        <div class="dropdown-menu">
            <a class="dropdown-item active" href="javascript:activateFunction('product_suppliers', 1)">Activate</a>
            <a class="dropdown-item" href="javascript:activateFunction('product_suppliers', 2)">De activate</a>
        </div>
    </div>
{/block}