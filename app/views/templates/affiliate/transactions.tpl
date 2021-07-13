{extends file="index.tpl"}
{block name="meta"}
    <title>Boo cash - Dashboard</title>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/jszip-2.5.0/dt-1.10.20/b-1.6.1/b-html5-1.6.1/b-print-1.6.1/fh-3.1.6/kt-2.5.1/r-2.2.3/sc-2.0.1/sp-1.0.1/datatables.min.css"/>
{/block}
{block name="body"}
    <div class="container">
        <div class="col-md-12 mt-5 mb-5">
            {if ! ($user_info)}
                <h6 class="p-2 text-center">You are not logged in.</h6>
                <a class="text-dark" href="{$domain.auth}/app/{$key}?i=4&redirect={$domain.redirect}">
                    <h4 class="p-2 text-center"><button class="btn btn-danger">Sign up</button></h4>
                </a>
            {else}
                <div class="row mb-3">
                    {include "profile/profile_menu.tpl"}
                    <div class="col-md-8">
                        <div class="text-center">
                            <h3>Boo Cash</h3>
                            <p>View your Boo cash transactions from here.</p>
                        </div>
                        {if $user_info[0].boo_cash == 0}
                            <div class="text-center p-3 mt-1 mb-1 shadow">
                                <img src="//{$smarty.server.SERVER_NAME}/assets/loading.gif" lsrc="//{$smarty.server.SERVER_NAME}/assets/images/others/boo-cash.png" class="w-100"/>
                                <a href="//{$smarty.server.SERVER_NAME}/boo-cash/enroll">
                                    <button class="btn btn-danger rounded-0">Enroll to Boo Cash</button>
                                </a>
                                <p class="text-muted font-weight-bolder p-2">Start earning now on every sale made with your link.</p>
                            </div>
                        {else}
                            <div class="shadow p-4">
                                You are enrolled for Boo cash
                                <div class="input-group">
                                    <input type="text"  class="form-control" id="boo-link" value="http://{$smarty.server.SERVER_NAME}/boo-cash/{$user_info[0].username}"/>
                                    <button class="input-group-append btn btn-danger" onclick="copyToClipBoard()">Copy link <i class="fa fa-copy"></i></button>
                                </div>
                            </div>
                            <div class="col-md-12 mt-4">
                                <table class="table mt-2 mb-2 shadow table-responsive">
                                    <thead>
                                    <tr>
                                        <th>Amount collected</th>
                                        <th>Available</th>
                                        <th>Collected</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td class="bg-dark text-white font-weight-bolder">{$boo_snippet['successful_orders']|number_format}</td>
                                        <td class="bg-info font-weight-bolder">{$amount = $boo_snippet['successful_orders'] - $boo_snippet['all_withdraws']} {$amount|number_format} <br/><button class="btn btn-info disabled rounded-0">Withdraw</button></td>
                                        <td class="bg-success text-white font-weight-bolder">{$boo_snippet['all_withdraws']|number_format}</td>
                                    </tr>
                                    </tbody>
                                </table>
                                <table class="table table-striped table-responsive mt-2 mb-2 shadow">
                                    <thead>
                                    <tr>
                                        <th></th>
                                        <th>User</th>
                                        <th>%</th>
                                        <th>Amount</th>
                                        <th>Status</th>
                                        <th>Date</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    {foreach $affiliate_summary item=list name=aff_index}
                                        <tr {if $list.order_state == 0} class="bg-warning"{/if}>
                                            <td>{$smarty.foreach.aff_index.index + 1}</td>
                                            <td>{$list.names}</td>
                                            <td>{$list.discount}%</td>
                                            <td>{$amount = (($list.discount / 100) * $list.amount)}{$amount|number_format:0}</td>
                                            <td>{if $list.order_state == 1}Successful{else}Failed{/if}</td>
                                            <td>{$list.date_created}</td>
                                        </tr>
                                    {/foreach}
                                    </tbody>
                                </table>
                            </div>
                        {/if}
                    </div>
                </div>
            {/if}
        </div>
    </div>
{/block}
{block name="scripts"}
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/v/bs4/jszip-2.5.0/dt-1.10.20/b-1.6.1/b-html5-1.6.1/b-print-1.6.1/fh-3.1.6/kt-2.5.1/r-2.2.3/sc-2.0.1/sp-1.0.1/datatables.min.js"></script>
    <script>
        $(document).ready(function() {
            let currentPage = {if isset($current_page)}{$current_page|json_encode}{else}'xx'{/if};
            $("."+currentPage).addClass("active");
            $('.table').DataTable({
                dom: 'Bfrtip',
                responsive: true,
                fixedHeader: false,
                buttons: [
                    'copyHtml5',
                    'excelHtml5',
                    'csvHtml5',
                    'pdfHtml5'
                ]
            } );
            $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
                $($.fn.dataTable.tables(true)).DataTable()
                    .columns.adjust()
                    .responsive.recalc();
            });
        } );
    </script>
{/block}