<script src="js/jQuery-2.2.0.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('#slcEmpresa').change(function(){
			$('#idEmpresa').val(this.value);
			$('#hiddenForm').submit();
		})
	});
</script>
