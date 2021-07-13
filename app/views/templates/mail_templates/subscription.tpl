<!doctype html>
<head>
    <title>Boo Store Mail subscription</title>
    <link rel="shortcut icon" href="//{$smarty.server.SERVER_NAME}/assets/favicon_io/favicon.ico">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;300&family=Open+Sans:wght@300&family=Montserrat:wght@600&display=swap" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body style="background: #f2f2f2; font-family: 'Montserrat', sans-serif">
    <div>
        <div style="text-align: center; margin-top: 40px; margin-bottom: 40px;">
            <img src="https://store.boostedtechs.com/assets/images/logo/logo-red.png" style="width:200px" alt="logo">
        </div>
        <div style="width:100%; max-width: 600px; margin: auto; background: white; padding: 15px; text-align: center; border-radius: 5px; border-top: 4px solid #ff0066;">
            <div>{$message}</div>
            <div style="margin-top:10px; margin-bottom: 10px;">
                <a href="//{$smarty.server.SERVER_NAME}/shop"><button style="border: 0; border-radius: 5px; width: 100%; padding: 15px; text-align: center; font-size: 20px; font-weight: lighter; background: #ff0066; color: white">Go Shopping Now</button></a>
            </div>
        </div>
        <div style="width: 95%; max-width: 600px; margin: auto; margin-top: 10px; margin-bottom: 40px; padding: 10px; text-align: center; color:#aaaaaa">
            <p>This is an auto generated Email. Do not reply to it</p>
            <a href="//{$smarty.server.SERVER_NAME}">
                <img src="https://store.boostedtechs.com/assets/images/logo/logo-red.png" style="width:50px" alt="Boo store">
            </a>
            <a href="https://boostedtechs.com">
                <img src="https://auth.boostedtechs.com/assets/app_icons/logo-square.png" style="width:50px" alt="Boosted Technologies">
            </a>
            <a href="https://devmate.boostedtechs.com">
                <img src="https://auth.boostedtechs.com/assets/app_icons/devmate_logo.jpg" style="width:50px" alt="DevMate">
            </a>
        </div>
    </div>
</body>