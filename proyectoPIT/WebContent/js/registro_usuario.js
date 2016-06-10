$(function(){
	$('#slcTipoUsuario').change(function(){
		var opcion = $('#slcTipoUsuario option:selected').text();
		if(opcion == "Empleado"){
			$('#PrimerBloque').removeClass("col-md-6");
			$('#PrimerBloque').addClass("col-md-4");
			$('#SegundoBloque').removeClass("col-	md-6");
			$('#SegundoBloque').addClass("col-md-4");
			$('#GrupoYRol').show();
		}else{
			$('#PrimerBloque').removeClass("col-md-4");
			$('#PrimerBloque').addClass("col-md-6");
			$('#SegundoBloque').removeClass("col-md-4");
			$('#SegundoBloque').addClass("col-md-6");
			$('#GrupoYRol').hide();
			
		}
	});
});