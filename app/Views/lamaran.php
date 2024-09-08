<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <!-- Include your CSS files here -->
    <link rel="stylesheet" href="path/to/your/styles.css">
    <style>
        .card {
            margin: 20px; /* Adjust margin as needed */
            padding: 20px; /* Add padding to the card */
            border-radius: 8px; /* Optional: for rounded corners */
            box-shadow: 0 2px 4px rgba(0,0,0,0.1); /* Optional: for shadow effect */
        }
        .table-responsive {
            overflow-x: auto; /* Allow horizontal scroll if needed */
        }
        .table {
            min-width: 1300px; /* Ensure table is wide enough */
        }
    </style>
</head>
<body>
    <!-- Sidebar start -->
    <!-- Your sidebar code here -->
    <!-- Sidebar end -->

    <!-- Content body start -->

        <!-- row -->

       
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title"></h4>

                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Nama Siswa</th>
                                        <th>Pekerjaan</th>
                                        <th>No HP</th>
                                       <!--  <th>Email</th> -->
                                        <th>Lokasi Rumah</th>
                                        <th>Tanggal Lamar</th>
                                       <!--  <th>Catatan</th> -->
                                        <th>Surat Lamaran</th>
                                        <th>Status Lamar</th>
<?php if(session()->get('id_level') == 1 || session()->get('id_level') == 3) { ?>

                                        <th>Aksi</th>
                                        <?php } ?>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php 
                                    $no = 1;
                                    foreach($lamaran as $data){
                                    ?>
                                    <tr>
                                        <td><?= $no++ ?></td>
                                        <td><?= $data->nama_siswa ?></td>
                                        <td><?= $data->lowongan ?></td>
                                        <td><?= $data->no_hp ?></td>
                                       <!--  <td><?= $data->email ?></td> -->
                                        <td><?= $data->lokasi_rumah ?></td>
                                        <td><?= $data->tanggal_lamar ?></td>
                                       <!--  <td><?= $data->catatan ?></td> -->
                                        <td><?= $data->surat_lamaran ?></td>
                                       <td>
    <?php
    // Menentukan class badge berdasarkan status
    $badgeClass = '';
    $statusText = $data->status_lamar;

    switch ($statusText) {
        case 'Proses':
            $badgeClass = 'badge badge-warning';
            break;
        case 'Diterima':
            $badgeClass = 'badge badge-success';
            break;
        case 'Ditolak':
            $badgeClass = 'badge badge-danger';
            break;
        default:
            $badgeClass = 'badge badge-secondary'; // default class if status is unknown
    }
    ?>

    <!-- Menampilkan status dengan badge -->
    <span class="<?= $badgeClass ?>">
        <?= $statusText ?>
    </span>
</td>

<?php if(session()->get('id_level') == 1 || session()->get('id_level') == 3) { ?>
                                        <td>
                                            <button class="btn btn-primary" 
                                                    data-toggle="modal" 
                                                    data-target="#editLamaranModal" 
                                                    data-id="<?= $data->id_lamar ?>"
                                                    data-nama="<?= $data->nama_siswa ?>"
                                                    data-lowongan="<?= $data->lowongan ?>"
                                                    data-no_hp="<?= $data->no_hp ?>"
                                                    data-email="<?= $data->email ?>"
                                                    data-lokasi="<?= $data->lokasi_rumah ?>"
                                                    data-tanggal="<?= $data->tanggal_lamar ?>"
                                                    data-catatan="<?= $data->catatan ?>"
                                                    data-surat="<?= $data->surat_lamaran ?>"
                                                    data-status="<?= $data->status_lamar ?>"
                                                >Detail</button>
                                            <a href="<?= base_url('Home/hapus_lamaran/'.$data->id_lamar)?>">
                                                <button class="btn btn-danger">Hapus</button>
                                            </a>
                                        </td>
                                          <?php } ?>
                                    </tr>
                                    <?php } ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- #/ container -->
    </div>

    <!-- Edit Lamaran Modal -->
    <div class="modal fade" id="editLamaranModal" tabindex="-1" aria-labelledby="editLamaranModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="editLamaranModalLabel">Edit Lamaran</h5>
                    <button type="button" class="btn btn-close" data-dismiss="modal" aria-label="Close">
                        <i class="fas fa-times"></i>
                    </button>
                </div>
                <div class="modal-body">
                    <form id="editLamaranForm" action="<?= base_url('Home/aksi_e_lamaran') ?>" method="POST">
                        <input type="hidden" value="" id="id_lamar" name="id_lamar"> <!-- ID ini akan diisi oleh JavaScript -->
                        <div class="mb-3">
                            <label for="edit_nama" class="form-label">Nama Siswa</label>
                            <input type="text" class="form-control" value="" id="edit_nama" name="nama_siswa" required>
                        </div>
                        <div class="mb-3">
                            <label for="edit_lowongan" class="form-label">Pekerjaan</label>
                            <input type="text" class="form-control" value="" id="edit_lowongan" name="lowongan" required>
                        </div>
                        <div class="mb-3">
                            <label for="edit_no_hp" class="form-label">No HP</label>
                            <input type="text" class="form-control" value="" id="edit_no_hp" name="no_hp" required>
                        </div>
                        <div class="mb-3">
                            <label for="edit_email" class="form-label">Email</label>
                            <input type="email" class="form-control" value="" id="edit_email" name="email" required>
                        </div>
                        <div class="mb-3">
                            <label for="edit_lokasi_rumah" class="form-label">Lokasi Rumah</label>
                            <input type="text" class="form-control" value="" id="edit_lokasi_rumah" name="lokasi_rumah" required>
                        </div>
                        <div class="mb-3">
                            <label for="edit_tanggal_lamar" class="form-label">Tanggal Lamar</label>
                            <input type="date" class="form-control" value="" id="edit_tanggal_lamar" name="tanggal_lamar" required>
                        </div>
                        <div class="mb-3">
                            <label for="edit_catatan" class="form-label">Catatan</label>
                            <input type="text" class="form-control" value="" id="edit_catatan" name="catatan">
                        </div>
                        <div class="mb-3">
                            <label for="edit_surat_lamaran" class="form-label">Surat Lamaran</label>
                            <input type="text" class="form-control" value="" id="edit_surat_lamaran" name="surat_lamaran">
                        </div>
                        <div class="mb-3">
                            <label for="edit_status_lamar" class="form-label">Status Lamar</label>
                            <select class="form-control" id="edit_status_lamar" name="status_lamar" required>
                                <option value="Proses">Proses</option>
                                <option value="Diterima">Diterima</option>
                                <option value="Ditolak">Ditolak</option>
                            </select>
                        </div>
                        <div class="text-center">
                            <button type="submit" class="btn btn-success">Update</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script src="path/to/your/scripts.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="path/to/your/bootstrap.bundle.min.js"></script>
    
    <script>
        $(document).ready(function() {
            $('#editLamaranModal').on('show.bs.modal', function (event) {
                var button = $(event.relatedTarget); // Button that triggered the modal
                var id_lamar = button.data('id'); // Extract info from data-* attributes
                var nama = button.data('nama');
                var lowongan = button.data('lowongan');
                var no_hp = button.data('no_hp');
                var email = button.data('email');
                var lokasi = button.data('lokasi');
                var tanggal = button.data('tanggal');
                var catatan = button.data('catatan');
                var surat = button.data('surat');
                var status = button.data('status');

                // Update the modal's content
                var modal = $(this);
                modal.find('#id_lamar').val(id_lamar);
                modal.find('#edit_nama').val(nama);
                modal.find('#edit_lowongan').val(lowongan);
                modal.find('#edit_no_hp').val(no_hp);
                modal.find('#edit_email').val(email);
                modal.find('#edit_lokasi_rumah').val(lokasi);
                modal.find('#edit_tanggal_lamar').val(tanggal);
                modal.find('#edit_catatan').val(catatan);
                modal.find('#edit_surat_lamaran').val(surat);
                modal.find('#edit_status_lamar').val(status);
            });
        });
    </script>
</body>
</html>
