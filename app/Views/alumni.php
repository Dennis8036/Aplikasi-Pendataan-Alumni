<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data Alumni</title>
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

        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title"></h4>
                                        <?php if(session()->get('id_level') == 4) { ?>
                    <a href="<?= base_url('Home/t_alumni') ?>">
                        <button class="btn btn-success">Daftar</button>
                    </a>
                <?php } ?>
                        <?php if(session()->get('id_level') == 1) { ?>
                            <div class="mb-3">
                                <label for="filter_status" class="form-label">Filter Status</label>
                                <select class="form-control" id="filter_status" name="filter_status">
                                    <option value="">Seluruh Status</option>
                                    <option value="Kuliah">Kuliah</option>
                                    <option value="Kerja">Kerja</option>
                                    <option value="Kerja dan kuliah">Kerja dan kuliah</option>
                                </select>
                            </div>
                        <?php } ?>

                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Nama Siswa</th>
                                        <th>Jenis Kelamin</th>
                                        <th>NIS</th>
                                        <th>Tahun lulus</th>
                                        <th>Jurusan</th>
                                        <th>Tempat kerja</th>
                                        <th>Alamat kerja</th>
                                        <th>Tempat kuliah</th>
                                        <th>Alamat kuliah</th>
                                       <!--  <th>Status</th> -->
                                        <?php if(session()->get('id_level') == 1) { ?>
                                        <th>Aksi</th>
                                        <?php } ?>
                                    </tr>
                                </thead>
                                <tbody id="alumni_table_body">
                                    <?php 
                                    $no = 1;
                                    foreach($manda as $erwin) {
                                    ?>
                                    <tr>
                                        <td><?= $no++ ?></td>
                                        <td><?= $erwin->nama ?></td>
                                        <td><?= $erwin->jenis_kelamin ?></td>
                                        <td><?= $erwin->nis ?></td>
                                        <td><?= $erwin->tahun_lulus ?></td>
                                        <td><?= $erwin->jurusan ?></td>
                                        <td><?= $erwin->tempat_kerja ?></td>
                                        <td><?= $erwin->alamat_kerja ?></td>
                                        <td><?= $erwin->tempat_kuliah ?></td>
                                        <td><?= $erwin->alamat_kuliah ?></td>
                                        <!-- <td><?= $erwin->status ?></td> -->
                                        <?php if(session()->get('id_level') == 1) { ?>
                                        <td>
                                            <button class="btn btn-primary" 
                data-toggle="modal" 
                data-target="#editAlumniModal" 
                data-id_alumni="<?= $erwin->id_alumni ?>"
                data-nama="<?= $erwin->nama ?>"
                data-jenis_kelamin="<?= $erwin->jenis_kelamin ?>"
                data-nis="<?= $erwin->nis ?>"
                data-tahun_lulus="<?= $erwin->tahun_lulus ?>"
                data-jurusan="<?= $erwin->jurusan ?>"
                data-tempat_kerja="<?= $erwin->tempat_kerja ?>"
                data-alamat_kerja="<?= $erwin->alamat_kerja ?>"
                data-tempat_kuliah="<?= $erwin->tempat_kuliah ?>"
                data-alamat_kuliah="<?= $erwin->alamat_kuliah ?>"
                data-status="<?= $erwin->status ?>"
        >Detail</button>
                                            <a href="<?= base_url('Home/hapus_alumni/'.$erwin->id_alumni) ?>" class="btn btn-danger">Hapus</a>
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

    </div>
    <!-- Content body end -->

    <script src="path/to/your/scripts.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="path/to/your/bootstrap.bundle.min.js"></script>

    <script>
      $(document).ready(function() {
    $('#filter_status').change(function() {
        var status = $(this).val();
        $.ajax({
            url: '<?= base_url('Home/filter_alumni') ?>',
            method: 'POST',
            data: { status: status },
            success: function(response) {
                $('#alumni_table_body').html(response);
            },
            error: function(xhr, status, error) {
                console.error("AJAX error: ", status, error);
            }
        });
    });
});
// 
    </script>

    <!-- Modal Edit Alumni -->
<div class="modal fade" id="editAlumniModal" tabindex="-1" aria-labelledby="editAlumniModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editAlumniModalLabel">Edit Data Alumni</h5>
                <button type="button" class="btn btn-close" data-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="editAlumniForm" action="<?= base_url('Home/aksi_edit_alumni') ?>" method="POST">
                    <input type="hidden" value="" id="id_alumni" name="id_alumni"> <!-- ID ini akan diisi oleh JavaScript -->
                    <div class="mb-3">
                        <label for="edit_nama" class="form-label">Nama Siswa</label>
                        <input type="text" class="form-control" value="" id="edit_nama" name="nama" required>
                    </div>
                    
                    <div class="mb-3">
                        <label for="edit_jenis_kelamin" class="form-label">Jenis kelamin</label>
                        <select class="form-control" id="edit_jenis_kelamin" name="jenis_kelamin" required>
                            <option value="">Pilih</option>
                            <option value="Laki-laki">Laki-laki</option>
                            <option value="Perempuan">Perempuan</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="edit_nis" class="form-label">NIS</label>
                        <input type="text" class="form-control" value="" id="edit_nis" name="nis" required>
                    </div>
                    <div class="mb-3">
                        <label for="edit_tahun_lulus" class="form-label">Tahun Lulus</label>
                        <input type="text" class="form-control" value="" id="edit_tahun_lulus" name="tahun_lulus" required>
                    </div>
                    <div class="mb-3">
                        <label for="edit_jurusan" class="form-label">Jurusan</label>
                        <input type="text" class="form-control" value="" id="edit_jurusan" name="jurusan" required>
                    </div>
                    <div class="mb-3">
                        <label for="edit_tempat_kerja" class="form-label">Tempat Kerja</label>
                        <input type="text" class="form-control" value="" id="edit_tempat_kerja" name="tempat_kerja">
                    </div>
                    <div class="mb-3">
                        <label for="edit_alamat_kerja" class="form-label">Alamat Kerja</label>
                        <input type="text" class="form-control" value="" id="edit_alamat_kerja" name="alamat_kerja">
                    </div>
                    <div class="mb-3">
                        <label for="edit_tempat_kuliah" class="form-label">Tempat Kuliah</label>
                        <input type="text" class="form-control" value="" id="edit_tempat_kuliah" name="tempat_kuliah">
                    </div>
                    <div class="mb-3">
                        <label for="edit_alamat_kuliah" class="form-label">Alamat Kuliah</label>
                        <input type="text" class="form-control" value="" id="edit_alamat_kuliah" name="alamat_kuliah">
                    </div>
                    <div class="mb-3">
                        <label for="edit_status" class="form-label">Status</label>
                        <select class="form-control" id="edit_status" name="status" required>
                            <option value="">Pilih</option>
                            <option value="Kuliah">Kuliah</option>
                            <option value="Kerja">Kerja</option>
                            <option value="Kerja dan kuliah">Kerja dan kuliah</option>
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

<script>
$(document).ready(function() {
    $('#editAlumniModal').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget); // Button that triggered the modal
        var id_alumni = button.data('id_alumni'); // Extract info from data-* attributes
        var nama = button.data('nama');
        var jenis_kelamin = button.data('jenis_kelamin');
        var nis = button.data('nis');
        var tahun_lulus = button.data('tahun_lulus');
        var jurusan = button.data('jurusan');
        var tempat_kerja = button.data('tempat_kerja');
        var alamat_kerja = button.data('alamat_kerja');
        var tempat_kuliah = button.data('tempat_kuliah');
        var alamat_kuliah = button.data('alamat_kuliah');
        var status = button.data('status');

        // Update the modal's content
        var modal = $(this);
        modal.find('#id_alumni').val(id_alumni);
        modal.find('#edit_nama').val(nama);
        modal.find('#edit_jenis_kelamin').val(jenis_kelamin);
        modal.find('#edit_nis').val(nis);
        modal.find('#edit_tahun_lulus').val(tahun_lulus);
        modal.find('#edit_jurusan').val(jurusan);
        modal.find('#edit_tempat_kerja').val(tempat_kerja);
        modal.find('#edit_alamat_kerja').val(alamat_kerja);
        modal.find('#edit_tempat_kuliah').val(tempat_kuliah);
        modal.find('#edit_alamat_kuliah').val(alamat_kuliah);
        modal.find('#edit_status').val(status);
    });
});
</script>


</body>
</html>
