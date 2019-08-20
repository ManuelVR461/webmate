<label class="drawer-overlay" for="drawer-toggle"></label>
<br>
<br>
<!--<div class="item-cta">
    <a class="tap"  href="./CuadreGeneral.php" >  
        <img src="./images/iconos/reporte.jpg" style="width: 20px;height: 30px;">
    </a>

    <a class="tap"  href="./Ordenes.php" >
        <img src="./images/iconos/grupo.jpg" style="width: 20px;height: 30px;">
    </a>

    <a class="tap"  href="./index.php" >
        <img src="./images/iconos/casa.jpg" style="width: 20px;height: 30px;">
    </a>

    <a class="tap"  href="./Solicitudes.php" >
        <img src="./images/iconos/cesta.jpg" style="width: 20px;height: 30px;">
    </a>

    <a class="tap"  href="./PerdidasdelDia.php" >
       <img src="./images/iconos/bolsa.jpg" style="width: 20px;height: 30px;">
    </a>

</div>-->
</div>
 <!-- <script src="js/config75e6.js?v=0.0.2291"></script>
    <script src="js/companion.js"></script>
    <script src="js/bundle75e6.js?v=0.0.2291"></script>-->
</body>
<!-- Pie -->
<footer>
    <script src="./plugins/jQuery/jquery-2.2.3.min.js"></script>
    <script src="./plugins/system/js/main.js"></script>
    <script src="./plugins/bootstrap/js/bootstrap.js" type="text/javascript"></script>

    
    <script src="./plugins/datatable/js/datatables.min.js"></script>
    <script src="./plugins/datatable/js/jquery.dataTables.min.js"></script>
    <script src="./plugins/datatable/js/dataTables.responsive.min.js"></script>
    <script>
        $(document).ready(function () {

            $('#dialogos').DataTable( {
                "responsive": false,
                "paging":   false,
                "ordering": false,
                "info":     false
            });
            
        });

        $("div").on("click", "button#buscar", function () {
            if ($("#Formulario").is(":hidden")) {
                $("#Formulario").slideDown("fast");
            } else {
                $("#Formulario").slideUp("fast");
            }
        });

    </script>
</footer>
</html>
