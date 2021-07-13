<div class="col-md-4">
    <div class="shadow">
        <div class="menu-list sm-hide">
            <div class="list-group">
                <div class="list-group-item border-left-0 border-right-0 font-weight-bold"><i class="fa fa-dashboard float-right"></i> Dashboard</div>
                <div class="list-group-item border-left-0 border-right-0"><a href="//{$smarty.server.SERVER_NAME}/profile/order"><i class="fa fa-gift float-right"></i> Orders</a></div>
                <div class="list-group-item border-left-0 border-right-0"><a href="//{$smarty.server.SERVER_NAME}/profile/address"><i class="fa fa-home float-right"></i> Addresses</a></div>
                <div class="list-group-item border-left-0 border-right-0"><a href="//{$smarty.server.SERVER_NAME}/profile/details"><i class="fa fa-user float-right"></i> Account details</a></div>
                <div class="list-group-item border-left-0 border-right-0"><a href="//{$smarty.server.SERVER_NAME}/watchlist"><i class="fa fa-save float-right"></i> Watchlist</a></div>
                <div class="list-group-item border-left-0 border-right-0"><a href="//{$smarty.server.SERVER_NAME}/transactions"><i class="fa fa-money float-right"></i> Boo Cash Commission</a></div>
                {if $user_info[0].supplier == 1}
                    <div class="list-group-item border-left-0 border-right-0"><a href="//{$smarty.server.SERVER_NAME}/supplier"><i class="fa fa-truck float-right"></i> Supplier Dashboard</a></div>
                {/if}
                <div class="list-group-item border-left-0 border-right-0"><a href="{$domain.auth}/logout/{$smarty.cookies.auth}/{$user_info[0].id}?auth={$key}&redirect={$domain.redirect}"><i class="fa fa-sign-out float-right"></i>Logout</a></div>
            </div>
        </div>
    </div>
</div>