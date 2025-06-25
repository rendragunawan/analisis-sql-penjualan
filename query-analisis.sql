-- Tampilkan semua data dari tabel produk
SELECT * FROM produk;
SELECT * FROM pelanggan;
SELECT * FROM transaksi;

-- Kueri Dasar (SELECT, WHERE, ORDER BY)
-- Melihat nama produk dan harganya, diurutkan dari yang paling mahal:
SELECT nama_produk, harga FROM produk ORDER BY harga DESC;

-- Mencari pelanggan yang berasal dari kota 'Bandung':
SELECT id_pelanggan, nama FROM pelanggan WHERE kota ='Bandung';


-- Agregasi dan Grouping (COUNT, SUM, GROUP BY)

-- Menghitung jumlah total transaksi:
SELECT COUNT(*) AS total_transaksi FROM transaksi;

-- Menghitung jumlah pelanggan di setiap kota
SELECT kota, COUNT(id_pelanggan) AS jumlah_pelanggan
FROM pelanggan
GROUP BY kota
ORDER BY jumlah_pelanggan DESC;

-- Menghitung total pendapatan dari setiap produk
SELECT
    p.nama_produk,
    SUM(t.jumlah_beli * p.harga) AS total_pendapatan
FROM transaksi t
JOIN produk p ON t.id_produk = p.id_produk
GROUP BY p.nama_produk
ORDER BY total_pendapatan DESC;

-- JOIN (Menggabungkan Tabel)
-- Menampilkan daftar transaksi lengkap dengan nama pelanggan dan nama produk yang dibeli
SELECT
    t.id_transaksi,
    t.tanggal_transaksi,
    pl.nama,
    pr.nama_produk,
    t.jumlah_beli,
    pr.harga AS harga_satuan,
    (t.jumlah_beli * pr.harga) AS total_harga
FROM transaksi t
JOIN pelanggan pl ON t.id_pelanggan = pl.id_pelanggan
JOIN produk pr ON t.id_produk = pr.id_produk
ORDER BY t.tanggal_transaksi DESC
LIMIT 20; -- Hanya tampilkan 20 transaksi terbaru

-- Subquery (Kueri di dalam Kueri)
-- Menampilkan produk yang belum pernah terjual sama sekali
SELECT id_produk, nama_produk, harga
FROM produk
WHERE id_produk NOT IN (SELECT DISTINCT id_produk FROM transaksi);

-- Menampilkan pelanggan yang melakukan transaksi dengan total belanja terbesar dalam satu transaksi
SELECT
    p.nama,
    pr.nama_produk,
    t.jumlah_beli * pr.harga AS nilai_transaksi
FROM transaksi t
JOIN pelanggan p ON t.id_pelanggan = p.id_pelanggan
JOIN produk pr ON t.id_produk = pr.id_produk
WHERE (t.jumlah_beli * pr.harga) = (
    SELECT MAX(sub_t.jumlah_beli * sub_p.harga)
    FROM transaksi sub_t
    JOIN produk sub_p ON sub_t.id_produk = sub_p.id_produk
);

-- Window Function (Fungsi Jendela)
-- Membuat ranking penjualan produk berdasarkan total unit yang terjual
WITH PenjualanProduk AS (
    SELECT
        p.nama_produk,
        SUM(t.jumlah_beli) AS total_unit_terjual
    FROM transaksi t
    JOIN produk p ON t.id_produk = p.id_produk
    GROUP BY p.nama_produk
)
SELECT
    nama_produk,
    total_unit_terjual,
    RANK() OVER (ORDER BY total_unit_terjual DESC) AS ranking_penjualan
FROM PenjualanProduk;