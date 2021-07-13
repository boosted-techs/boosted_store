{extends file="admin/index.tpl"}
{block name="body"}
    <div class="col-md-12 mt-4">
        <h5 class="alert alert-warning text-center font-weight-bolder">Supplier Applications</h5>
        <a href="//{$smarty.server.SERVER_NAME}/dashboard/suppliers">
            <button class="btn btn-warning rounded-0 mb-2 ">View suppliers</button>
        </a>
        <table class="table table-responsive table-striped">
            <thead>
            <tr>
                <th></th>
                <th>Names</th>
                <th>ID</th>
                <th>Business</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Date</th>
                <th>Country</th>
                <th>Continent</th>
            </tr>
            </thead>
            <tbody>
            {foreach $supplier_applications item=list name=user}
                <tr>
                    <td>{$smarty.foreach.user.index + 1}</td>
                    <td><a href="//{$smarty.server.SERVER_NAME}/dashboard/users/{$list.user}">{$list.names}</a></td>
                    <td>{$list.user}</td>
                    <td><a href="//{$smarty.server.SERVER_NAME}/dashboard/application/{$list.id}">{$list.business_name}</a></td>
                    <td>{$list.email}</td>
                    <td>{$list.phone_number}</td>
                    <td>{$list.date_requested}</td>
                    <td>
                        {$list.country_name}
                    </td>
                    <td>
                        {$list.district_name}
                    </td>
                </tr>
            {/foreach}
            </tbody>
        </table>
    </div>
{/block}