<?php
if (!isset($_SESSION)) {
    session_start();
}
require_once './templates/header.php';
require_once './templates/nav-hor.php';
require_once './templates/nav-vert.php';
?>
<div class="ads">
    <br><br>
    <div class="login">
        <div class="card">
            <h4>
                <span class="icons icon-user"></span>
                <br>
                <label>Inicio de Sesion</label>
            </h4>
        </div>
        <div class="card">
            <form method="post" action="templates/verificarlogin.php">
                <div class="field">
                    <input type="text" class="textbox " autocomplete="off" name="txtuser" id="name" required="" value=""/>
                    <span class="bar"></span>
                    <label class="label" for="name" style="color: #2980b9; font-size: 14px;">Usuario / Email</label>
                </div>
                <div class="field">
                    <input type="password" class="textbox " autocomplete="off" name="txtpwd" id="password" required="" value=""/>
                    <span class="bar"></span>
                    <label class="label " for="password" style="color: #2980b9; font-size: 14px;">Contraseña</label>
                    <small class=" hide"></small>
                </div>
                <button type="submit" class="btn btn-full" name="btn" value="LoginWindows">Entrar</button>
                <br/>
                <br/>
                <a class="link-text" rel="nofollow" href="recuperarclv.html" style="color: #006dcc;">¿Olvidaste tu contraseña?</a>
            </form>
        </div>
    </div>
</div>
<label class="drawer-overlay" for="drawer-toggle"></label>


