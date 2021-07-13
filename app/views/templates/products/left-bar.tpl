<div class="col-md-4 mb-3">
    <div class="menu-list sm-hide">
        <div class="list-group shadow">
            <div class="list-group-item bg-danger text-white">{if isset($supplier)}{$supplier.0.supplier} @{$supplier.0.url}{else}{$page}{/if}</div>
            {if isset($supplier_page)}
            {else}
                {foreach $sub_categories item=list}
                    <div class="list-group-item border-0"><a class="text-danger" href="//{$smarty.server.SERVER_NAME}/sub-category/{$list.url}"><span class="fa fa-angle-right float-right"></span> {$list.category}</a></div>
                {/foreach}
            {/if}
            <div class="list-group-item text-danger border-0 font-weight-bolder">Categories</div>
            {foreach $categories item=list}
                <div class="list-group-item border-0"><a class="text-danger" href="//{$smarty.server.SERVER_NAME}/{$list.url}"><span class="fa fa-angle-right float-right"></span> {$list.category}</a></div>
            {/foreach}
            <div class="list-group-item bg-danger text-white">
                <a data-toggle="collapse" href="#suppliers" class="text-white">
                    Shop from suppliers
                    <span class="float-right"><i class="fa fa-angle-down"></i></span>
                </a>
            </div>
            <div class="list-group  collapse" id="suppliers">
                {foreach $suppliers item=list}
                    <div class="list-group-item border-0"><a class="text-danger" href="//{$smarty.server.SERVER_NAME}/supplier/{$list.url}"><span class="fa fa-angle-right float-right"></span> {$list.supplier}</a></div>
                {/foreach}
            </div>
        </div>
    </div>
</div>
