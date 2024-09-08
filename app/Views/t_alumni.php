<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Alumni</title>
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
            color: #000000; /* Warna teks hitam */
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
        <!-- row -->
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title mb-0">Form Pendaftaran Alumni</h4>
                    </div>
                    <div class="card-body">
                        <form action="<?= base_url('Home/aksi_t_alumni')?>" method="POST">
                            <!-- Status Hidden Input -->
                            <input type="hidden" id="status_input" name="status">

                            <!-- Filter Status -->
<!-- Filter Status -->
<div class="form-group mb-3">
    <label for="filter_status">Filter Status</label >
    <select class="form-control" id="filter_status" name="filter_status" onchange="filterStatusChange()" >
        <option value="Kerja dan kuliah">Kerja dan kuliah</option>
        <option value="Kerja">Kerja</option>
        <option value="Kuliah">Kuliah</option>
    </select>
</div>

<!-- Nama -->
<div class="form-group mb-3">
    <label for="nama">Nama</label>
    <input type="text" id="nama" placeholder="Nama" class="form-control" name='nama'>
</div>

<!-- Jenis Kelamin -->
<div class="form-group mb-3">
    <label for="jenis_kelamin">Jenis Kelamin</label>
    <select id="jenis_kelamin" class="form-control" name="jk">
        <option value="">Pilih</option>
        <option value="Laki-laki">Laki-laki</option>
        <option value="Perempuan">Perempuan</option>
    </select>
</div>

                            <!-- NIS -->
                            <div class="form-group mb-3">
                                <label for="nis">NIS</label>
                                <input type="text" id="nis" placeholder="NIS" class="form-control" name='nis' required>
                            </div>

                            <!-- Tahun Lulus -->
                            <div class="form-group mb-3">
                                <label for="tahun_lulus">Tahun Lulus</label>
                                <input type="text" id="tahun_lulus" placeholder="Tahun lulus" class="form-control" name='thl'>
                            </div>

                            <!-- Jurusan -->
                            <div class="form-group mb-3">
                                <label for="jurusan">Jurusan</label>
                                <input type="text" id="jurusan" placeholder="Jurusan" class="form-control" name='jr'>
                            </div>

                            <!-- Tempat Kerja -->
                            <div class="form-group mb-3" id="tempatKerja">
                                <label for="tempat_kerja">Tempat Kerja</label>
                                <input type="text" id="tempat_kerja" placeholder="Tempat kerja" class="form-control" name='tk'>
                            </div>

                            <!-- Alamat Kerja -->
                            <div class="form-group mb-3" id="alamatKerja">
                                <label for="alamat_kerja">Alamat Kerja</label>
                                <input type="text" id="alamat_kerja" placeholder="Alamat kerja" class="form-control" name='ak'>
                            </div>

                            <!-- Tempat Kuliah -->
                            <div class="form-group mb-3" id="tempatKuliah">
                                <label for="tempat_kuliah">Tempat Kuliah</label>
                                <input type="text" id="tempat_kuliah" placeholder="Tempat kuliah" class="form-control" name='kuliah'>
                            </div>

                            <!-- Alamat Kuliah -->
                            <div class="form-group mb-3" id="alamatKuliah">
                                <label for="alamat_kuliah">Alamat Kuliah</label>
                                <input type="text" id="alamat_kuliah" placeholder="Alamat kuliah" class="form-control" name='alamatk'>
                            </div>

                            <!-- Submit Button -->
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
    <script>
        function filterStatusChange() {
            const status = document.getElementById("filter_status").value;
            const statusInput = document.getElementById("status_input");
            const tempatKerja = document.getElementById("tempatKerja");
            const alamatKerja = document.getElementById("alamatKerja");
            const tempatKuliah = document.getElementById("tempatKuliah");
            const alamatKuliah = document.getElementById("alamatKuliah");

            // Set hidden status input value
            statusInput.value = status;

            // Adjust visibility of form fields
            if (status === "Kerja") {
                tempatKerja.style.display = "block";
                alamatKerja.style.display = "block";
                tempatKuliah.style.display = "none";
                alamatKuliah.style.display = "none";
            } else if (status === "Kuliah") {
                tempatKerja.style.display = "none";
                alamatKerja.style.display = "none";
                tempatKuliah.style.display = "block";
                alamatKuliah.style.display = "block";
            } else if (status === "Kerja dan kuliah") {
                tempatKerja.style.display = "block";
                alamatKerja.style.display = "block";
                tempatKuliah.style.display = "block";
                alamatKuliah.style.display = "block";
            } else {
                tempatKerja.style.display = "block";
                alamatKerja.style.display = "block";
                tempatKuliah.style.display = "block";
                alamatKuliah.style.display = "block";
            }
        }
    </script>
</body>
</html>
