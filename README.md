Aplikasi Database Mahasiswa Menggunakan Framework CodeIgniter dan Grocery Crud
===============================================================================

Aplikasi ini dibuat untuk keperluan sistem informasi data mahasiswa, dengan detail sbb:
- Dibuat menggunakan PHP
- Menggunakan DBMS MySQL
- Data Tabel : tbl_mhs, tbl_kelas, tbl_dosen, tbl_jurusan, tbl_fakultas, tbl_users
- Data Relasi Tabel : disertakan screen capture dari skema tabel relasi

Syarat :
- Install aplikasi XAMPP (atau bisa menggunakan web server lain)
- Aktifkan mod_rewrite apache dan mysql.so di php
- Minimum menggunakan php versi 5.4

Catatan :
Program ini dibuat dengan PHP Framework CodeIgniter, tujuannya agar lebih terstruktur dan memiliki standar pengkodean.
Sehingga akan memudahkan dalam pengembangan program untuk dimasa yang akan datang. Disamping itu, program akan lebih stabil
dan meminimalisir error/bug dari program.

Petunjuk Installasi Program:
============================
- Copy folder app_data_mahasiswa dan Paste ke direktori 'htdocs' atau 'www'
- buat database di phpmyadmin dengan nama database : 'db_mahasiswa'
- import database dari folder 'file sql' dan cari file dengan nama 'db_mahasiswa.sql'
- untuk memastikan database telah sukses di import, cek di phpmyadmin, kemudian buka database dengan nama db_mahasiswa.
  pastikan terdapat 7 tabel pada database, yaitu: tbl_mhs, tbl_kelas, tbl_dosen, tbl_jurusan, tbl_fakultas, tbl_users
- buka file 'database.php' pada direktori folder 'app_data_mahasiswa/application/config/'
- lihat konfigurasi koneksi MySQL Database (default : MySQL Password kosong!) Jika pada MySQL Anda diset password, silahkan isikan MySQL Password dengan password MySQL Anda!
