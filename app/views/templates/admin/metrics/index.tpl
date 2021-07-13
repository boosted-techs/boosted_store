{extends file="admin/index.tpl"}
{block name="body"}
    <h4 class="p-4 text-center">Metrics</h4>
    <div class="dropdown float-right">
        <button type="button" class="btn btn-dark rounded-0 dropdown-toggle" data-toggle="dropdown">
            Choose action
        </button>
        <div class="dropdown-menu">
            <a class="dropdown-item active" href="javascript:activateFunction('product_metrics', 1)">Activate</a>
            <a class="dropdown-item" href="javascript:activateFunction('product_metrics', 2)">De activate</a>
        </div>
    </div>
    <button class="btn btn-info rounded-0 float-right mb-2" onclick="addMetric()">Add new metric</button>
    <table class="table">
        <thead>
        <tr>
            <th></th>
            <th></th>
            <th>Metric</th>
            <th>Date created</th>
            <th>Date Updated</th>
            <th>Status</th>
            <th>Owner</th>
        </tr>
        </thead>
        <tbody>
        {$i = 1}
        {foreach $metrics item=list}
            <tr class="{if $list.status == 0}  alert alert-danger{/if}">
                <td>{$i++}</td>
                <td><input type="checkbox" class="checkbox" value="{$list.id}"/></td>
                <td>{$list.metric}</td>
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
            <a class="dropdown-item active" href="javascript:activateFunction('product_metrics', 1)">Activate</a>
            <a class="dropdown-item" href="javascript:activateFunction('product_metrics', 2)">De activate</a>
        </div>
    </div>
{/block}