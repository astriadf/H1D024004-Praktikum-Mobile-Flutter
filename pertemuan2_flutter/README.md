# \# Aplikasi Dasar Flutter dan Manajemen Produk

# 

# \## Identitas

# 

# \*\*Nama          :\*\* Astria Dina Fitri  

# \*\*NIM           :\*\* H1D024004  

# \*\*Shift KRS     :\*\* B  

# \*\*Shift Baru    :\*\* F  

# 

# \## Deskripsi Program

# 

# Aplikasi ini dibuat menggunakan framework Flutter untuk memenuhi tugas praktikum pemrograman mobile. Program ini mencakup dua bagian utama:

# 1\. \*\*Latihan Dasar Layouting:\*\* Implementasi awal penggunaan widget dasar Flutter untuk menyusun antarmuka, seperti baris, kolom, dan teks sederhana.

# 2\. \*\*Manajemen Data Produk:\*\* Fitur form input data produk, halaman daftar (list) produk, serta halaman untuk melihat detail informasi produk yang dikirim antar-halaman.

# 

# \## Logika Program

# 

# Komponen aplikasi di dalam folder `lib` dibagi berdasarkan fungsinya masing-masing:

# 

# \### 1. Komponen Antarmuka \& Layout Dasar

# \- \*\*`main.dart`:\*\* Titik masuk utama (\*entry point\*) aplikasi Flutter untuk menjalankan seluruh program.

# \- \*\*`hello\_world.dart`:\*\* Halaman sederhana untuk menampilkan teks atau fungsi dasar perkenalan Flutter.

# \- \*\*`column\_widget.dart`:\*\* Implementasi penyusunan widget secara vertikal (ke bawah) menggunakan widget `Column`.

# \- \*\*`row\_widget.dart`:\*\* Implementasi penyusunan widget secara horizontal (ke samping) menggunakan widget `Row`.

# 

# \### 2. Fitur Manajemen Produk (Folder `ui/`)

# \- \*\*`ui/produk\_form.dart`:\*\* Halaman formulir input (Kode Produk, Nama Produk, Harga) menggunakan `TextField` dan kontroler penangkap input teks. Data harga dikonversi menjadi `int` sebelum dikirim.

# \- \*\*`ui/produk\_page.dart`:\*\* Halaman yang memuat daftar produk statis yang disusun rapi menggunakan kombinasi widget `ListView`, `Card`, dan `ListTile`.

# \- \*\*`ui/produk\_detail.dart`:\*\* Halaman penampil detail produk yang menerima operan data dari halaman formulir menggunakan `Navigator.push`.

# 

# \## Screenshot 

# 

# \### 1. Hello World pada Flutter

# !\[Hello World (screenshots/HelloWorld-pada-Flutter.jpg)

# 

# \### 2. Widget Column

# !\[Widget Column](screenshots/WidgetColumn.jpg)

# 

# \### 3. Widget Row

# !\[Widget Row](screenshots/WidgetRow.jpg)

# 

# \### 4. Form Input Produk

# !\[Form Produk](screenshots/FormProduk.jpg)

# 

# \### 5. Form Produk Contoh

# !\[Form Produk Contoh](screenshots/FormProdukContoh.jpg)

# 

# \### 6. List Data Produk

# !\[List Data Produk](screenshots/ListDataProduk.jpg)

# 

# \### 7. Detail Produk Contoh

# !\[Detail Produk Contoh](screenshots/DetailProdukContoh.jpg)



