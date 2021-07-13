{extends file="admin/index.tpl"}
{block name="body"}
    <h4 class="p-4 text-center">Categories</h4>
    <div class="dropdown float-right">
        <button type="button" class="btn btn-dark rounded-0 dropdown-toggle" data-toggle="dropdown">
            Choose action
        </button>
        <div class="dropdown-menu">
            <a class="dropdown-item active" href="javascript:activateFunction('product_categories', 1)">Activate</a>
            <a class="dropdown-item" href="javascript:activateFunction('product_categories', 2)">De activate</a>
        </div>
    </div>
    <button class="btn btn-info rounded-0 float-right mb-2" onclick="addCategory()">Add category</button>
    <table class="table table-responsive">
        <thead>
        <tr>
            <th></th>
            <th></th>
            <th>Category name</th>
            <th>Date created</th>
            <th>Date Updated</th>
            <th>Status</th>
            <th>Owner</th>
        </tr>
        </thead>
        <tbody>
        {$i = 1}
        {foreach $categories item=list}
            <tr class="{if $list.status == 0}  alert alert-danger{/if}">
                <td>{$i++}</td>
                <td><input type="checkbox" class="checkbox" value="{$list.id}"/></td>
                <td>{$list.category}</td>
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
            <a class="dropdown-item active" href="javascript:activateFunction('product_categories', 1)">Activate</a>
            <a class="dropdown-item" href="javascript:activateFunction('product_categories', 2)">De activate</a>
        </div>
    </div>
{/block}