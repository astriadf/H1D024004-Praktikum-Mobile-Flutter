# Aplikasi Flutter: Toko Kita (Part 1: Operasi CRUD & Autentikasi)

## Identitas
**Nama** : Astria Dina Fitri  
**NIM** : H1D024004  
**Shift KRS** : B  
**Shift Baru** : F

## Deskripsi Program
Aplikasi ini dibuat menggunakan framework Flutter untuk memenuhi tugas praktikum Pemrograman Mobile. Program ini mengimplementasikan fitur autentikasi (Login & Registrasi) serta pengelolaan data produk (CRUD) yang terhubung dengan REST API (CodeIgniter 4).

Fitur utama aplikasi meliputi:
1. **Login & Registrasi:** Pengguna dapat mendaftar akun baru dan masuk ke dalam aplikasi.
2. **List Produk:** Menampilkan daftar produk yang tersedia.
3. **Tambah Produk:** Menambahkan data produk baru ke dalam sistem.
4. **Detail Produk:** Melihat informasi detail dari suatu produk.
5. **Edit Produk:** Mengubah data produk yang sudah ada.
6. **Hapus Produk:** Menghapus data produk dengan dialog konfirmasi.
7. **Side Menu:** Menyediakan navigasi tambahan (seperti Logout) menggunakan widget Drawer.

## Logika Program
Komponen aplikasi di dalam folder `lib` dibagi berdasarkan fungsinya masing-masing:

### 1. Komponen Model
- **`model/login.dart`, `registrasi.dart`, `produk.dart`**: Berisi struktur class untuk menampung data dan fungsi `fromJson` untuk mengubah data dari API menjadi objek Dart.

### 2. Komponen UI (Tampilan)
- **`main.dart`**: Titik masuk utama (*entry point*) aplikasi Flutter.
- **`ui/login_page.dart`**: Halaman login dengan input email dan password.
- **`ui/registrasi_page.dart`**: Halaman pendaftaran akun baru.
- **`ui/produk_page.dart`**: Halaman utama yang menampilkan daftar produk (List Produk).
- **`ui/produk_form.dart`**: Form untuk menambah dan mengubah data produk.
- **`ui/produk_detail.dart`**: Halaman yang menampilkan informasi spesifik dari satu produk serta tombol Edit dan Delete.

## Kredensial Login
Untuk mencoba fitur login, pastikan backend (API) sudah berjalan dan gunakan akun berikut:
| Username/Email | Password |
|---|---|
| admin@admin.com | admin |

---

## Video Demonstrasi Aplikasi
<div style="text-align: center;">
  <img src="ScreenRecord/DemoAplikasi.gif" alt="Demo Aplikasi Toko Kita" style="max-width: 100%; height: auto; border: 1px solid #ddd; border-radius: 8px; box-shadow: 0 4px 8px rgba(0,0,0,0.1);">
</div>

<br>

## Dokumentasi Tampilan Aplikasi
*(Geser gambar ke kiri/kanan untuk melihat semua halaman)*

<div style="display: flex; overflow-x: auto; gap: 15px; padding-bottom: 15px; padding-top: 10px;">
  <div style="text-align: center; flex: 0 0 auto;">
    <img src="Screenshots/RegistrasiPage.png" alt="Registrasi" style="height: 350px; border: 1px solid #ddd; border-radius: 8px;"><br>
    <b>Halaman Registrasi</b>
  </div>
  <div style="text-align: center; flex: 0 0 auto;">
    <img src="Screenshots/LoginPage.png" alt="Login" style="height: 350px; border: 1px solid #ddd; border-radius: 8px;"><br>
    <b>Halaman Login</b>
  </div>
  <div style="text-align: center; flex: 0 0 auto;">
    <img src="Screenshots/ProdukPage.png" alt="List Produk" style="height: 350px; border: 1px solid #ddd; border-radius: 8px;"><br>
    <b>List Produk</b>
  </div>
  <div style="text-align: center; flex: 0 0 auto;">
    <img src="Screenshots/ProdukForm.png" alt="Tambah Produk" style="height: 350px; border: 1px solid #ddd; border-radius: 8px;"><br>
    <b>Form Tambah Produk</b>
  </div>
  <div style="text-align: center; flex: 0 0 auto;">
    <img src="Screenshots/DetailProduk.png" alt="Detail Produk" style="height: 350px; border: 1px solid #ddd; border-radius: 8px;"><br>
    <b>Detail Produk</b>
  </div>
  <div style="text-align: center; flex: 0 0 auto;">
    <img src="Screenshots/EditProduk.png" alt="Edit Produk" style="height: 350px; border: 1px solid #ddd; border-radius: 8px;"><br>
    <b>Edit Produk</b>
  </div>
  <div style="text-align: center; flex: 0 0 auto;">
    <img src="Screenshots/KonfirmasiHapusProduk.png" alt="Konfirmasi Hapus" style="height: 350px; border: 1px solid #ddd; border-radius: 8px;"><br>
    <b>Konfirmasi Hapus</b>
  </div>
</div>

<br>

## Dokumentasi Pengujian API (Postman)
*(Geser gambar ke kiri/kanan untuk melihat semua pengujian)*

<div style="display: flex; overflow-x: auto; gap: 15px; padding-bottom: 15px; padding-top: 10px;">
  <div style="text-align: center; flex: 0 0 auto;">
    <img src="Screenshots/TestAPI_Registrasi.png" alt="Test Registrasi" style="height: 250px; border: 1px solid #ddd; border-radius: 8px;"><br>
    <b>Test Registrasi</b>
  </div>
  <div style="text-align: center; flex: 0 0 auto;">
    <img src="Screenshots/TestAPI_Login.png" alt="Test Login" style="height: 250px; border: 1px solid #ddd; border-radius: 8px;"><br>
    <b>Test Login</b>
  </div>
  <div style="text-align: center; flex: 0 0 auto;">
    <img src="Screenshots/TestAPI_CreateProduk.png" alt="Test Create Produk" style="height: 250px; border: 1px solid #ddd; border-radius: 8px;"><br>
    <b>Test Create Produk</b>
  </div>
  <div style="text-align: center; flex: 0 0 auto;">
    <img src="Screenshots/TestAPI_ListProduk.png" alt="Test List Produk" style="height: 250px; border: 1px solid #ddd; border-radius: 8px;"><br>
    <b>Test List Produk</b>
  </div>
  <div style="text-align: center; flex: 0 0 auto;">
    <img src="Screenshots/TestAPI_ShowProduk.png" alt="Test Show Produk" style="height: 250px; border: 1px solid #ddd; border-radius: 8px;"><br>
    <b>Test Show Produk</b>
  </div>
  <div style="text-align: center; flex: 0 0 auto;">
    <img src="Screenshots/TestAPI_UpdateProduk.png" alt="Test Update Produk" style="height: 250px; border: 1px solid #ddd; border-radius: 8px;"><br>
    <b>Test Update Produk</b>
  </div>
  <div style="text-align: center; flex: 0 0 auto;">
    <img src="Screenshots/TestAPI_DeleteProduk.png" alt="Test Delete Produk" style="height: 250px; border: 1px solid #ddd; border-radius: 8px;"><br>
    <b>Test Delete Produk</b>
  </div>
</div>