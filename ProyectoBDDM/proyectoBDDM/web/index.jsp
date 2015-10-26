<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>proyecto BDDM</title>
        <meta charset="UTF-8">
        <link href="Css/css.css" rel="stylesheet" type="text/css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>

    <body>
       
        <div class="modal">
            <div class="container">
                <div class="w-container container">
                    <h1 class="logo">Happy ShopShop</h1>
                    <p class="subtitle">El mundo en tus manos</p>
                    <div class="w-clearfix join-wrapper">
                        <div class="beta-line"></div>
                        <p class="join">¡BIENVENIDOS!</p>
                        <div class="beta-line"></div>
                    </div>
                </div>
                <form action="indexServlet" method="post">
                    <div class="containerb">
                        <input name="email" type="text" placeholder="Correo Electronico">
                        <input name="password" type="password" placeholder="Contraseña">
                        <input id="login-button" type="submit" value="Entrar"/>

                    </div>
                </form>
            </div>
        </div> 



    </body>

</html>
