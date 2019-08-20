$(document).ready(main);

var contador = 1;

function main() {
    //setInterval(function(){ 
    var p = {};
    VerLista(p);
    VerChat(p);
    //}, 2000);

    var vtn = $(window).height();
    vtn = (vtn * 90) / 100;
    $("#ListaDialogos").css({ "height": vtn + 'px' });

    var vtn_crearFrases = $(window).height();
    vtn_crearFrases = (vtn * 30) / 100;
    $("#crear_frases").css({ "height": vtn_crearFrases + 'px' });

    var vtn_chatbox = $(window).height();
    vtn_chatbox = (vtn * 80) / 100;
    $("#chatbox").css({ "height": vtn_chatbox + 'px' });


    $(document).on("click", "button.activar", function(e) {
        e.stopPropagation();
        var cod = $(this).attr("id").substring(1);
        var p = { btn: "activar", id: cod };
        VerLista(p);
    });

    $(document).on("click", "button.desactivar", function(e) {
        e.stopPropagation();
        var cod = $(this).attr("id").substring(1);
        var p = { btn: "desactivar", id: cod };
        VerLista(p);
    });

    $(document).on("click", "button.eliminar", function(e) {
        e.stopPropagation();
        var cod = $(this).attr("id").substring(1);
        var p = { btn: "eliminar", id: cod };
        VerLista(p);
    });

    $(document).on("click", "button.editar", function(e) {
        e.stopPropagation();
        var self = $(this);
        var id = self.data("id");
        var frase = self.data("frase");
        var script = self.data('script');
        var emociones = self.data('emocion');

        $("#idfrase").val(id);
        $("#frase").val(frase);
        $("#optscript").val(script);
        $("#optemociones").val(emociones);

        $("#agregar").hide();
        $("#actualizar").show();
    });

    $("#actualizar").on("click", function(e) {
        var p = {
            id: $("#idfrase").val(),
            frase: $("#frase").val(),
            script: $("#optscript option:selected").val(),
            emociones: $("#optemociones option:selected").val(),
            btn: "actualizar"
        };
        VerLista(p);

        $("#actualizar").hide();
        $("#agregar").show();
        $("#idfrase").val("");
        $("#frase").val("");
        $("#optscript").val(1);
        $("#optemociones").val(1);
    });

    $("#agregar").on("click", function(e) {
        e.stopPropagation();
        p = {
            frase: $("#frase").val(),
            script: $("#optscript option:selected").val(),
            emociones: $("#optemociones option:selected").val(),
            btn: 'agregar'
        };
        VerLista(p);
        $("#frase").val("");
        $("#optscript").val(1);
    });

    $("#mensaje").on("keypress", function(e) {
        e.stopPropagation();
        if (e.which === 13) {
            p = {
                mensaje: $("#mensaje").val(),
                btn: 'Enviar'
            };
            VerChat(p);
            alfinal();
            $("#mensaje").val("");
        }
    });

    $("#botonchat").on("click", function(e) {
        e.stopPropagation();
        p = {
            mensaje: $("#mensaje").val(),
            btn: 'Enviar'
        };
        VerChat(p);
        alfinal();
        $("#mensaje").val("");
    });

    function alfinal() {
        var altura = 20000;
        $("#chatbox").animate({ scrollTop: altura + "px" });

    }

    function VerLista(p) {
        $.ajax({
            async: true,
            type: "POST",
            data: p,
            cache: false,
            success: (data) => {
                $("#ListaDialogos").empty().append(data);
            },
            error: () => {
                $("#ListaDialogos").html("<center><h1>Error al Cargar Lista</h1><center>");
            },
            url: './list/lista_dialogos.php'
        });
    }

    function VerChat(p) {
        $.ajax({
            async: true,
            type: "POST",
            data: p,
            cache: false,
            success: (data) => {
                $("#chatbox").empty().append(data);
                alfinal();
            },
            error: () => {
                $("#chatbox").html("<center><h1>Error al Cargar Lista</h1><center>");
            },
            url: './list/lista_chat.php'
        });
    }
}