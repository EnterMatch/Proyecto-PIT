<script src="js/jQuery-2.2.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/select2.full.min.js"></script>
<script src="js/jquery.inputmask.js"></script>
<script src="js/jquery.inputmask.date.extensions.js"></script>
<script src="js/jquery.inputmask.extensions.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.6/moment.min.js"></script>
<script src="js/daterangepicker.js"></script>
<script src="js/bootstrap-colorpicker.min.js"></script>
<script src="js/bootstrap-timepicker.min.js"></script>
<script src="js/jquery.slimscroll.min.js"></script>
<script src="js/icheck.min.js"></script>
<script src="js/fastclick.js"></script>
<script src="js/app.min.js"></script>
<script src="js/demo.js"></script>
<script src="https://cdn.ckeditor.com/4.4.3/standard/ckeditor.js"></script>
<script src="js/bootstrap3-wysihtml5.all.min.js"></script>
<script>
  $(function () {
    CKEDITOR.replace('editor1');
    $(".textarea").wysihtml5();
  });
</script>
<script>
  $(function () {
    $(".select2").select2();
    $("#datemask").inputmask("dd/mm/yyyy", {"placeholder": "dd/mm/yyyy"});
    $("#datemask2").inputmask("mm/dd/yyyy", {"placeholder": "mm/dd/yyyy"});
    $("[data-mask]").inputmask();
    $('#reservation').daterangepicker();
    $('#reservationtime').daterangepicker({timePicker: true, timePickerIncrement: 30, format: 'MM/DD/YYYY h:mm A'});
    $('#daterange-btn').daterangepicker(
        {
          ranges: {
            'Today': [moment(), moment()],
            'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
            'Last 7 Days': [moment().subtract(6, 'days'), moment()],
            'Last 30 Days': [moment().subtract(29, 'days'), moment()],
            'This Month': [moment().startOf('month'), moment().endOf('month')],
            'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
          },
          startDate: moment().subtract(29, 'days'),
          endDate: moment()
        },
        function (start, end) {
          $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
        }
    );

    $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
      checkboxClass: 'icheckbox_minimal-blue',
      radioClass: 'iradio_minimal-blue'
    });
    $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
      checkboxClass: 'icheckbox_minimal-red',
      radioClass: 'iradio_minimal-red'
    });
    $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
      checkboxClass: 'icheckbox_flat-green',
      radioClass: 'iradio_flat-green'
    });
    $(".my-colorpicker1").colorpicker();
    $(".my-colorpicker2").colorpicker();
    $(".timepicker").timepicker({
      showInputs: false
    });
  });
</script>