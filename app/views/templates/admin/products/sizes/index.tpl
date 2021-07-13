{extends file="admin/index.tpl"}
{block name="body"}
    <h4 class="p-4 text-center">Product sizes</h4>
    <div class="dropdown float-right">
        <button type="button" class="btn btn-dark rounded-0 dropdown-toggle" data-toggle="dropdown">
            Choose action
        </button>
        <div class="dropdown-menu">
            <a class="dropdown-item active" href="javascript:activateFunction('product_general_sizes', 1)">Activate</a>
            <a class="dropdown-item" href="javascript:activateFunction('product_general_sizes', 2)">De activate</a>
        </div>
    </div>
    <button class="btn btn-info rounded-0 float-right mb-2" onclick="newProductSizes()">Add new product size</button>
    <table class="table">
        <thead>
        <tr>
            <th></th>
            <th></th>
            <th>Size</th>
            <th>Date created</th>
            <th>Status</th>
            <th>Owner</th>
        </tr>
        </thead>
        <tbody>
        {$i = 1}
        {foreach $sizes item=list}
            <tr class="{if $list.status == 0}  alert alert-danger{/if}">
                <td>{$i++}</td>
                <td><input type="checkbox" class="checkbox" value="{$list.id}"/></td>
                <td>{$list.size}</td>
                <td>{$list.date_created}</td>
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
            <a class="dropdown-item active" href="javascript:activateFunction('product_general_sizes', 1)">Activate</a>
            <a class="dropdown-item" href="javascript:activateFunction('product_general_sizes', 2)">De activate</a>
        </div>
    </div>
{/block}