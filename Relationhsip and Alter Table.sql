-- CREATE Database Universitas;

-- SHOW Databases;
-- USE Universitas;

-- show tables ;

-- CREATE Table Dosen (
-- 	ID_Dosen VARCHAR(50) NOT NULL,
--     Nama_Dosen VARCHAR(100) NOT NULL,
--     Program_Studi VARCHAR(100) NOT NULL,
--     PRIMARY KEY (ID_Dosen)
-- );

-- CREATE Table Dosen (
-- 	ID_Dosen VARCHAR(50) PRIMARY KEY,
--     Nama_Dosen VARCHAR(100),
--     Program_Studei VARCHAR(100)
-- );

-- CREATE Table Mahasiswa (
-- 	ID_Mhs VARCHAR(50),
--     Nama_Mhs VARCHAR(100),
--     Program_Studi VARCHAR(100),
--     ID_Dosen_Wali VARCHAR(50),
--     FOREIGN KEY (ID_Dosen_Wali) REFERENCES Dosen(ID_Dosen)
-- );

-- INSERT INTO Dosen (
-- 		

-- 	)

-- DROP TABLE Dosen;
-- DESC Dosen;
-- DESC Mahasiswa;

-- ALTER TABLE Dosen
-- RENAME COLUMN Program_Studei TO Program_Studi;


-- Membuat Database dan Tabel
CREATE database Perpustakaan;
USE Perpustakaan;
SHOW TABLES;

CREATE TABLE Buku (
    ID_Buku VARCHAR (255) NOT NULL PRIMARY KEY,
    Judul_Buku VARCHAR (255) NOT NULL,
    Nama_Penulis VARCHAR (255) NULL,
    Jumlah INTEGER NULL
);

-- Mengecek Tabel BUKU sudah dibuat 
DESC Buku;

-- Menambah Kolom Lokasi
ALTER TABLE Buku
ADD Lokasi VARCHAR (255);

-- Mengecek struktur tabel Buku
DESC Buku;

-- Membuat Tabel Peminjaman
CREATE TABLE Peminjaman (
    No_Peminjaman VARCHAR (255) NOT NULL PRIMARY KEY,
    Nama_Peminjam VARCHAR (255) NOT NULL,
    ID_Buku VARCHAR (255) NOT NULL,
    Jumlah_Buku INTEGER NULL,
    Tgl_Pinjam DATE NOT NULL,
	Tgl_Ekspektasi_Kembali DATE NULL,
	Tgl_Aktual_Kembali DATE NULL,
    FOREIGN KEY (ID_Buku) REFERENCES Buku (ID_Buku)
);

-- Melihat Tabel 
DESC Peminjaman;
DESC Buku;

-- checked doing Primary key and foreign key already created
Explain Peminjaman;

SHOW CREATE TABLE Peminjaman;

-- Make entry data to the lend table
INSERT INTO Peminjaman (
        no_peminjaman,
        nama_peminjam,
        id_buku,
        jumlah_buku,
        tgl_pinjam,
        tgl_ekspektasi_kembali,
        tgl_aktual_kembali
    )
VALUES
    (
        'A0000000001',
        'Yunus',
        'B101',
        1,
        '2025-05-01',
        '2025-05-15',
        NULL
    ),
    (
        'A0000000002',
        'Firman',
        'B102',
        1,
        '2025-05-02',
        '2025-05-17',
        NULL
    ),
    (
        'A0000000003',
        'Tiara',
        'B103',
        1,
        '2025-04-09',
        '2025-04-23',
        '2025-05-03'
    );
    
    SELECT * FROM Peminjaman;
    
-- Make entries data to the book table
INSERT INTO Buku (
        ID_Buku,
        Lokasi,
        Judul_Buku,
        Nama_Penulis,
        Jumlah
    )
VALUES
    (
        'B102',
        '1A12',
        'Anatomi Tubuh for Kids',
        'Syafina',
        3
    ),
    (
        'B103',
        '1A29',
        'Sentiment Analysis for Dummies 2nd Edition',
        'Regina Alwi, Humaira',
        2
    );
    
desc buku;

-- Melihat data dalam tabel buku
SELECT * FROM Buku;

DELETE FROM Buku
WHERE ID_Buku = 'B101';

DELETE FROM Buku;

DELETE FROM BUKU;

DROP TABLE BUKU;
DROP TABLE PEMINJAMAN;

DESC BUKU;
DESC PEMINJAMAN;

-- memasukkan data ke dalam tabel peminjaman
INSERT INTO Peminjaman (
        No_Peminjaman,
        Nama_Peminjam,
        ID_Buku,
        Jumlah_Buku,
        Tgl_Pinjam,
        Tgl_Ekspektasi_Kembali,
        Tgl_Aktual_Kembali
    )
VALUES
    (
        'A0000000001',
        'Yunus',
        'B102',
        1,
        '2025-05-01',
        '2025-05-15',
        NULL
    ),
    (
        'A0000000002',
        'Firman',
        'B103',
        1,
        '2025-05-04',
        '2025-05-20',
        NULL
    );
 
desc peminjaman;

-- Melihat data dalam tabel peminjaman
select * from peminjaman;

-- menngentri data dengan id buku yang tidak terecord di tabel buku
INSERT INTO Peminjaman
VALUES
    ('A0000000003', 'Yunus', 'B104', 1, '2025-05-07', '2025-05-22', NULL);


