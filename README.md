Aplikasi Database Mahasiswa Menggunakan Framework CodeIgniter dan Grocery Crud
===============================================================================

Aplikasi ini dibuat untuk keperluan sistem informasi data mahasiswa, dengan detail sbb:
- Dibuat menggunakan PHP
- Menggunakan DBMS MySQL
- Data Tabel : tbl_mhs, tbl_kelas, tbl_dosen, tbl_jurusan, tbl_fakultas, tbl_users
- Data Relasi Tabel : disertakan screen capture dari skema tabel relasi

Syarat :
- Aktifkan mod_rewrite apache dan mod_mysql di php
- Minimum menggunakan php versi 5.4

Catatan :
Program ini dibuat dengan PHP Framework CodeIgniter, tujuannya agar lebih terstruktur dan memiliki standar pengkodean.
Sehingga akan memudahkan dalam pengembangan program untuk dimasa yang akan datang. Disamping itu, program akan lebih stabil
dan meminimalisir error/bug dari program.

Petunjuk Installasi Program:
============================
- Copy folder UAS_PHP dan Paste ke direktori 'xampp/htdocs/'
- buat database di phpmyadmin dengan nama database : 'db_unikom'
- import database dari folder 'Database MySQL' dengan nama file 'db_unikom.sql'
- untuk memastikan database telah sukses di import, silahkan cek di phpmysql, kemudian buka database dengan nama db_unikom.
  pastikan terdapat 7 tabel pada database, yaitu: tbl_mhs, tbl_kelas, tbl_dosen, tbl_jurusan, tbl_fakultas, tbl_users
- buka file 'database.php' pada direktori folder 'UAS_PHP/application/config/'
- lihat konfigurasi koneksi MySQL Database (default : MySQL Password kosong!) Jika pada MySQL Anda diset password, silahkan isikan
  MySQL Password dengan password MySQL Anda!
