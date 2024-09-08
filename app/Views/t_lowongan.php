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

                           
                                <table class="table">
                                <!-- General Form Elements -->
                                <form action="<?= base_url('Home/aksi_t_lowongan') ?>" method="POST" enctype="multipart/form-data">


                                    <div class="form-group row">
                                        <label for="inputText" class="col-sm-2 col-form-label">Manager BKK</label>
                                        <div class="col-sm-10">
                                            <input type="text" placeholder="Nama Manager BKK" class="form-control" name='bkk' required>
                                        </div>
                                     </div>

                                      <div class="form-group row">
                                        <label for="inputText" class="col-sm-2 col-form-label">Perusahaan</label>
                                        <div class="col-sm-10">
                                            <input type="text" placeholder="Nama Perusahaan" class="form-control" name='pt'required>
                                        </div>
                                    </div>
                                    
                                                                          <div class="form-group row">
                                        <label for="inputText" class="col-sm-2 col-form-label">Lokasi</label>
                                        <div class="col-sm-10">
                                            <input type="text" placeholder="Lokasi" class="form-control" name='lokasi'required>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label for="inputText" class="col-sm-2 col-form-label">Posisi</label>
                                        <div class="col-sm-10">
                                            <input type="text" placeholder="Posisi Pekerjaan" class="form-control" name='posisi'required>
                                        </div>
                                    </div>

<div class="form-group row">
    <label for="inputText" class="col-sm-2 col-form-label">Tanggal Post</label>
    <div class="col-sm-10">
        <input type="text" class="form-control" name='tp' value="<?= date('Y-m-d') ?>" readonly>
    </div>
</div>

                                    
                                                                        <div class="form-group row">
                                        <label for="inputText" class="col-sm-2 col-form-label">Kontak</label>
                                        <div class="col-sm-10">
                                            <input type="text" placeholder="Kontak" class="form-control" name='kontak'required>
                                        </div>
                                    </div>

                                                                        <div class="form-group row">
                                        <label for="inputText" class="col-sm-2 col-form-label">Gaji</label>
                                        <div class="col-sm-10">
                                            <input type="text" placeholder="Gaji Contoh : RP 1.000.000 - 2.000.000" class="form-control" name='gaji'required>
                                        </div>
                                    </div>




                                    <div class="form-group row">
                                        <label for="inputText" class="col-sm-2 col-form-label">Status</label>
                                        <div class="col-sm-10">
                                             <select  type="select" class="form-control" name="status" required>
               <option>Pilih</option>
               <option value="1">Aktif</option>
               <option value="2">Tutup</option>
             </select>
                                        </div>
                                    </div>
                                                                       <div class="form-group row">
                                       <label for="inputFile" class="col-sm-2 col-form-label">Logo Perusahaan</label>
                                       <div class="col-sm-10">
                                           <input type="file" class="form-control" name="logo" id="inputFile" required>
                                       </div>
                                   </div>
                                    
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </form>
                            </table>
                        </div>
                    </div>
                                <!-- End General Form Elements -->