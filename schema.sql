CREATE DATABASE db_penjualan;
USE db_penjualan;

CREATE TABLE produk (
	id_produk INT PRIMARY KEY,
    nama_produk VARCHAR(255) NOT NULL,
    kategori VARCHAR(100),
    harga_satuan DECIMAL(10, 2) NOT NULL
);

CREATE TABLE pelanggan (
	id_pelanggan INT PRIMARY KEY,
    nama_pelanggan VARCHAR(255) NOT NULL,
    kota VARCHAR(100),
    email VARCHAR(255) UNIQUE
);

CREATE TABLE transaksi (
	id_transaksi INT PRIMARY KEY,
    id_pelanggan INT,
    id_produk INT,
    jumlah INT NOT NULL,
    tanggal DATE,
    FOREIGN KEY (id_pelanggan) REFERENCES pelanggan(id_pelanggan),
    FOREIGN KEY (id_produk) REFERENCES produk(id_produk)
    );

-- Menghapus kolom email pada tabel pelanggan
USE db_penjualan;
ALTER TABLE pelanggan DROP COLUMN email;

-- Mengganti nama kolom pada tabel pelanggan
ALTER TABLE pelanggan
RENAME COLUMN nama_pelanggan TO nama;
