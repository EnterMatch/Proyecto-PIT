$(function(){
	// Muestra u oculta los campos grupo y rol de acuerdo 
	// al tipo de usuario seleccionado 
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
	// Valida que ambas claves sean iguales antes de enviar el formulario
	$('#formRegistrarUsuario').submit(function(){
		var txtClave = $('#txtClave').val();
		var txtClaveRepetir = $('#txtClaveRepetir').val();
		if(txtClave != txtClaveRepetir){
			alert("Las claves no son iguales");
			return false;
		}
	});
});