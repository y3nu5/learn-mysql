CREATE database UMKM;

USE UMKM;
SHOW Tables;

SHOW databases;

SELECT * FROM UMKM_JABAR;

-- Tunjukkan data di umkm bandung
SELECT * FROM UMKM_JABAR WHERE nama_kabupaten_kota = 'KOTA BANDUNG';

-- Tunjukkan data UMKM dari tahun 2019 dan mengurutkannya
SELECT * FROM UMKM_JABAR WHERE tahun >= 2019 ORDER BY kategori_usaha, tahun;

-- dibatasi hanya 10 baris saja 
SELECT * FROM UMKM_JABAR WHERE tahun >= 2019 ORDER BY kategori_usaha, tahun LIMIT 10;

-- KATEGORI APA saja yang ada di umkm jabar
SELECT kategori_usaha from UMKM_JABAR;
SELECT DISTINCT kategori_usaha from UMKM_JABAR;

-- Tunjukkan seluruh data hanya kategori fashion and makanan
SELECT * FROM UMKM_JABAR WHERE kategori_usaha IN ('AKSESORIS', 'MAKANAN');

-- Tunjukkan data kategori usaha makanan di kabupaten karawang dari tahun 2017 sampai 2021
SELECT * FROM UMKM_JABAR WHERE kategori_usaha = 'MAKANAN' 
AND nama_kabupaten_kota = 'KABUPATEN KARAWANG' 
AND tahun BETWEEN 2017 AND 2021
ORDER BY tahun ASC;

-- Tunjukkan data selain kaegori makanan, kuliner, dan minuman
SELECT * FROM UMKM_JABAR WHERE kategori_usaha NOT IN ('MAKANAN', 'MINUMAN', 'KULINER');

-- dari tahun 2018-2020, TUNJUKKAN tren jumlah umkm di kabupaten tasikmalaya untuk kategori batik
SELECT nama_kabupaten_kota, kategori_usaha, proyeksi_jumlah_umkm, satuan, tahun FROM UMKM_JABAR
WHERE tahun BETWEEN 2018 AND 2020 
AND nama_kabupaten_kota = 'KABUPATEN TASIKMALAYA' 
AND kategori_usaha = 'BATIK';

-- di antara kota bandung, kabupaten bandung, dan kabupaten bandung barat, 
-- dimanakah umkm kuliner terpusat pada tahun 2021?
SELECT * FROM umkm.UMKM_JABAR 
WHERE nama_kabupaten_kota LIKE '%BANDUNG%'
AND kategori_usaha = 'kuliner'
AND tahun = 2021
ORDER BY proyeksi_jumlah_umkm desc;

-- di kota mana saja yang meiliki angka 7 pada digit ke tiga dalam kode kabupaten kota
SELECT DISTINCT kode_kabupaten_kota, nama_kabupaten_kota FROM UMKM_JABAR
WHERE kode_kabupaten_kota LIKE '__7%';

DESC UMKM_JABAR;