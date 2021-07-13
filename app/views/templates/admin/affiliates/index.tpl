{extends file="admin/index.tpl"}
{block name="body"}
    <div class="col-md-12 mt-4">
        <h5 class="alert alert-info text-center font-weight-bolder">Affiliates</h5>
        <table class="table table-responsive table-striped">
            <thead>
            <tr>
                <th></th>
                <th></th>
                <th>Names</th>
                <th>Orders</th>
                <th>Email</th>
                <th>Role</th>
                <th>Gender</th>
                <th>Country</th>
                <th>Continent</th>
            </tr>
            </thead>
            <tbody>
            {foreach $users item=list name=user}
                <tr>
                    <td>{$smarty.foreach.user.index + 1}</td>
                    <td><a href="//{$smarty.server.SERVER_NAME}/dashboard/users/{$list.user}"><img src="{$list.image}" style="width:50px;" alt="{$list.names}" /></a></td>
                    <td><a href="//{$smarty.server.SERVER_NAME}/dashboard/users/{$list.user}">{$list.names}</a> <br/> ({$list.age})</td>
                    <td>Orders : {$list.orders} <br/><b>Successful : {$list.placed_orders}</b></td>
                    <td>{$list.email}</td>
                    <td>{if $list.role == 1}Admin{else}User{/if}</td>
                    <td>
                        {if $list.gender == 1}
                            <i class="fa fa-male"></i>
                        {elseif $list.gender == 2}
                            <i class="fa fa-female"></i>
                        {else}
                            Not specified
                        {/if}
                    </td>
                    <td>
                        {$list.country}
                    </td>
                    <td>
                        {$list.continent}
                    </td>
                </tr>
            {/foreach}
            </tbody>
        </table>
    </div>
{/block}