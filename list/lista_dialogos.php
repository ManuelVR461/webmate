<?php

include ("../class/clsConexion.php");

$DbConect = new ConexionSQL();

$tabla_cliente = "dialogos_dirigidos";

$id = isset($_REQUEST['id'])?$_REQUEST['id']:null;
$btn = isset($_REQUEST['btn'])?$_REQUEST['btn']:null;
$frase = isset($_REQUEST['frase'])?$_REQUEST['frase']:null;
$script = isset($_REQUEST['script'])?$_REQUEST['script']:null;
$emociones = isset($_REQUEST['emociones'])?$_REQUEST['emociones']:null;

switch ($btn) {
    case 'agregar':
        $sql = "INSERT INTO ".$tabla_cliente." (frase,script,emocion) VALUES('".$frase."',".$script.",".$emociones.")";
        $res3 = $DbConect->Consulta($sql);
        break;
    case 'editar':
        $sql = "SELECT * FROM ".$tabla_cliente." WHERE id = ".$id;
        $res3 = $DbConect->Consulta($sql);
        $form = $DbConect->ExtraerDatos($res3);
        $frase = $form['frase'];
		$script = $form['script'];
		$emociones = $form['emociones'];
        break;

    case 'actualizar':
        $sql = "UPDATE ".$tabla_cliente." SET frase='".$frase."', script=".$script.", emocion=".$emociones."  WHERE id=".$id;
        $res3 = $DbConect->Consulta($sql);
        break;

    case 'eliminar':
        $sql = "DELETE FROM ".$tabla_cliente." WHERE id=".$id;
        $res3 = $DbConect->Consulta($sql);
        break;
    
    case 'activar':
        $sql = "SELECT * FROM ".$tabla_cliente." WHERE status='S'";
        $res3 = $DbConect->Consulta($sql);
        if( $DbConect->nroreg($res3) > 0){

        }else{
            $sql = "UPDATE ".$tabla_cliente." SET status='S' WHERE id = ".$id;
            $res3 = $DbConect->Consulta($sql);
        }    
        break;
    case 'desactivar':
        $sql = "UPDATE ".$tabla_cliente." SET status='N' WHERE id = ".$id;
        $res3 = $DbConect->Consulta($sql);
        break;
}

?>
<div class="table-responsive">
	<table class="display responsive compact" id="dialogos" style="width: 100%;">
		<thead>
			<tr>
				<th style="width: 10%;">ID</th>
				<th>FRASE:</th>
				<th></th>
				<th></th>
				<th>ACCION:</th>
				<th>EMOCION:</th>
				<th style="width: 180px;"></th>
			</tr>
		</thead>
		<tbody>
			<?php
			$sql = "SELECT d.*,s.nombre,e.nombre as animacion FROM ".$tabla_cliente." d INNER JOIN scripts s ON d.script=s.id INNER JOIN emociones e ON d.emocion=e.id";
			$res2 = $DbConect->Consulta($sql);
			if($res2){
				while($data = $DbConect->ExtraerDatos($res2)){
					?>
					<tr style="background:<?php echo ($data['status']=="S")?"#70fd5b":NULL; ?>;">
						<td ><?php echo $data['id'] ?></td>
						<td></td>
						<td>
					
							<?php if($data['status']=="N"){ ?>
								<button type="button" id="a<?php echo $data['id']; ?>" name="btn" value="activar" class="btn btn-success activar">🗣️</button>
							<?php }else{ ?>
								<button type="button" id="d<?php echo $data['id']; ?>" name="btn" value="desactivar" class="btn btn-warning desactivar">🗣️</button>
							<?php } ?>

						</td>
						<td class="dt-body-nowrap" style="text-overflow: ellipsis;overflow:hidden;">
							<?php echo $data['frase']; ?>
						</td>
						<td><?php echo $data['nombre']; ?></td>
						<td><?php echo $data['animacion']; ?></td>
						<td >

							

							<button type="button" data-frase="<?php echo $data['frase']; ?>" data-script="<?php echo $data['script']; ?>" data-emocion="<?php echo $data['emocion']; ?>" data-id="<?php echo $data['id']; ?>" name="btn" value="editar" class="btn btn-primary editar">📝</button>

							<button type="button" id="x<?php echo $data['id']; ?>" name="btn" value="X" class="btn btn-danger eliminar">✖️</button>

						</td>
					</tr>
					<?php
				}
			}
			?>
		</tbody>
	</table>
</div>
<script>
        $(document).ready(function () {

            $('#dialogos').DataTable( {
                "responsive": true,
                "paging":   false,
                "ordering": false,
				"info":     false,
				"aoColumnDefs": [{
					"mRender": function (data, type, row) {
							return data + row[3].substr(0,25) + "...";
					},
					"aTargets": [1]	
				}]
			});
			
			//$('#dialogos tbody tr').on('click', function () {
				//var self = $('td',this);
				//alert($(self[1]).text());
			//});

		});
</script>