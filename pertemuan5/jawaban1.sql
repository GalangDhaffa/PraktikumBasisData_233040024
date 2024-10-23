 create table jurusan (
 id int primary key not null,
 nama_jurusan varchar(30));

 create table mahasiswa (
 id int primary key not null,
 npm varchar(30),
 nama varchar(30),
 tanggal_lahir date,
 alamat varchar(50),
 no_hp varchar(30),
 jurusan_id int;

 create table dosen_wali