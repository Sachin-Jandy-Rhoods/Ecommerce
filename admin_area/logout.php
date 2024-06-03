<?php
session_start();
session_unset();
session_destroy();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Log Out</title>
    <style>
        html,
        body {
            height: 100%;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: black;
        }

        .content {
            text-align: center;
        }
    </style>
</head>

<body>
    <div class="content">
        <h1 style="color: #87CEEB;">You are logged out</h1>
        <p style="font-weight: bold; margin-top: 2px; padding: 1px; color: white;">
            Already have an account ? <a href="admin_login.php" style="color: red; text-decoration: none;">Login !</a>
        </p>
    </div>
</body>

</html>
