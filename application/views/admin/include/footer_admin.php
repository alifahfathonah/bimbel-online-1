<!-- Jquery Core Js -->
<script src="<?= base_url(); ?>assets/AdminBsb/plugins/jquery/jquery.min.js"></script>

<!-- Bootstrap Core Js -->
<script src="<?= base_url(); ?>assets/AdminBsb/plugins/bootstrap/js/bootstrap.js"></script>

<!-- Select Plugin Js -->
<script src="<?= base_url(); ?>assets/AdminBsb/plugins/bootstrap-select/js/bootstrap-select.js"></script>

<!-- Slimscroll Plugin Js -->
<script src="<?= base_url(); ?>assets/AdminBsb/plugins/jquery-slimscroll/jquery.slimscroll.js"></script>

<!-- Waves Effect Plugin Js -->
<script src="<?= base_url(); ?>assets/AdminBsb/plugins/node-waves/waves.js"></script>

<!-- Jquery CountTo Plugin Js -->
<script src="<?= base_url(); ?>assets/AdminBsb/plugins/jquery-countto/jquery.countTo.js"></script>

<!-- Morris Plugin Js -->
<script src="<?= base_url(); ?>assets/AdminBsb/plugins/raphael/raphael.min.js"></script>
<script src="<?= base_url(); ?>assets/AdminBsb/plugins/morrisjs/morris.js"></script>

<!-- ChartJs -->
<script src="<?= base_url(); ?>assets/AdminBsb/plugins/chartjs/Chart.bundle.js"></script>

<!-- Flot Charts Plugin Js -->
<script src="<?= base_url(); ?>assets/AdminBsb/plugins/flot-charts/jquery.flot.js"></script>
<script src="<?= base_url(); ?>assets/AdminBsb/plugins/flot-charts/jquery.flot.resize.js"></script>
<script src="<?= base_url(); ?>assets/AdminBsb/plugins/flot-charts/jquery.flot.pie.js"></script>
<script src="<?= base_url(); ?>assets/AdminBsb/plugins/flot-charts/jquery.flot.categories.js"></script>
<script src="<?= base_url(); ?>assets/AdminBsb/plugins/flot-charts/jquery.flot.time.js"></script>

<!-- Sparkline Chart Plugin Js -->
<script src="<?= base_url(); ?>assets/AdminBsb/plugins/jquery-sparkline/jquery.sparkline.js"></script>

<!-- Custom Js -->
<script src="<?= base_url(); ?>assets/AdminBsb/js/admin.js"></script>
<script src="<?= base_url(); ?>assets/AdminBsb/js/pages/index.js"></script>
<script src="<?= base_url(); ?>assets/AdminBsb/js/pages/tables/jquery-datatable.js"></script>

<!-- Demo Js -->
<script src="<?= base_url(); ?>assets/AdminBsb/js/demo.js"></script>

<!-- Jquery DataTable Plugin Js -->
<script src="<?= base_url(); ?>assets/AdminBsb/plugins/jquery-datatable/jquery.dataTables.js"></script>
<script src="<?= base_url(); ?>assets/AdminBsb/plugins/jquery-datatable/skin/bootstrap/js/dataTables.bootstrap.js"></script>
<script src="<?= base_url(); ?>assets/AdminBsb/plugins/jquery-datatable/extensions/export/dataTables.buttons.min.js"></script>
<script src="<?= base_url(); ?>assets/AdminBsb/plugins/jquery-datatable/extensions/export/buttons.flash.min.js"></script>
<script src="<?= base_url(); ?>assets/AdminBsb/plugins/jquery-datatable/extensions/export/jszip.min.js"></script>
<script src="<?= base_url(); ?>assets/AdminBsb/plugins/jquery-datatable/extensions/export/pdfmake.min.js"></script>
<script src="<?= base_url(); ?>assets/AdminBsb/plugins/jquery-datatable/extensions/export/vfs_fonts.js"></script>
<script src="<?= base_url(); ?>assets/AdminBsb/plugins/jquery-datatable/extensions/export/buttons.html5.min.js"></script>
<script src="<?= base_url(); ?>assets/AdminBsb/plugins/jquery-datatable/extensions/export/buttons.print.min.js"></script>

<!-- Bootstrap Datepicker Plugin Js -->
<script src="<?= base_url(); ?>assets/AdminBsb/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script src="<?= base_url(); ?>assets/AdminBsb/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>

<script type="text/javascript">
	$(function() {
		$(".datepicker").datepicker({
			format: 'yyyy-mm-dd',
			todayHighlight: true,
			autoclose: true,
			orientation: 'bottom auto',

		});
	});
</script>


<script type="text/javascript">
	$(document).on("click", "#btn_posisi", function() {
		var id = $(this).data('id');
		var url = '<?= site_url('admin/kelas/delete_kelas/') ?>';
		$("#hapus_nyo").attr('href', url + id);

	})
</script>


<script type="text/javascript">
	$(document).on("click", "#btn_posisi2", function() {
		var id = $(this).data('id');
		var url = '<?= site_url('admin/siswa/delete_pendaftar/') ?>';
		$("#hapus_nyo").attr('href', url + id);

	})
</script>