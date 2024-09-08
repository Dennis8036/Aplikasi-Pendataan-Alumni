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
  <!--   <td><?= $erwin->status ?></td> -->
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
