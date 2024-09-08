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
            min-width: 900px; /* Ensure table is wide enough */
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



                    <a href="<?= base_url('Home/') ?>">
                        <button class="btn btn-success">Print</button>
                    </a>

                    <a href="<?= base_url('Home/pdf') ?>">
                        <button class="btn btn-danger">PDF</button>
                    </a>

                    <a href="<?= base_url('Home/excel') ?>">
                        <button class="btn btn-primary">Excel</button>
                    </a>
                                <form action="<?= base_url('Home/laporan')?>" method="POST">

                                    <?php if (isset($erwin) && !empty($erwin)): ?>
                    

                               

</div>

                                    <table class="table table-striped table-bordered">
                                        <thead>
                                            <tr>
                                                <br>
                                                <th scope="col" width="3%">No</th>
                                                <th scope="col" width="7%">Nama Siswa</th>
                                                <th scope="col" width="8%">Jenis Kelamin</th>
                                                <th scope="col" width="10%">NIS</th>
                                                <th scope="col" width="5%">Tahun lulus</th>
                                                <th scope="col" width="10%">Jurusan</th>
                                                <th scope="col" width="17%">Tempat kerja</th>
                                                <th scope="col" width="17%">Alamat kerja</th>
                                                <th scope="col" width="8%">Tempat kuliah</th>
                                                <th scope="col" width="7%">Alamat kuliah</th>
                                                <th scope="col" width="10%">Status</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                            $no = 1;
                                            $total_harga = 0;
                                            foreach ($erwin as $wkwk) {
                                                $total_harga += $wkwk->harga;
                                                ?>
                                                <tr>
                                                    <td width="3%" align="center"><?= $no++ ?></td>
                                                    <td width="7%"><?= $wkwk->nama ?></td>
                                                    <td width="8%"><?= $wkwk->jenis_kelamin ?></td>
                                                    <td width="10%"><?= $wkwk->nis ?></td>
                                                    <td width="5%"><?= $wkwk->tahun_lulus ?></td>
                                                    <td width="10%"><?= $wkwk->jurusan ?></td>
                                                    <td width="17%"><?= $wkwk->tempat_kerja ?></td>
                                                    <td width="17%"><?= $wkwk->alamat_kerja ?></td>
                                                    <td width="8%"><?= $wkwk->tempat_kuliah ?></td>
                                                    <td width="7%"><?= $wkwk->alamat_kuliah ?></td>
                                                    <td width="7%"><?= $wkwk->status ?></td>
                                                </tr>
                                                <?php
                                            }
                                            ?>
                                        </tbody>

                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endif; ?>
            </div> <!-- End of Container -->
        </div> <!-- End of Container -->
    </section>
</main>