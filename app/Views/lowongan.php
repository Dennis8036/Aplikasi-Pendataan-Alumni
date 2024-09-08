<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lowongan Kerja</title>
    <link rel="stylesheet" href="path/to/your/styles.css"> <!-- Replace with your actual CSS path -->
    <style>
        .job-card {
            border: 2px solid #007bff;
            border-radius: 8px;
            padding: 16px;
            margin-bottom: 20px;
            width: 100%;
            font-family: Arial, sans-serif;
            color: #333;
            background-color: #fff; /* Add background color white */
        }

        .job-card-header {
            display: flex;
            align-items: center;
            margin-bottom: 16px;
        }

        .company-logo {
            width: 50px;
            height: 50px;
            margin-right: 12px;
        }

        .job-title {
            font-size: 18px;
            color: #800080;
            margin: 0;
        }

        .company-name {
            font-size: 16px;
            color: #333;
            margin: 0;
        }

        .job-card-body p, .job-card-body ul {
            margin: 4px 0;
            font-size: 14px;
        }

        .job-location, .job-salary, .job-category {
            font-weight: bold;
        }

        .job-requirements {
            margin: 8px 0;
            padding-left: 16px;
        }

        .job-posted {
            font-size: 12px;
            color: #666;
        }

        .btn-action {
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <!-- Sidebar start -->
    <!-- Your sidebar code here -->
    <!-- Sidebar end -->

    <!-- Content body start -->
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h4 class="card-title"></h4>
                <?php if(session()->get('id_level') == 1 || session()->get('id_level') == 3) { ?>
                    <a href="<?= base_url('Home/t_lowongan') ?>">
                        <button class="btn btn-success">Tambah Loker</button>
                    </a>
                <?php } ?>
            </div>
        </div>

        <div class="row mt-4">
            <?php 
            $no = 1;
            foreach($manda as $erwin) {
            ?>
<div class="col-md-4">
    <div class="job-card">
        <div class="job-card-header">
            <img src="<?= base_url('images/img/'.$erwin->logo_pt) ?>" alt="Company Logo" class="company-logo">
            <div>
                <h2 class="job-title"><?= $erwin->posisi ?></h2>
                <br>
                <h3 class="company-name"><?= $erwin->perusahaan ?></h3>
            </div>
        </div>
                    <div class="job-card-body">
                        <p class="job-lokasi"><?= $erwin->lokasi ?></p>
                        <!-- Uncomment the next line if you have salary data -->
                        <p class="job-gaji">Gaji: <?= $erwin->gaji ?></p>
                        <p class="job-category">Kategori Pekerjaan: <?= $erwin->posisi ?></p>
                        <p class="job-posted">Diposting: <?= $erwin->tanggal_post ?></p>
                         
                        <p class="job-status">
    Status: 
    <?php if ($erwin->status == 'Aktif'): ?>
        <span class="badge badge-success"><?= $erwin->status ?></span>
    <?php else: ?>
        <span class="badge badge-danger"><?= $erwin->status ?></span>
    <?php endif; ?>
</p>
<p class="job-posted"> <span class="relative-date" data-date="<?= $erwin->tanggal_post ?>"></span></p>
                    </div>
                    <div class="btn-action">
                        <?php if(session()->get('id_level') == 4) { ?>
                            <div class="d-flex justify-content-center">
    <a href="<?= base_url('Home/t_lamaran') ?>" class="btn btn-primary">Lamar</a>
</div>
                        <?php } ?>
                        <?php if(session()->get('id_level') == 1 || session()->get('id_level') == 3) { ?>
                            <button class="btn btn-primary" 
                                    data-toggle="modal" 
                                    data-target="#editUserModal" 
                                    data-id_lowongan="<?= $erwin->id_lowongan ?>"
                                    data-manager_bkk="<?= $erwin->manager_bkk ?>"
                                    data-perusahaan="<?= $erwin->perusahaan ?>"
                                    data-lokasi="<?= $erwin->lokasi ?>"
                                    data-posisi="<?= $erwin->posisi ?>"
                                    data-tanggal_post="<?= $erwin->tanggal_post ?>"
                                    data-kontak="<?= $erwin->kontak ?>"
                                    data-gaji="<?= $erwin->gaji ?>"
                                    data-status="<?= $erwin->status ?>">Edit</button>
                            <a href="<?= base_url('Home/hapus_lowongan/'.$erwin->id_lowongan) ?>" class="btn btn-danger">Hapus</a>
                        <?php } ?>
                    </div>
                </div>
            </div>
            <?php } ?>
        </div>
    </div>

    <!-- Edit User Modal -->
    <!-- Modal code remains the same as you provided -->
    <div class="modal fade" id="editUserModal" tabindex="-1" aria-labelledby="editUserModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="editUserModalLabel">Edit Data Lowongan Kerja</h5>
                    <button type="button" class="btn btn-close" data-dismiss="modal" aria-label="Close">
                        <i class="fas fa-times"></i>
                    </button>
                </div>
                <div class="modal-body">
                    <form id="editUserForm" action="<?= base_url('Home/aksi_e_lowongan') ?>" method="POST" enctype="multipart/form-data">

                        <input type="hidden" value="" id="id_lowongan" name="id_lowongan">
                        <div class="mb-3">
                            <label for="edit_manager_bkk" class="form-label">Manager BKK</label>
                            <input type="text" class="form-control" value="" id="edit_manager_bkk" name="bkk" required>
                        </div>
                        <div class="mb-3">
                            <label for="edit_perusahaan" class="form-label">Perusahaan</label>
                            <input type="text" class="form-control" value="" id="edit_perusahaan" name="perusahaan" required>
                        </div>
                                                <div class="mb-3">
                            <label for="edit_lokasi" class="form-label">Lokasi</label>
                            <input type="text" class="form-control" value="" id="edit_lokasi" name="lokasi" required>
                        </div>
                        <div class="mb-3">
                            <label for="edit_posisi" class="form-label">Posisi</label>
                            <input type="text" class="form-control" value="" id="edit_posisi" name="posisi" required>
                        </div>
                        <div class="mb-3">
                            <label for="edit_tanggal_post" class="form-label">Tanggal Post</label>
                            <input type="date" class="form-control" value="" id="edit_tanggal_post" name="tgl" required>
                        </div>
                        <div class="mb-3">
                            <label for="edit_kontak" class="form-label">Kontak</label>
                            <input type="text" class="form-control" value="" id="edit_kontak" name="kontak" required>
                        </div>
                         <div class="mb-3">
                            <label for="edit_gaji" class="form-label">Gaji</label>
                            <input type="text" class="form-control" value="" id="edit_gaji" name="gaji" required>
                        </div>

                        <div class="mb-3">
                            <label for="edit_status" class="form-label">Status</label>
                            <select class="form-control" id="edit_status" name="status" required>
                                <option value="">Pilih</option>
                                <option value="Aktif">Aktif</option>
                                <option value="Tutup">Tutup</option>
                            </select>
                        </div>
                    <div class="mb-3">
                        <label for="edit_logo" class="form-label">Logo Perusahaan</label>
                        <input type="file" class="form-control" id="edit_logo" name="logo">
                    </div>
                        <div class="text-center">
                            <button type="submit" class="btn btn-success">Update</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="path/to/your/bootstrap.bundle.min.js"></script>
    
    <script>
         document.addEventListener('DOMContentLoaded', function() {
        const calculateRelativeDate = (dateString) => {
            const postDate = new Date(dateString);
            const now = new Date();
            const diffTime = now - postDate;
            const diffDays = Math.floor(diffTime / (1000 * 60 * 60 * 24));
            
            if (diffDays === 0) return 'Hari ini';
            if (diffDays === 1) return '1 Hari yang lalu';
            if (diffDays < 30) return `${diffDays} Hari yang lalu`;
            // if (diffDays < 30) return `${Math.floor(diffDays / 7)} Minggu yang lalu`;
            if (diffDays < 365) return `${Math.floor(diffDays / 30)} Bulan yang lalu`;
            return `${Math.floor(diffDays / 365)} Tahun yang lalu`;
        };

        document.querySelectorAll('.relative-date').forEach(span => {
            const date = span.getAttribute('data-date');
            span.textContent = calculateRelativeDate(date);
        });
    });
        $(document).ready(function() {
            $('#editUserModal').on('show.bs.modal', function (event) {
                var button = $(event.relatedTarget); 
                var id_lowongan = button.data('id_lowongan'); 
                var manager_bkk = button.data('manager_bkk');
                var perusahaan = button.data('perusahaan');
                var lokasi = button.data('lokasi');
                var posisi = button.data('posisi');
                var tanggal_post = button.data('tanggal_post');
                var kontak = button.data('kontak');
                var gaji = button.data('gaji');
                var status = button.data('status');

                var modal = $(this);
                modal.find('#id_lowongan').val(id_lowongan);
                modal.find('#edit_manager_bkk').val(manager_bkk);
                modal.find('#edit_perusahaan').val(perusahaan);
                modal.find('#edit_lokasi').val(lokasi);
                modal.find('#edit_posisi').val(posisi);
                modal.find('#edit_tanggal_post').val(tanggal_post);
                modal.find('#edit_kontak').val(kontak);
                modal.find('#edit_gaji').val(gaji);
                modal.find('#edit_status').val(status);
            });
        });
    </script>
</body>
</html>
 