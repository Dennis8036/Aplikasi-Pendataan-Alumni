<?php

namespace App\Controllers;
use Codeigniter\Controller;
use App\Models\Gudang;
use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class Home extends BaseController
{
public function dashboard()
{
    if (session()->get('id_level') > 0) {
        $model = new Gudang();
        $db = \Config\Database::connect(); // Menghubungkan ke database

        // Mengambil jumlah alumni pria
        $builder = $db->table('tb_alumni');
        $builder->where('jenis_kelamin', 'Laki-laki');
        $data['totalAlumniPria'] = $builder->countAllResults();

        // Mengambil jumlah alumni perempuan
        $builder->where('jenis_kelamin', 'Perempuan');
        $data['totalAlumniPerempuan'] = $builder->countAllResults();

        // Mengambil jumlah loker
        $builder = $db->table('tb_lowongan');
        $data['totalLoker'] = $builder->countAllResults();

        // Jumlah alumni bekerja (contoh)
        $builder = $db->table('tb_alumni');
        $builder->where('status', 'Kerja'); // Pastikan kolom status sesuai dengan yang ada di tabel
        $data['totalAlumniBekerja'] = $builder->countAllResults();

        // Mengambil data lainnya
        $where = array('id_user' => session()->get('id_user'));
        $data['dennis'] = $model->getwhere('tb_user', $where);

        $where = array('id_setting' => 1);
        $data['setting'] = $model->getWhere('tb_setting', $where);

        $this->log_activity('User membuka Dashboard');
        echo view('header', $data);
        echo view('menu', $data);
        echo view('dashboard', $data); // Kirim data ke view
        echo view('footer');
    } else {
        return redirect()->to('Home/login');
    }
}



    public function alumni()
    {
       if (session()->get('id_level')>0){
        $model = new Gudang();
                  $where = array('id_user' => session()->get('id_user'));
         $data['dennis'] = $model->getwhere('tb_user', $where); 
        $where = array('id_setting' => 1);
        $data['setting'] = $model->getWhere('tb_setting',$where);
        $where=array('id_user'=>session()->get('id'));
        $this->log_activity('User membuka halaman alumni');
        $data['manda']=$model->tampil('tb_alumni');
        echo view('header',$data);
        echo view('menu',$data);
        echo view('alumni',$data);
        echo view('footer');
          }else{
        return redirect()->to('Home/login');
    }
}
public function filter_alumni()
{
    $status = $this->request->getPost('status');

    $model = new Gudang();
    $where = [];
    
    // Filter hanya jika status dipilih
    if ($status) {
        $where = array('status' => $status);
    }

    $data['manda'] = $model->getAlumni('tb_alumni', $where);

    // Load the table rows view
    echo view('alumni_table_rows', $data);
}
public function laporan()
{
    if (session()->get('id_level') > 0) {
        $model = new Gudang();
        $this->log_activity('User membuka view Laporan');
                  $where = array('id_user' => session()->get('id_user'));
         $data['dennis'] = $model->getwhere('tb_user', $where); 
        $where = array('id_setting' => 1);
        $data['setting'] = $model->getWhere('tb_setting', $where);
        $data['erwin'] = $model->getAll('tb_alumni'); // Pastikan ini sesuai dengan data yang Anda harapkan

        echo view('header', $data);
        echo view('menu', $data);
        echo view('laporan', $data);
        echo view('footer');
    } else {
        return redirect()->to('Home/login');
    }
}
public function profile()
    {
        if (session()->get('id_level') > 0) {
            $model = new GUdang();
            
            $this->log_activity('User masuk ke profile');
            $where = array('id_user' => session()->get('id_user'));
            $data['dennis'] = $model->getwhere('tb_user', $where);
            $where = array('id_setting' => 1);
        $data['setting'] = $model->getWhere('tb_setting',$where);

            echo view('header', $data);
            echo view('menu', $data);
            echo view('profile', $data);
            echo view('footer');
        } else {
            return redirect()->to('Home/login');
        }
    }
    public function deletefoto()
{
    $model = new Gudang(); // Pastikan model ini menangani tabel tb_user
    $this->log_activity('Menghapus Foto Profil');

    // Ambil ID user dari form
    $userId = $this->request->getPost('id');

    // Ambil data user dari database
    $userData = $model->getById($userId);

    // Pastikan userData valid
    if ($userData && $userData->foto_profile) {
        // Hapus file gambar dari file system
        $filePath = ROOTPATH . 'public/images/img/' . $userData->foto_profile;
        if (file_exists($filePath)) {
            unlink($filePath);
        }

        // Update database untuk menghapus nama file gambar
        $userDataUpdate = ['foto_profile' => null];
        $model->edit('tb_user', $userDataUpdate, ['id_user' => $userId]);
    }

    return redirect()->to(base_url('Home/profile'))->with('status', 'Foto profil berhasil dihapus');
}

public function editfoto()
{
    $model = new Gudang(); // Pastikan model ini menangani tabel tb_user
    $this->log_activity('Mengedit Foto');
    
    // Ambil user saat ini dari session
    $userId = session()->get('id_user');
    $userData = $model->getById($userId); // Pastikan ini mengambil data user dengan benar

    // Cek apakah file di-upload
    if ($file = $this->request->getFile('foto')) {
        if ($file->isValid() && !$file->hasMoved()) {
            // Generate nama file baru
            $newFileName = $file->getRandomName();
            $file->move(ROOTPATH . 'public/images/img/', $newFileName); // Simpan ke file system
            
            // Jika ada foto lama, hapus
            if ($userData->foto_profile && file_exists(ROOTPATH . 'public/images/img/' . $userData->foto_profile)) {
                unlink(ROOTPATH . 'public/images/img/' . $userData->foto_profile);
            }
            
            // Update database dengan nama file baru
            $userDataUpdate = ['foto_profile' => $newFileName];
            $model->edit('tb_user', $userDataUpdate, ['id_user' => $userId]);
        }
    }

    return redirect()->to(base_url('Home/profile'))->with('status', 'Foto berhasil diperbarui');
}



    public function aksi_e_profile()
    {
        if (session()->get('id_level') > 0) {
            $model = new Gudang();
            $this->log_activity('Mengedit Profile');
            $cek = $this->request->getPost('username');
            $cek1 = $this->request->getPost('email');
            $id = $this->request->getPost('id');

            $where = array('id_user' => $id); // Jika id_user adalah kunci utama untuk menentukan record


            $isi = array(
                'username' => $cek,
                'email' => $cek1,
            );

            $model->edit('tb_user', $isi, $where);
            return redirect()->to('Home/profile');
            // print_r($yoga);
            // print_r($id);
        } else {
            return redirect()->to('Home/login');
        }
    }
    public function changepassword()
    {
        if (session()->get('id_level') > 0) {

            $model = new Gudang();
            $this->log_activity('Mengubah Password');
    
            $where = array('id_user' => session()->get('id_user'));
            $data['dennis'] = $model->getwhere('tb_user', $where);
            helper('permission'); // Pastikan helper dimuat

            echo view('header', $data);
            echo view('changepassword', $data);
            echo view('footer');
        } else {
            return redirect()->to('Home/login');
        }
    }
    public function aksi_changepass()
    {
        $model = new Gudang();
        $oldPassword = $this->request->getPost('old');
        $newPassword = $this->request->getPost('new');
        $userId = session()->get('id_level');

        // Dapatkan password lama dari database
        $currentPassword = $model->getPassword($userId);

        // Verifikasi apakah password lama cocok
        if (md5($oldPassword) !== $currentPassword) {
            // Set pesan error jika password lama salah
            session()->setFlashdata('error', 'Password lama tidak valid.');
            return redirect()->back()->withInput();
        }

        // Update password baru
        $data = [
            'password' => md5($newPassword),
            'update_by' => $userId,
            'update_at' => date('Y-m-d H:i:s')
        ];
        $where = ['id_user' => $userId];

        $model->edit('tb_user', $data, $where);

        // Set pesan sukses
        session()->setFlashdata('success', 'Password berhasil diperbarui.');
        return redirect()->to('Home/changepassword');
    }
public function pdf()
{
//    if(session()->get('id_level')>0){
    $model = new Gudang();
$this->log_activity('User melakukan Print PDF Data Alumni');

        $where = array('id_setting' => 1);
        $data['setting'] = $model->getWhere('tb_setting', $where);
    $data['manda']=$model->tampil('tb_alumni');
    
    return view('pdf', $data);

//    }else{
//     return redirect()->to('Home/login');
//    } 
}
public function excel() {
    $spreadsheet = new Spreadsheet();
    $sheet = $spreadsheet->getActiveSheet();
    
    // Set header untuk kolom
    $sheet->setCellValue('A1', 'Nama Barang');
    $sheet->setCellValue('B1', 'Jenis Kelamin');
    $sheet->setCellValue('C1', 'NIS');
    $sheet->setCellValue('D1', 'Tahun Lulus');
    $sheet->setCellValue('E1', 'Jurusan');
    $sheet->setCellValue('F1', 'Tempat Kerja');
    $sheet->setCellValue('G1', 'Alamat Kerja');
    $sheet->setCellValue('H1', 'Tempat kuliah');
    $sheet->setCellValue('I1', 'Alamat kuliah');
    $sheet->setCellValue('J1', 'Status');


    // Mengatur lebar kolom
    $spreadsheet->getActiveSheet()->getColumnDimension('A')->setWidth(15);
    $spreadsheet->getActiveSheet()->getColumnDimension('B')->setWidth(15);
    $spreadsheet->getActiveSheet()->getColumnDimension('C')->setWidth(30);
    $spreadsheet->getActiveSheet()->getColumnDimension('D')->setWidth(20);
    $spreadsheet->getActiveSheet()->getColumnDimension('E')->setWidth(20);
    $spreadsheet->getActiveSheet()->getColumnDimension('F')->setWidth(20);
    $spreadsheet->getActiveSheet()->getColumnDimension('G')->setWidth(20);
    $spreadsheet->getActiveSheet()->getColumnDimension('H')->setWidth(20);
    $spreadsheet->getActiveSheet()->getColumnDimension('I')->setWidth(20);
    $spreadsheet->getActiveSheet()->getColumnDimension('J')->setWidth(20);




    // Membuat judul tebal
    $spreadsheet->getActiveSheet()->getStyle('A1:J1')->getFont()->setBold(true);

    // Ambil data dari tabel tb_lelang dengan JOIN ke tabel lainnya
    $query = $this->db->table('tb_alumni')
    ->select('tb_alumni.nama, tb_alumni.jenis_kelamin, tb_alumni.nis, tb_alumni.tahun_lulus, tb_alumni.jurusan, tb_alumni.tempat_kerja, tb_alumni.alamat_kerja, tb_alumni.tempat_kuliah', 'tb_alumni.alamat_kuliah', 'tb_alumni.status')
    ->get();
        
    $data = $query->getResultArray();

    // Mengisi data ke dalam sheet
    $rowIndex = 2; // Mulai dari baris 2
    foreach ($data as $row) {
        $sheet->setCellValue('A' . $rowIndex, $row['nama']);
        $sheet->setCellValue('B' . $rowIndex, $row['jenis_kelamin']);
        $sheet->setCellValue('C' . $rowIndex, $row['nis']);
        $sheet->setCellValue('D' . $rowIndex, $row['tahun_lulus']);
        $sheet->setCellValue('E' . $rowIndex, $row['jurusan']);
        $sheet->setCellValue('F' . $rowIndex, $row['tempat_kerja']);
        $sheet->setCellValue('G' . $rowIndex, $row['alamat_kerja']);
        $sheet->setCellValue('H' . $rowIndex, $row['tempat_kuliah']);
        $sheet->setCellValue('I' . $rowIndex, $row['alamat_kuliah']);
        $sheet->setCellValue('J' . $rowIndex, $row['status']);

    
        $rowIndex++;
    }

    // Menambahkan border
    $lastColumn = $sheet->getHighestColumn();
    $lastRow = $sheet->getHighestRow();
    $styleArray = [
        'borders' => [
            'allBorders' => [
                'borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
            ],
        ],
    ];
    $sheet->getStyle('A1:' . $lastColumn . $lastRow)->applyFromArray($styleArray);

    // Setelah mengisi data, simpan spreadsheet ke dalam file atau kirim ke browser
    $writer = new Xlsx($spreadsheet);
    $filename = 'Data Alumni.xlsx';
    header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
    header('Content-Disposition: attachment;filename="' . $filename . '"');
    header('Cache-Control: max-age=0');
    $writer->save('php://output');
}
public function aksi_edit_alumni()
{
    // Load model Gudang
    $model = new Gudang();
    
    // Log aktivitas pengguna jika diperlukan
    $this->log_activity('User melakukan Pengeditan Data Alumni');
    
    // Ambil data dari form yang dikirim melalui metode POST
    $id_alumni = $this->request->getPost('id_alumni');
    $nama = $this->request->getPost('nama');
    $jenis_kelamin = $this->request->getPost('jenis_kelamin');
    $nis = $this->request->getPost('nis');
    $tahun_lulus = $this->request->getPost('tahun_lulus');
    $jurusan = $this->request->getPost('jurusan');
    $tempat_kerja = $this->request->getPost('tempat_kerja');
    $alamat_kerja = $this->request->getPost('alamat_kerja');
    $tempat_kuliah = $this->request->getPost('tempat_kuliah');
    $alamat_kuliah = $this->request->getPost('alamat_kuliah');
    $status = $this->request->getPost('status');
    
    // Siapkan data yang akan diupdate
    $where = array('id_alumni' => $id_alumni);
    $data = array(
        'nama' => $nama,
        'jenis_kelamin' => $jenis_kelamin,
        'nis' => $nis,
        'tahun_lulus' => $tahun_lulus,
        'jurusan' => $jurusan,
        'tempat_kerja' => $tempat_kerja,
        'alamat_kerja' => $alamat_kerja,
        'tempat_kuliah' => $tempat_kuliah,
        'alamat_kuliah' => $alamat_kuliah,
        'status' => $status
    );

    // Update data alumni berdasarkan id_alumni
    $model->edit('tb_alumni', $data, $where);
    return redirect()->to('Home/alumni');
}




    public function lowongan()
    {
       if (session()->get('id_level')>0){
        $model = new Gudang();
                  $where = array('id_user' => session()->get('id_user'));
         $data['dennis'] = $model->getwhere('tb_user', $where); 
        $where = array('id_setting' => 1);
        $data['setting'] = $model->getWhere('tb_setting',$where);
        $where=array('id_user'=>session()->get('id'));
        $this->log_activity('User membuka halaman Lowongan kerja');
        $data['manda']=$model->tampil('tb_lowongan');
        echo view('header',$data);
        echo view('menu',$data);
        echo view('lowongan',$data);
        echo view('footer');
          }else{
        return redirect()->to('Home/login');
    }
}
    public function Lamaran()
    {
       if (session()->get('id_level')>0){
        $model = new Gudang();
                  $where = array('id_user' => session()->get('id_user'));
         $data['dennis'] = $model->getwhere('tb_user', $where); 
        $where = array('id_setting' => 1);
        $data['setting'] = $model->getWhere('tb_setting',$where);
        $where=array('id_user'=>session()->get('id'));
        $this->log_activity('User membuka halaman Lamaran');
        $data['lamaran']=$model->tampil('tb_lamaran');
        echo view('header',$data);
        echo view('menu',$data);
        echo view('lamaran',$data);
        echo view('footer');
          }else{
        return redirect()->to('Home/login');
    }
}
        public function t_lamaran()
    {
        if (session()->get('id_level')>0) {
        $model = new Gudang();
                  $where = array('id_user' => session()->get('id_user'));
         $data['dennis'] = $model->getwhere('tb_user', $where); 
        $where = array('id_setting' => 1);
        $data['setting'] = $model->getWhere('tb_setting',$where);
        $this->log_activity('User membuka Form Pendaftaran Lowongan Kerja');
       
        echo view ('header',$data);
        echo view('menu',$data);
        echo view('t_lamaran');
        echo view('footer');
    }else{
        return redirect()->to('Home/login');
    }
    }
public function aksi_t_lamaran()
{
    $model = new Gudang();
    $this->log_activity('User mendaftar lowongan kerja');
    
    // Mengambil data dari POST request
    $nama_siswa = $this->request->getPost('nama_siswa');
    $lowongan = $this->request->getPost('lowongan');
    $no_hp = $this->request->getPost('no_hp');
    $email = $this->request->getPost('email');
    $lokasi_rumah = $this->request->getPost('lokasi_rumah');
    $tanggal_lamar = date('Y-m-d'); // Tanggal hari ini
    $catatan = $this->request->getPost('catatan');
    $status_lamar = 'Proses'; // Set status otomatis menjadi "Proses"

    // Mengambil file surat lamaran
    $surat_lamaran = $this->request->getFile('surat_lamaran');
    
    // Menyiapkan data untuk disimpan
    $isi = array(
        'nama_siswa' => $nama_siswa,
        'lowongan' => $lowongan,
        'no_hp' => $no_hp,
        'email' => $email,
        'lokasi_rumah' => $lokasi_rumah,
        'tanggal_lamar' => $tanggal_lamar,
        'catatan' => $catatan,
        'status_lamar' => $status_lamar
    );

    // Menangani upload file jika ada
    if ($surat_lamaran && $surat_lamaran->isValid() && !$surat_lamaran->hasMoved()) {
        $surat_lamaran->move(WRITEPATH . 'uploads', $surat_lamaran->getName());
        $isi['surat_lamaran'] = $surat_lamaran->getName();
    }

    // Menambahkan data ke tabel
    $model->tambah('tb_lamaran', $isi);
    return redirect()->to('Home/lamaran');
}





public function aksi_e_lamaran()
{
    $model = new Gudang();
    $this->log_activity('User melakukan Pengeditan Data Lamaran');
    $id_lamar = $this->request->getPost('id_lamar');
    $nama_siswa = $this->request->getPost('nama_siswa');
    $lowongan = $this->request->getPost('lowongan');
    $no_hp = $this->request->getPost('no_hp');
    $email = $this->request->getPost('email');
    $lokasi_rumah = $this->request->getPost('lokasi_rumah');
    $tanggal_lamar = $this->request->getPost('tanggal_lamar');
    $catatan = $this->request->getPost('catatan');
    $surat_lamaran = $this->request->getPost('surat_lamaran');
    $status_lamar = $this->request->getPost('status_lamar');

    $where = array('id_lamar' => $id_lamar);
    $data = array(
        'nama_siswa' => $nama_siswa,
        'lowongan' => $lowongan,
        'no_hp' => $no_hp,
        'email' => $email,
        'lokasi_rumah' => $lokasi_rumah,
        'tanggal_lamar' => $tanggal_lamar,
        'catatan' => $catatan,
        'surat_lamaran' => $surat_lamaran,
        'status_lamar' => $status_lamar
    );

    $model->edit('tb_lamaran', $data, $where);
    return redirect()->to('Home/lamaran');
}

    public function user()
    {
        // if (session()->get('id_level')>0) {
            if(session()->get('id_level') == '1'){
        $model = new Gudang();
                  $where = array('id_user' => session()->get('id_user'));
         $data['dennis'] = $model->getwhere('tb_user', $where); 
        $where = array('id_setting' => 1);
        $data['setting'] = $model->getWhere('tb_setting',$where);
        $this->log_activity('User membuka view User');
       
        $where=array('id_user'=>session()->get('id_user'));
        $data['erwin']=$model->tampil('tb_user');
        echo view('header',$data);
        echo view('menu',$data);
        echo view('user',$data);
        echo view('footer');
    
        }else{
            return redirect()->to('Home/error404');
        }
    }
        public function error404()
    {
        if(session()->get('id_level')> '1'){
            $model=new Gudang;
                      $where = array('id_user' => session()->get('id_user'));
         $data['dennis'] = $model->getwhere('tb_user', $where); 
            $where = array('id_setting' => 1);
        $data['setting'] = $model->getWhere('tb_setting',$where);

        $this->log_activity('User mencoba Ke Halaman data user');
    
        echo view('header',$data);
        echo view('error404');
        echo view('footer');
    }else{
        return redirect()->to('Home/error404');
    }
    }
         public function t_lowongan()
    {
        if (session()->get('id_level')>0) {
        $model = new Gudang();
                  $where = array('id_user' => session()->get('id_user'));
         $data['dennis'] = $model->getwhere('tb_user', $where); 
        $where = array('id_setting' => 1);
        $data['setting'] = $model->getWhere('tb_setting',$where);
        $this->log_activity('User membuka Form Penambahan Data Lowongan Kerja');
       
        echo view ('header',$data);
        echo view('menu',$data);
        echo view('t_lowongan');
        echo view('footer');
    }else{
        return redirect()->to('Home/login');
    }
    }


    
    public function aksi_e_setting()
{
    $model = new Gudang();
    $a = $this->request->getPost('nama_web');
    $icon = $this->request->getFile('logo_tab');
    $dash = $this->request->getFile('logo_dashboard');
    $login = $this->request->getFile('logo_login');

    $this->log_activity('User melakukan Setting');

    // Debugging: Log received data
    log_message('debug', 'Website Name: ' . $a);
    log_message('debug', 'Tab Icon: ' . ($icon ? $icon->getName() : 'None'));
    log_message('debug', 'Dashboard Icon: ' . ($dash ? $dash->getName() : 'None'));
    log_message('debug', 'Login Icon: ' . ($login ? $login->getName() : 'None'));

    $data = ['nama_web' => $a];

    if ($icon && $icon->isValid() && !$icon->hasMoved()) {
        $icon->move(ROOTPATH . 'public/images/img/', $icon->getName());
        $data['logo_tab'] = $icon->getName();
    }

    if ($dash && $dash->isValid() && !$dash->hasMoved()) {
        $dash->move(ROOTPATH . 'public/images/img/', $dash->getName());
        $data['logo_dashboard'] = $dash->getName();
    }

    if ($login && $login->isValid() && !$login->hasMoved()) {
        $login->move(ROOTPATH . 'public/images/img/', $login->getName());
        $data['logo_login'] = $login->getName();
    }

    $where = ['id_setting' => 1];
    $model->edit('tb_setting', $data, $where);

    return redirect()->to('Home/setting');
}
        public function t_user()
    {
        if (session()->get('id_level')>0) {
        $model = new Gudang();
                  $where = array('id_user' => session()->get('id_user'));
         $data['dennis'] = $model->getwhere('tb_user', $where); 
        $where = array('id_setting' => 1);
        $data['setting'] = $model->getWhere('tb_setting',$where);
        $this->log_activity('User membuka Form Penambahan Data User');
       
        echo view ('header',$data);
        echo view('menu',$data);
        echo view('t_user');
        echo view('footer');
    }else{
        return redirect()->to('Home/login');
    }
    }
        public function aksi_t_user()
    {
        $model = new Gudang();
        $this->log_activity('User melakukan Penambahan Data User');
        $a = $this->request->getPost('username');
        $b = $this->request->getPost('password');
        $c = $this->request->getPost('email');
        $d = $this->request->getPost('level');
        
        $isi = array(

                    'username' => $a,
                    'password' =>md5 ($b),
                    'email' => $c,
                    'id_level' => $d
                    
        );
        
        $model->tambah('tb_user', $isi);
        return redirect()->to('Home/user');

    }
        public function t_alumni()
    {
        if (session()->get('id_level')>0) {
        $model = new Gudang();
                  $where = array('id_user' => session()->get('id_user'));
         $data['dennis'] = $model->getwhere('tb_user', $where); 
        $where = array('id_setting' => 1);
        $data['setting'] = $model->getWhere('tb_setting',$where);
        $this->log_activity('User membuka Form Penambahan Data alumni');
       
        echo view ('header',$data);
        echo view('menu',$data);
        echo view('t_alumni');
        echo view('footer');
    }else{
        return redirect()->to('Home/login');
    }
    }
public function aksi_t_alumni()
{
    $model = new Gudang();
    $this->log_activity('User melakukan Penambahan Data alumni');
    
    // Mengambil data dari POST request
    $a = $this->request->getPost('nama');
    $b = $this->request->getPost('jk');
    $c = $this->request->getPost('nis');
    $d = $this->request->getPost('thl');
    $e = $this->request->getPost('jr');
    $f = $this->request->getPost('tk');
    $g = $this->request->getPost('ak');
    $h = $this->request->getPost('kuliah');
    $i = $this->request->getPost('alamatk');
    $j = $this->request->getPost('status');

    // Menetapkan nilai default "-" jika data kosong
    $f = empty($f) ? 'N/A' : $f;
    $g = empty($g) ? 'N/A' : $g;
    $h = empty($h) ? 'N/A' : $h;
    $i = empty($i) ? 'N/A' : $i;

    $isi = array(
        'nama' => $a,
        'jenis_kelamin' => $b,
        'nis' => $c,
        'tahun_lulus' => $d,
        'jurusan' => $e,
        'tempat_kerja' => $f,
        'alamat_kerja' => $g,
        'tempat_kuliah' => $h,
        'alamat_kuliah' => $i,
        'status' => $j
    );
    
    // Menambahkan data ke tabel
    $model->tambah('tb_alumni', $isi);
    return redirect()->to('Home/alumni');
}

        public function aksi_e_user()
{
    $model = new Gudang();
    $this->log_activity('User melakukan Pengeditan Data User');
    $id_user = $this->request->getPost('id_user');
    $username = $this->request->getPost('username');
    $email = $this->request->getPost('email');
    $id_level = $this->request->getPost('id_level');

    $where = array('id_user' => $id_user);
    $data = array(
        'username' => $username,
        'email' => $email,
        'id_level' => $id_level
    );

    $model->edit('tb_user', $data, $where);
    return redirect()->to('Home/user');
}
public function aksi_e_lowongan()
{
    $model = new Gudang();
    $this->log_activity('User melakukan Pengeditan Data Lowongan Kerja');
    
    // Ambil data dari form
    $id_lowongan = $this->request->getPost('id_lowongan');
    $manager_bkk = $this->request->getPost('bkk');
    $perusahaan = $this->request->getPost('perusahaan');
    $lokasi = $this->request->getPost('lokasi');
    $posisi = $this->request->getPost('posisi');
    $tanggal_post = $this->request->getPost('tgl');
    $kontak = $this->request->getPost('kontak');
    $gaji = $this->request->getPost('gaji');
    $status = $this->request->getPost('status');

    // Proses upload file
    $file = $this->request->getFile('logo');
    $logoName = ''; // Default jika tidak ada file yang di-upload

    if ($file->isValid() && !$file->hasMoved()) {
        $logoName = $file->getRandomName();
        $file->move('images/img', $logoName); // Folder tempat menyimpan file
    }

    // Update data
    $data = array(
        'manager_bkk' => $manager_bkk,
        'perusahaan' => $perusahaan,
        'lokasi' => $lokasi,
        'posisi' => $posisi,
        'tanggal_post' => $tanggal_post,
        'kontak' => $kontak,
        'gaji' => $gaji,
        'status' => $status
    );

    if ($logoName) {
        $data['logo_pt'] = $logoName; // Simpan nama file jika ada
    }

    $where = array('id_lowongan' => $id_lowongan);
    $model->edit('tb_lowongan', $data, $where);
    
    return redirect()->to('Home/lowongan');
}

public function aksi_t_lowongan()
{
    $model = new Gudang();
    $this->log_activity('User melakukan Penambahan Data Lowongan Kerja');
    
    // Ambil data dari form
    $a = $this->request->getPost('bkk');
    $b = $this->request->getPost('pt');
    $c = $this->request->getPost('lokasi');
    $d = $this->request->getPost('posisi');
    $e = date('Y-m-d'); // Tanggal hari ini
    $f = $this->request->getPost('kontak');
    $g = $this->request->getPost('gaji');
    $h = $this->request->getPost('status');
    
    // Proses upload file
    $file = $this->request->getFile('logo');
    $logoName = $file->getRandomName();
    $file->move('images/img', $logoName); // Folder tempat menyimpan file
    
    $isi = array(
        'manager_bkk' => $a,
        'perusahaan' => $b,
        'lokasi' => $c,
        'posisi' => $d,
        'tanggal_post' => $e, // Tanggal hari ini
        'kontak' => $f,
        'gaji' => $g,
        'status' => $h,
        'logo_pt' => $logoName // Simpan nama file ke database
    );
    
    $model->tambah('tb_lowongan', $isi);
    return redirect()->to('Home/lowongan');
}

public function hapus_user($id){
    $model = new Gudang();
    $this->log_activity('User melakukan Penghapusan Data User');
    $where = array('id_user'=>$id);
    $model->hapus('tb_user',$where);
    
    return redirect()->to('Home/user');
}
public function hapus_lamaran($id){
    $model = new Gudang();
    $this->log_activity('User melakukan Penghapusan Data Lamaran');
    $where = array('id_lamar'=>$id);
    $model->hapus('tb_lamaran',$where);
    
    return redirect()->to('Home/lamaran');
}
    public function resetpassword($id){
        $model = new Gudang;
        $this->log_activity('User melakukan Reset Password');
        $where = array('id_user' =>$id );
        $table = 'tb_user'; // Nama tabel
        $kolom = 'id_user';
        $data = array(
           
            'password' => md5('123'),
        );
    
        $model->resetpassword($table, $kolom, $where, $data);
        return redirect()->to('Home/user');
    }
	public function login()
{
    $model = new Gudang;
    $where = array('id_setting' => 1);
    $data['setting'] = $model->getWhere('tb_setting',$where);
	echo view('header',$data);
	echo view('login');

}
public function aksilogin()
{
    $u = $this->request->getPost('username');
    $p = $this->request->getPost('password');
    $captchaAnswer = $this->request->getPost('captcha_answer');

    
    $model = new Gudang();
    $where = array(
        'username' => $u,
        'password' => md5($p)
    );

    $cek = $model->getWhere('tb_user', $where);

    // Offline CAPTCHA answer (should match the one generated in the view)
    if (!$this->isOnline() && !empty($captchaAnswer)) {
        $correctAnswer = $this->request->getPost('correct_captcha_answer');
        if ($captchaAnswer != $correctAnswer) {
            return redirect()->to('Home/login')->with('error', 'Incorrect offline CAPTCHA.');
        }
    }

    if ($cek > 0) {
        session()->set('id_user', $cek->id_user);
        session()->set('username', $cek->username);
        session()->set('email', $cek->email);
        session()->set('id_level', $cek->id_level);

        return redirect()->to('Home/dashboard');
    } else {
        return redirect()->to('Home/login')->with('error', 'Invalid username or password.');
    }
}

private function isOnline()
{
    return @fopen("http://www.google.com:80/", "r");
}
    public function register()
    {
        $model = new Gudang;
        $where = array('id_setting' => 1);
        $data['setting'] = $model->getWhere('tb_setting',$where);
       
        echo view ('header',$data);
        echo view ('register');
        
    }

    public function aksi_register()
    {
        $model = new Gudang();
        
        $a= $this->request->getPost('username');
        $b= $this->request->getPost('password');
        $c= $this->request->getPost('email');

        

        // $uploadedFile = $this->request->getFile('foto');
        // $foto = $uploadedFile->getName();

        $isi = array(
            
            'username' => $a,
            'password' => md5($b),
            'email' => $c,
            'id_level' => 4
                );

        $model->tambah('tb_user', $isi);
        

        return redirect()->to('Home/login');
        
    }

    public function setting()
    {
        if(session()->get('id_level') == '1'){
        $model=new Gudang;
                  $where = array('id_user' => session()->get('id_user'));
         $data['dennis'] = $model->getwhere('tb_user', $where); 
        $where = array('id_setting' => 1);
        $data['setting'] = $model->getWhere('tb_setting',$where);
        $this->log_activity('User membuka halaman Setting');
        echo view('header',$data);
        echo view('menu',$data);
        echo view('setting',$data);
        echo view('footer');
        // print_r($data);
    }else{
        return redirect()->to('home/error404');
    }
    }

public function logout()
{

 $this->log_activity('User melakukan logout');
session()->destroy();
return redirect()->to('Home/login');

}
    private function log_activity($activity)
    {
        $model = new Gudang();
        $data = [
            'id_user'    => session()->get('id_user'),
            'activity'   => $activity,
            'timestamp' => date('Y-m-d H:i:s'),
            'delete_at' => '0'
        ];

        $model->tambah('tb_activity', $data);
    }
        public function activity()
    {
        if (session()->get('id_level')>0) {
            $model = new Gudang();
                      $where = array('id_user' => session()->get('id_user'));
         $data['dennis'] = $model->getwhere('tb_user', $where); 
            $where = array('id_setting' => 1);
            $data['setting'] = $model->getWhere('tb_setting',$where);
            $where=array('id_user'=>session()->get('id_user'));
            $data['user']=$model->getWhere('tb_user', $where);
            
            $this->log_activity('User membuka Log Activity');
            $data['erwin'] = $model->join('tb_activity', 'tb_user',
            'tb_activity.id_user = tb_user.id_user',$where);

        echo view('header',$data);
        echo view('menu',$data);
        echo view('activity',$data);
        echo view('footer');
    
        }else{
            return redirect()->to('home/login');
        }
    }
    public function hapus_activity($id){
    $model = new Gudang();
    
    $where = array('id_activity'=>$id);
    $model->hapus('tb_activity',$where);
    $this->log_activity('User melakukan Penghapusan activity');
    
    return redirect()->to('Home/activity');
}
    public function hapus_alumni($id){
    $model = new Gudang();
    
    $where = array('id_alumni'=>$id);
    $model->hapus('tb_alumni',$where);
    $this->log_activity('User melakukan Penghapusan data alumni');
    
    return redirect()->to('Home/alumni');
}
public function hapus_lowongan($id){
    $model = new Gudang();
    
    $where = array('id_lowongan'=>$id);
    $model->hapus('tb_lowongan',$where);
    $this->log_activity('User melakukan Penghapusan Data lowongan kerja');
    
    return redirect()->to('Home/lowongan');
}
   public function clear_all_activities() {
    $model = new Gudang(); // Pastikan model sudah terdefinisi dengan benar
    
    // Panggil method untuk menghapus semua data dari tabel
    $model->clear_table('tb_activity');
    
    // Log aktivitas
    $this->log_activity('User melakukan Penghapusan seluruh data activity');
    
    // Redirect ke halaman activity setelah penghapusan
    return redirect()->to('Home/activity');
}
     
}