<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Lamaran</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 20px;
        }
        .card {
            border: none;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            background: #ffffff;
        }
        .card-header {
            background-color: #ffffff;
            color: #000000;
            padding: 15px;
            border-bottom: 1px solid #e9ecef;
            font-size: 1.25rem;
            font-weight: 600;
        }
        .form-control, .form-select {
            border-radius: 0.5rem;
            box-shadow: none;
            border: 1px solid #ced4da;
        }
        .btn-primary {
            background-color: #007bff;
            border: none;
            border-radius: 0.5rem;
            padding: 10px 20px;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
        .form-group {
            margin-bottom: 1rem;
        }
        .form-group label {
            font-weight: bold;
        }
        .form-group input, .form-group select {
            width: 100%;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title mb-0">Form Lamaran</h4>
                    </div>
                    <div class="card-body">
                        <form id="lamaranForm" action="<?= base_url('Home/aksi_t_lamaran')?>" method="POST" enctype="multipart/form-data">
                            <!-- Nama Siswa -->
                            <div class="form-group mb-3">
                                <label for="nama_siswa">Nama Siswa</label>
                                <input type="text" id="nama_siswa" placeholder="Nama Siswa" class="form-control" name="nama_siswa" required>
                            </div>

                            <!-- Lowongan -->
                            <div class="form-group mb-3">
                                <label for="lowongan">Pekerjaan</label>
                                <input type="text" id="lowongan" placeholder="Pekerjaan" class="form-control" name="lowongan" required>
                            </div>

                            <!-- No HP -->
                            <div class="form-group mb-3">
                                <label for="no_hp">No HP</label>
                                <input type="text" id="no_hp" placeholder="No HP" class="form-control" name="no_hp" required>
                            </div>

                            <!-- Email -->
                            <div class="form-group mb-3">
                                <label for="email">Email</label>
                                <input type="email" id="email" placeholder="Email" class="form-control" name="email" required>
                            </div>

                            <!-- Lokasi Rumah -->
                            <div class="form-group mb-3">
                                <label for="lokasi_rumah">Lokasi Rumah</label>
                                <input type="text" id="lokasi_rumah" placeholder="Lokasi Rumah" class="form-control" name="lokasi_rumah" required>
                            </div>

                            <!-- Tanggal Lamar -->
                            <div class="form-group mb-3">
                                <label for="tanggal_lamar">Tanggal Lamar</label>
                                <input type="text" class="form-control" name="tanggal_lamar" value="<?= date('Y-m-d') ?>" readonly>
                            </div>

                            <!-- Catatan -->
                            <div class="form-group mb-3">
                                <label for="catatan">Catatan</label>
                                <textarea id="catatan" placeholder="Catatan" class="form-control" name="catatan"></textarea>
                            </div>

                            <!-- Surat Lamaran -->
                            <div class="form-group mb-3">
                                <label for="surat_lamaran">Surat Lamaran</label>
                                <input type="file" id="surat_lamaran" class="form-control" name="surat_lamaran" accept=".pdf">
                            </div>

                            <!-- Status Lamar -->
<!-- Status Lamar -->
<!-- Status Lamar (hidden) -->
<input type="hidden" name="status_lamar" value="Proses">



                            <!-- Submit Button -->
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="confirmationModal" tabindex="-1" aria-labelledby="confirmationModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="confirmationModalLabel">Konfirmasi</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    Lamaran Anda Telah Dikirim
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" id="modalCloseButton">Tutup</button>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>

    <script>
        $(document).ready(function () {
            $('#lamaranForm').on('submit', function (e) {
                e.preventDefault(); // Mencegah form submit default
                var formData = new FormData(this);

                $.ajax({
                    url: $(this).attr('action'),
                    type: 'POST',
                    data: formData,
                    contentType: false,
                    processData: false,
                    success: function (response) {
                        $('#confirmationModal').modal('show');
                    },
                    error: function () {
                        alert('Terjadi kesalahan, coba lagi.');
                    }
                });
            });

            $('#confirmationModal').on('hidden.bs.modal', function () {
                window.location.href = '<?= base_url('Home/lowongan') ?>';
            });
        });
    </script>
</body>
</html>
