<main role="main" class="main-content">
    <div class="container my-5">
        <div class="card shadow">
            <div class="card-body">
                <h5 class="card-title">Profile</h5>
                <div class="row mt-4">
                    <!-- Foto Profil -->
                    <div class="col-md-4 text-center mb-4">
                        <?php
                            $foto_profil = ($dennis->foto_profile) ? base_url('images/img/' . $dennis->foto_profile) : base_url('images/img/fotouser.jfif');
                        ?>
                        <img src="<?= $foto_profil ?>" class="rounded-circle mb-3" style="width: 150px; height: 150px;" alt="Foto Profile">
                        <form action="<?= base_url('home/editfoto') ?>" method="post" enctype="multipart/form-data">
                            <label for="foto" class="btn btn-primary">New Profile</label>
                            <input class="file-input" type="file" id="foto" name="foto" accept="image/*" style="display: none;">
                            <span id="file-name"></span>
                            <br>
                            <button id="saveButton" class="btn btn-primary mt-2" style="display: none;">Save</button>
                        </form>
                        <?php if (!empty($dennis->foto_profile)): ?>
        <form action="<?= base_url('Home/deletefoto') ?>" method="post" onsubmit="return confirm('Are you sure you want to delete your profile picture?');">
            <input type="hidden" name="id" value="<?= $dennis->id_user ?>">
            <button type="submit" class="btn btn-danger mt-2">Delete Profile</button>
        </form>
    <?php endif; ?>
                    </div>
                    <!-- Informasi Profile -->
                    <div class="col-md-8">
                        <form action="<?= base_url('home/aksi_e_profile') ?>" method="POST">
                            <input type="hidden" name="id" value="<?= $dennis->id_user ?>">
                            <div class="form-row">
                                <div class="form-group col-md-12">
                                    <label for="username">Username</label>
                                    <input type="text" id="username" class="form-control" name="username" value="<?= esc($dennis->username) ?>">
                                </div>
                                <div class="form-group col-md-12">
                                    <label for="email">Email</label>
                                    <input type="email" id="email" class="form-control" name="email" value="<?= esc($dennis->email) ?>">
                                </div>
<div class="form-group col-md-12">
    <label for="status">Status</label>
    <?php
        // Tentukan status berdasarkan id_level
        $status = 'Unknown'; // Default value
        if ($dennis->id_level == 1) {
            $status = 'Admin';
        } elseif ($dennis->id_level == 2) {
            $status = 'Kepala Sekolah';
        } elseif ($dennis->id_level == 3) {
            $status = 'BKK';
        } elseif ($dennis->id_level == 4) {
            $status = 'Alumni';
        }
    ?>
    <input type="text" id="status" class="form-control" value="<?= esc($status) ?>" readonly>
</div>

                                <div class="form-group col-md-12">
                                    <button type="submit" class="btn btn-primary">Save Changes</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

<script>
    document.getElementById('foto').onchange = function() {
        var fileName = this.value.split('\\').pop();
        document.getElementById('file-name').innerText = 'File: ' + fileName;
        document.getElementById('saveButton').style.display = 'inline-block';
    };
</script>
