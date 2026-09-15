# RuangStok - Inventori Furnitur

MVP dashboard inventori furnitur berbahasa Indonesia.

## Menjalankan

Buka file `index.html` di browser. Tidak membutuhkan instalasi atau server untuk mencoba versi awal ini.

## Fitur

- Dashboard total stok, nilai persediaan, barang masuk, dan barang keluar
- Grafik pergerakan stok
- Data barang dengan supplier, pencarian, dan filter kategori
- Transaksi barang masuk dan keluar
- Validasi agar stok keluar tidak melebihi stok tersedia
- Stok awal, stok akhir, dan batas stok minimum
- Laporan stok akhir, mutasi stok, dan nilai persediaan
- Ekspor laporan ke CSV yang dapat dibuka di Excel
- Data tersimpan di `localStorage` browser

## Catatan realtime

Versi awal ini menyimpan data secara lokal pada browser agar dapat langsung dicoba. Untuk realtime antar beberapa pengguna, sambungkan penyimpanan pada Supabase/Firebase dan aktifkan subscription perubahan data.

Jika memakai Supabase, jalankan ulang `supabase-schema.sql` untuk menambahkan kolom supplier pada tabel `products`.
