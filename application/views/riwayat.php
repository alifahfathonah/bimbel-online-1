<section class="hero-wrap hero-wrap-2" style="background-image: url('images/image_5.jpg');">
	<div class="overlay"></div>
	<div class="container">
		<div class="row no-gutters slider-text align-items-center justify-content-center">
			<div class="col-md-9 ftco-animate text-center">
				<h1 class="mb-2 bread">RIWAYAT KELAS</h1>
				<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Riwayat Kelas <i class="ion-ios-arrow-forward"></i></span></p>
			</div>
		</div>
	</div>
</section>

<section class="ftco-section contact-section">
	<div class="container">
		<div class="row d-flex mb-5 contact-info">
			<div class="col-md-12 d-flex">
				<div class="bg-light align-self-stretch box p-4 text-center">
					<div class="container table-responsive">
						<div class="col-md-12 text-center heading-section ftco-animate">
							<h2 class="mb-4"><span>Tabel</span> Histori</h2>
							<p>Riwayat Kelas adalah tempat untuk melihat histori kelas yang telah dipilih oleh siswa <span style="color: rgb(231, 78, 78);"> jika telah membayar harap upload file bukti bayaran pada kolom bukti bayar sesuai dengan kelas yang telah dipilih</span></p>
						</div>
						<table class="table table-dark table-striped">
							<thead>
								<tr>
									<th>No</th>
									<th>Nama</th>
									<th>Kelas</th>
									<th>Jadwal</th>
									<th>Jam</th>
									<th>Status</th>
									<th>Bayaran</th>
									<th>Bukti Pembayaran</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<?php $i = 1;
								foreach ($riwayat as $riw) : ?>
									<tr>
										<td><?= $i++; ?></td>
										<td><?= $riw['nama'] ?></td>
										<td><?= $riw['id_kelas'] ?></td>
										<td><?= $riw['jadwal_kelas'] ?></td>
										<td><?= $riw['waktu_kelas'] ?></td>
										<td><?= $riw['status'] ?></td>
										<td><?= $riw['status_pembayaran'] ?></td>
										<td>image/image.jpg</td>
										<td><button type="button" class="btn btn-warning" style="color: #555c61;" data-toggle="modal" data-target="#myModal"><i class="fas fa-file"></i> Upload</button></td>
									</tr>
								<?php endforeach; ?>

							</tbody>
						</table>
						<!-- The Modal -->
						<div class="modal fade" id="myModal">
							<div class="modal-dialog modal-dialog-centered">
								<div class="modal-content" style="border: 0px solid rgba(0, 0, 0, 0.2);">

									<!-- Modal Header -->
									<div class="modal-header" style="background-color: #fda638;">
										<b>
											<h4 class="modal-title" style="color: white;">Upload Bukti Bayar</h4>
										</b>
										<button type="button" class="close" data-dismiss="modal" style="color: white;">&times;</button>
									</div>

									<!-- Modal body -->
									<div class="modal-body" style="padding-top: 20px;">
										<input type="file" class="form-control">
									</div>

									<!-- Modal footer -->
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary">Simpan</button>

									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
