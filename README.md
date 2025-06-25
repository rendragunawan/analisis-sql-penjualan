# 🧮 Analisis SQL Penjualan – MySQL Project

Proyek ini merupakan eksplorasi kemampuan SQL untuk analisis data penjualan berbasis relasional. Dataset disusun dalam tiga tabel utama: `produk`, `pelanggan`, dan `transaksi`. Analisis dilakukan menggunakan berbagai teknik query SQL, mulai dari dasar hingga lanjutan.

---

## 🎯 Tujuan Proyek
- Membuat skema basis data penjualan menggunakan MySQL
- Menguasai operasi dasar SQL seperti SELECT, WHERE, ORDER BY
- Menganalisis data menggunakan agregasi, JOIN, subquery, dan window function
- Menyelesaikan pertanyaan bisnis umum dengan SQL

---

## 🗂️ Struktur File

| File                      | Deskripsi                                               |
|---------------------------|----------------------------------------------------------|
| `schema.sql`              | Berisi perintah `CREATE TABLE`, `ALTER TABLE`, dan struktur basis data |
| `query-analisis.sql`      | Kumpulan query SQL untuk eksplorasi dan analisis data    |
| `seed-data/produk.csv`    | Data dummy produk                                        |
| `seed-data/pelanggan.csv` | Data dummy pelanggan                                     |
| `seed-data/transaksi.csv` | Data dummy transaksi                                     |
| `README.md`               | Dokumentasi proyek ini                                   |

---

## 🧠 Topik SQL yang Dicakup

- **Dasar**: `SELECT`, `WHERE`, `ORDER BY`, `LIMIT`, `LIKE`
- **Agregasi**: `GROUP BY`, `COUNT`, `SUM`, `AVG`
- **Relasi**: `JOIN` (INNER JOIN)
- **Subquery**: `IN`, `NOT IN`, `MAX` dalam WHERE
- **Window Function**: `RANK()` dengan `OVER()`
- **CTE**: `WITH` (Common Table Expression)

---

## 📌 Contoh Pertanyaan yang Dijawab
- Produk apa yang belum pernah terjual?
- Siapa pelanggan dengan transaksi terbesar?
- Produk mana yang paling banyak dibeli?
- Bagaimana tren penjualan per produk dalam 6 bulan terakhir?

---

## 📈 Insight Utama

- Produk terlaris berdasarkan kuantitas adalah **Snack30**, dengan total penjualan lebih dari 29 unit selama 6 bulan terakhir.
- Kota dengan jumlah pelanggan terbanyak adalah **Depok** dan **Padang**, yang menunjukkan potensi pasar tertinggi.
- Pelanggan dengan nilai transaksi tunggal tertinggi adalah **Ikhsan Pudjiastuti, S.Kom** dan **Dinda Uwais**, masing-masing mencatat pembelian hingga **Rp 4.887.460**.
- Semua produk dalam dataset tercatat telah terjual setidaknya satu kali — tidak ada stok mati.

---

## 🛠️ Tools yang Digunakan
- MySQL 
- CSV


---

## 🧑‍💻 Penulis
[Rendra Gunawan](https://github.com/rendragunawan)

---

📎 Proyek ini dirancang sebagai bagian dari portofolio data analyst pemula, dengan pendekatan praktikal berbasis masalah nyata.

