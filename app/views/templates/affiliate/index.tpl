{extends file ="index.tpl"}
{block name="meta"}
    <title>Earn with Boo Cash</title>
    <meta name="keywords" content="Work from home, side income, commission online, Sell with Boo store, How to sell online, sell online, online store, Uganda online store, Boo, Boo store, Boosted Store, Boosted Technologies, DevMate, Tumusiime, Rickie Ashan Tumusiime, boo.store, booo.store, Boosted Technologies Uganda, Ugandan online store, Online boo, Booo store, Betty Happy"/>
    <meta name="description" content="Earn commission on every sale you refer to on boo store. No limits, earn endlessly">
    <meta name="contact" content="office[at]boostedtechs[dot]com" />
    <meta name="author" content="DevMate <https://devmate.boostedtechs.com>" />
    <meta name="copyright" content="Boosted Technologies" />
    <meta Name="rating" content="General"/>
    <meta property="og:site_name" content="Earn with Boo cash">
    <meta property="og:description" content="Earn commission on every sale you refer to on boo store. No limits, earn endlessly">
    <meta property="og:image" content="https://{$smarty.server.SERVER_NAME}/assets/images/others/boo-cash.pngg">
    <PageMap>
        <DataObject type="thumbnail">
            <Attribute name="src" value="https://{$smarty.server.SERVER_NAME}/assets/images/others/boo-cash.png"/>
            <Attribute name="width" value="100"/>
        </DataObject>
        <DataObject type="action">
            <Attribute name="label" value="Join now"/>
            <Attribute name="url" value="https://{$smarty.server.SERVER_NAME}/assets/images/others/boo-cash.png"/>
            <Attribute name="class" value="download"/>
        </DataObject>
        <DataObject type="publication">
            <Attribute name="author" value="Boosted Technologies"/>
            <Attribute name="date" value="1ST NOV 2020"/>
            <Attribute name="category" value="E-commerce"/>
        </DataObject>
    </PageMap>
{/block}
{block name="body"}
    {include file="small-bar.tpl"}
    <div class="container">
        {include file="checkout/left-bar.tpl"}
        <div class="col-md-12 mt-3 mb-3">
            <div class="list-group list-group-horizontal">
                <div class="list-group-item border-0 bg-transparent"><a href="//{$smarty.server.SERVER_NAME}">Home</a> <i class="fa fa-angle-right"></i></div>
                <div class="list-group-item border-0 bg-transparent">Boo cash</div>
            </div>
        </div>
        <div class="col-md-8 mx-auto">
            <img src="//{$smarty.server.SERVER_NAME}/assets/images/others/boo-cash.png" class="w-100"/>
            <h4 class="text-center font-weight-bolder p-4">Boo cash</h4>
            <h5 class="font-weight-bolder pt-3 pb-2 border-top border-bottom">What is Boo Cash?</h5>
            <p>Boo Cash is a commission cash our partner gets when a sale is made on Boo store through the referral link.</p>
            <h5 class="font-weight-bolder pt-3 pb-2 border-top border-bottom">How does it work?</h5>
            <p>An account is created normally, on the user <a href="//{$smarty.server.SERVER_NAME}/profile">dashboard</a>, There is a provision to enroll to the Boo Cash.</p>
            <p>After enrolling to Boo Cash, a unique personal sharing link is generated and it can be shared out.</p>
            <p>For every sale made through the link, a commission pay that varies time to time is paid to the unique link used.</p>
            <p class="alert alert-danger pt-3 pb-2 border-top border-bottom"><b>NOTE</b> : You cannot use your own link for your own purchases.</p>
            <h5 class="font-weight-bolder pt-3 pb-2 border-top border-bottom">When is cash withdrawn from dashboard.</h5>
            <p>When the commission Maxes to <b>UGX 10,000,</b> a payment request is made and cash deposit via Mobile money is initiated to the provided number in <a href="https://auth.boostedtechs.com/phone">Boosted Auth profile.</a>
            </p>
            <p>Bank account deposits are made for Boo cash of <b>UGX 100,000</b> and above.</p>
            <p class="alert alert-info">For bank transfers, it may take one to two days for the cash transfers to be processed. <br/>Mobile money transfers take upto one day only</p>
            <h5 class="font-weight-bolder pt-3 pb-2 border-top border-bottom">How do i check my Boo Cash?</h5>
            <p>As long as you are enrolled to Boo Cash, your balance will always reflect on your dashboard</p>
            <h5 class="font-weight-bolder pt-3 pb-2 border-top border-bottom">How do i know someone used my link to purchase?</h5>
            <p>When your link is used, the purchases will always reflect on your dashboard</p>
            <div class="mt-3 mb-3 pt-2 pb-2">
                <a href="//{$smarty.server.SERVER_NAME}/profile">
                    <button class="btn btn-danger form-control rounded-0">GET STARTED</button>
                </a>
            </div>
        </div>
    </div>
{/block}