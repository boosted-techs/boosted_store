<html>
<head>
    {if empty($content)}
        <title>Earn cash with Boo cash on every sale you make on Boo store</title>
        <meta name="refresh" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;300&family=Open+Sans:wght@300&family=Montserrat:wght@600&display=swap" rel="stylesheet">
        <meta name="keywords" content="Boo cash, Booo store, Boo, Boo store, Boosted Store, Boosted Technologies, DevMate, Tumusiime, Rickie Ashan Tumusiime, boo.store, booo.store, Boosted Technologies Uganda, Ugandan online store, Online boo, Booo store, Betty Happy"/>
        <meta name="description" content="Earn cash with Boo Store on every sale you refer to. It pays instantly">
        <meta name="contact" content="office[at]boostedtechs[dot]com" />
        <meta name="author" content="DevMate <https://devmate.boostedtechs.com>" />
        <meta name="copyright" content="Boosted Technologies" />
        <meta Name="rating" content="General"/>
        <meta property="og:site_name" content="Boo Store ">
        <meta property="og:description" content="Boo Store is an online store selling physical products across east africa. It is a product of Boosted Technologies. We are your Boosted Partners in boo sales.">
        <meta property="og:image" content="https://{$smarty.server.SERVER_NAME}/media/boosted-thumbnail.jpg">
        <PageMap>
            <DataObject type="thumbnail">
                <Attribute name="src" value="//{$smarty.server.SERVER_NAME}/media/boosted-thumbnail.jpg"/>
                <Attribute name="width" value="100"/>
            </DataObject>
            <DataObject type="action">
                <Attribute name="label" value="Shop now"/>
                <Attribute name="url" value="https://booo.store"/>
                <Attribute name="class" value="download"/>
            </DataObject>
            <DataObject type="publication">
                <Attribute name="author" value="Boosted Technologies"/>
                <Attribute name="date" value="1ST NOV 2020"/>
                <Attribute name="category" value="E-commerce"/>
            </DataObject>
        </PageMap>
    {else}
        <title>{$content.names} shops with Boo store. Shop now</title>
        <meta name="refresh" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;300&family=Open+Sans:wght@300&family=Montserrat:wght@600&display=swap" rel="stylesheet">
        <meta name="keywords" content="Boo cash, Booo store, Boo, Boo store, Boosted Store, Boosted Technologies, DevMate, Tumusiime, Rickie Ashan Tumusiime, boo.store, booo.store, Boosted Technologies Uganda, Ugandan online store, Online boo, Booo store, Betty Happy"/>
        <meta name="description" content="Earn cash with Boo Store on every sale you refer to. It pays instantly">
        <meta name="contact" content="office[at]boostedtechs[dot]com" />
        <meta name="author" content="DevMate <https://devmate.boostedtechs.com>" />
        <meta name="copyright" content="Boosted Technologies" />
        <meta Name="rating" content="General"/>
        <meta property="og:title" content="{$content.names} shops with Boo store. Shop now"/>
        <meta property="og:type" content="Website" />
        <meta property="og:site_name" content="Boo Store">
        <meta property="og:url" content="//{$smarty.server.SERVER_NAME}"/>
        <meta property="og:description" content="{$content.names} - Buys groceries, electronics, Fashion wear, Gadgets etc at great discounts from Boo Store">
        <meta property="og:image" content="https://{$smarty.server.SERVER_NAME}/media/boosted-thumbnail.jpg">
        <PageMap>
            <DataObject type="thumbnail">
                <Attribute name="src" value="//{$smarty.server.SERVER_NAME}/media/boosted-thumbnail.jpg"/>
                <Attribute name="width" value="100"/>
            </DataObject>
            <DataObject type="action">
                <Attribute name="label" value="Shop now"/>
                <Attribute name="url" value="https://booo.store"/>
                <Attribute name="class" value="download"/>
            </DataObject>
            <DataObject type="publication">
                <Attribute name="author" value="Boosted Technologies"/>
                <Attribute name="date" value="1ST NOV 2020"/>
                <Attribute name="category" value="E-commerce"/>
            </DataObject>
        </PageMap>
    {/if}
    <script>
        window.location = "//{$smarty.server.SERVER_NAME}";
    </script>
</head>
</html>
