
    <div class="content-wrapper">
        <div class="row">
            <div class="col-md-12 grid-margin">
<!--                 <div class="d-flex justify-content-between align-items-center">
                    <h3 class="font-weight-bold">Dashboard</h3>
                </div> -->
            </div>
        </div>

        <div class="row">
            <!-- Total Alumni Pria -->
            <div class="col-md-3 grid-margin stretch-card">
                <div class="card card-statistics">
                    <div class="card-body">
                        <p class="card-title text-center">Total Alumni Pria</p>
                        <div class="d-flex justify-content-center align-items-center">
                            <h3 class="mb-0"><?= $totalAlumniPria ?></h3> <!-- Data dari controller -->
                            <i class="ti-user icon-lg text-muted ml-3"></i>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Total Alumni Perempuan -->
            <div class="col-md-3 grid-margin stretch-card">
                <div class="card card-statistics">
                    <div class="card-body">
                        <p class="card-title text-center">Total Alumni Perempuan</p>
                        <div class="d-flex justify-content-center align-items-center">
                            <h3 class="mb-0"><?= $totalAlumniPerempuan ?></h3> <!-- Data dari controller -->
                            <i class="ti-user icon-lg text-muted ml-3"></i>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Total Loker -->
            <div class="col-md-3 grid-margin stretch-card">
                <div class="card card-statistics">
                    <div class="card-body">
                        <p class="card-title text-center">Total Loker</p>
                        <div class="d-flex justify-content-center align-items-center">
                            <h3 class="mb-0"><?= $totalLoker ?></h3> <!-- Data dari controller -->
                            <i class="ti-briefcase icon-lg text-muted ml-3"></i>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Total Alumni Bekerja -->
             <div class="col-md-3 grid-margin stretch-card">
                <div class="card card-statistics">
                    <div class="card-body">
                        <p class="card-title text-center">Total Alumni Bekerja</p>
                        <div class="d-flex justify-content-center align-items-center">
                            <h3 class="mb-0"><?= $totalAlumniBekerja ?></h3> <!-- Data dari controller -->
                            <i class="ti-briefcase icon-lg text-muted ml-3"></i>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6 grid-margin stretch-card">
    <div class="card">
        <div class="card-body">
            <h4 class="card-title">Tren Alumni</h4>
            <canvas id="alumniTrendChart"></canvas>
        </div>
    </div>
</div>

<div class="col-md-6 grid-margin stretch-card">
    <div class="card">
        <div class="card-body">
            <h4 class="card-title">Aktivitas Terbaru</h4>
            <ul class="list-group">
                <!-- Contoh item aktivitas -->
                <li class="list-group-item">Lowongan pekerjaan baru untuk Software Engineer</li>
                <li class="list-group-item">Alumni X mendapatkan pekerjaan di Y</li>
            </ul>
        </div>
    </div>
</div>


        </div>
    </div>
</div>

<style>
    .card-statistics {
        border-radius: 12px;
        transition: all 0.3s ease;
    }

    .card-statistics:hover {
        transform: scale(1.05);
    }

    .card-title {
        font-size: 1.2rem;
        font-weight: bold;
    }

    .icon-lg {
        font-size: 2.5rem;
    }

    h3 {
        font-size: 2rem;
        font-weight: bold;
    }

    .content-wrapper {
        padding: 2rem;
    }

    @media (max-width: 768px) {
        .card-statistics {
            margin-bottom: 1.5rem;
        }

        h3 {
            font-size: 1.5rem;
        }

        .icon-lg {
            font-size: 2rem;
        }
    }
</style>
