SELECT * FROM MAHASISWA WHERE nama like '%a%'; 

SELECT id, nama FROM MAHASISWA
ORDER BY jurusan TOP (10);

SELECT TOP (10) NAMA
FROM MAHASISWA;

SELECT nama
FROM MAHASISWA
where tanggallahir
BETWEEN '2000-10-10' AND '2004-10-10';


SELECT nim
FROM MAHASISWA
where jurusan
BETWEEN 'tif'and 'tif';

SELECT nama, jurusan FROM mahasiswa WHERE tanggallahir like'%1%';

SELECT * FROM mahasiswa WHERE jurusan in ('tif');

