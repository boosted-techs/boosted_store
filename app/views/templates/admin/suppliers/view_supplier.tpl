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
    <table class="table table-responsive shadow">
        <thead>
        <tr>
            <th></th>
            <th></th>
            <th>Supplier name</th>
            <th>Business</th>
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
                <th>
                    {if ! is_null($list.suppler_name)}
                        {$list.suppler_name}
                        <br/>
                        <small>
                            <a href="//{$smarty.server.SERVER_NAME}/dashboard/users/{$list.supplier_id}">Profile</a>
                        </small>
                        <br/>
                        <small>
                            <a href="//{$smarty.server.SERVER_NAME}/dashboard/application/{$list.application}">Application</a>
                        </small>
                    {/if}
                </th>
                <td><a href="//{$smarty.server.SERVER_NAME}/supplier/{$list.url}">{$list.supplier}</a></td>
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
    <div class="card col-md-12 border-0 shadow">
        <div class="card-header bg-transparent font-weight-bolder">
            <h5>Edit Supplier</h5>
        </div>
        <div class="card-body">
            <form action='//{$smarty.server.SERVER_NAME}/supplier/edit_supplier' method='post' onsubmit='submitButton()'>
                <input type='text' required class='form-control' name='supplier' value="{$list.supplier}" placeholder="Supplier name"/>
                <label>Supplier email</label>
                <input type='text' value="{$list.email}" required class='form-control mt-2 mb-2' name='email' placeholder='Supplier email'/>
                <label>Supplier phone numbers</label>
                <input type='text' value="{$list.contacts}" required class='form-control mt-2 mb-2' name='phone' placeholder='Supplier phone numbers'/>
                <input type="hidden" name="id" value="{$list.id}"/>
                <label>Supplier id</label>
                <input type="number" name="supplier_id", value="{$list.supplier_id}" class="form-control mt-2 mb-2"/>
                <label>Supplier description</label>
                <textarea  required class='form-control mt-2 mb-2' name='description' placeholder='Supplier description'>{$list.description}</textarea>
                <button class='btn btn-info rounded-0 mt-2 mb-2 submit-button' type='submit'>Save</button>
            </form>
        </div>
    </div>
    <div class="card mt-3 mb-3 border-0 shadow">
        <div class="card-header bg-transparent font-weight-bolder">
            <button class="btn btn-primary float-right" onclick="addSupplierThumbnail({$list.id})">Add images</button>
            <h5>Images</h5>
        </div>
        <div class="card-body">
            <table class="table table-responsive shadow">
                <thead>
                <tr>
                    <th></th>
                    <th></th>
                    <th>Photo</th>
                    <th>Feature Photo</th>
                    <th>Link</th>
                    <th>Date created</th>
                    <th>Status</th>
                    <th>Added by</th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                {$i = 1}
                {foreach $photos item=list}
                    <tr class="{if $list.status == 0}  alert alert-danger{/if}">
                        <td>{$i++}</td>
                        <td><input class="checkbox" type="checkbox" value="{$list.id}"/></td>
                        <td>
                            <a href="//{$smarty.server.SERVER_NAME}/media/suppliers/{$list.photo}">
                                <img src="//{$smarty.server.SERVER_NAME}/media/suppliers/{$list.photo}" style="width:100px;"/>
                            </a>
                        </td>
                        <td>
                            {if $list.feature_photo == 1}
                                <a href="//{$smarty.server.SERVER_NAME}/thumbnail/make_feature/{$list.id}/{$list.supplier}?i=1&t=product_supplier_images">Remove feature photo</a>
                            {else}
                                <a href="//{$smarty.server.SERVER_NAME}/thumbnail/make_feature/{$list.id}/{$list.supplier}?i=2&t=product_supplier_images">
                                    Make feature photo
                                </a>
                            {/if}
                        </td>
                        <td>
                            {$list.photo}
                        </td>
                        <td>
                            {$list.date_created}
                        </td>
                        <td>
                            {if $list.status == 1} Active {else} Inactive {/if}
                        </td>
                        <td>
                            {$list.names}
                        </td>
                        <td>
                            <a href="//{$smarty.server.SERVER_NAME}/delete_pic?i={$list.photo}">Delete</a>
                        </td>
                    </tr>
                {/foreach}
                </tbody>
            </table>
            <div class="dropdown float-right">
                <button type="button" class="btn btn-dark rounded-0 dropdown-toggle" data-toggle="dropdown">
                    Choose action
                </button>
                <div class="dropdown-menu">
                    <a class="dropdown-item active" href="javascript:activateFunction('product_supplier_images', 1)">Activate</a>
                    <a class="dropdown-item" href="javascript:activateFunction('product_supplier_images', 2)">De activate</a>
                </div>
            </div>
        </div>
    </div>
{/block}