<?php
if (!isset($_SESSION)) {
    session_start();
}
require_once './templates/header.php';
require_once './templates/nav-hor.php';
if ($pase != "NO") {
    require_once './templates/nav-vert.php';
    ?>
    <div class="container chat" id="chat">
        <div class="chatbox" id="chatbox" style="over-flow:auto;border:1px solid red;"></div>
        <div class="form-group row" style='padding-left:20px;padding-right:20px;'>
            <div style="width:78%;float:left">
                <input class="form-control" type="text" name='chat' id="mensaje" placeholder="Responder Aqui" value="">
            </div>
            <div style="width:20%;float:right;position:relative;">
                <button class="btn btn-success form-control" type="button" name="btn" value="chat" id="botonchat" >Chat</button>
            </div>
        </div> 
    </div>  
    <?php
} else {
    header('location:' . "login.php");
}
require_once './templates/footer.php';
