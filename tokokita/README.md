# Aplikasi Flutter: Toko Kita (Part 1: Operasi CRUD & Autentikasi) dan Part 2 (Lanjutan)

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

### 3. Komponen Helper & Bloc (Modul 5 Bagian 2)
- **`helpers/user_info.dart`**: Mengelola penyimpanan lokal (*local storage*) menggunakan `shared_preferences` untuk menyimpan dan mengambil Token (auth_key) serta User ID setelah login berhasil.
- **`helpers/app_exception.dart`**: Berisi class *custom exception* untuk menangani berbagai macam error HTTP (seperti `FetchDataException`, `BadRequestException`, dll) agar aplikasi tidak *crash* saat API gagal merespons.
- **`helpers/api.dart`**: Berisi fungsi *request* HTTP (`post`, `get`, `delete`) ke REST API. Fungsi ini secara otomatis menyisipkan Token (Bearer Token) ke dalam *header* setiap kali melakukan permintaan.
- **`helpers/api_url.dart`**: Menyimpan semua *endpoint* URL API (base URL, registrasi, login, produk) agar mudah diubah jika alamat server berpindah.
- **`bloc/registrasi_bloc.dart` & `login_bloc.dart`**: Menghubungkan halaman UI dengan API autentikasi. `LoginBloc` bertugas mengirim data email/password dan mengembalikan Token, sedangkan `RegistrasiBloc` mengirim data pendaftaran user baru.
- **`bloc/logout_bloc.dart`**: Bertugas menghapus data Token dan User ID dari *local storage* (`shared_preferences`) saat pengguna menekan tombol Logout.
- **`bloc/produk_bloc.dart`**: Menghubungkan halaman UI produk dengan API. Berisi fungsi `getProduks()` untuk mengambil daftar produk, `addProduk()` untuk menyimpan, `updateProduk()` untuk mengubah, dan `deleteProduk()` untuk menghapus data.
- **`widget/success_dialog.dart` & `warning_dialog.dart`**: Widget *pop-up* (dialog) kustom yang digunakan untuk menampilkan notifikasi berhasil (warna hijau) atau gagal (warna merah) saat proses CRUD dan autentikasi berlangsung.

## Kredensial Login
Untuk mencoba fitur login, pastikan backend (API) sudah berjalan dan gunakan akun berikut:
| Username/Email | Password |
|---|---|
| admin@admin.com | admin |

---

## Video Demonstrasi Aplikasi
<div style="text-align: center;">
  <img src="ScreenRecord/Demo_Modul5Bagian2.gif" alt="Demo Aplikasi Toko Kita" style="max-width: 100%; height: auto; border: 1px solid #ddd; border-radius: 8px; box-shadow: 0 4px 8px rgba(0,0,0,0.1);">
  <b>Hasil Modul 5 Bagian 2 </b>
</div>
<div style="text-align: center;">
  <img src="ScreenRecord/DemoAplikasi.gif" alt="Demo Aplikasi Toko Kita" style="max-width: 100%; height: auto; border: 1px solid #ddd; border-radius: 8px; box-shadow: 0 4px 8px rgba(0,0,0,0.1);">
  <b>Hasil Modul 4 Bagian 1</b>
</div>

<br>


## Dokumentasi Perubahan Tampilan (Modul 5 Bagian 2)
Pada bagian ini, aplikasi mulai menggunakan data dari database (REST API) menggantikan data *hardcode* (dummy) yang sebelumnya ada di Modul 4. Tampilan di bawah membuktikan bahwa data produk (Realme Smart TV) berhasil ditarik dari MySQL.

<div style="display: flex; overflow-x: auto; gap: 15px; padding-bottom: 15px; padding-top: 10px;">
  <div style="text-align: center; flex: 0 0 auto;">
    <img src="Screenshots/modul5bagian2/sebelum_modifikasi_produkpage.png" alt="Sebelum Modifikasi" style="height: 350px; border: 1px solid #ddd; border-radius: 8px;"><br>
    <b>Sebelum Modifikasi (Data Dummy)</b>
  </div>
  <div style="text-align: center; flex: 0 0 auto;">
    <img src="Screenshots/modul5bagian2/sesudah_modifikasi_produkpage.jpeg" alt="Sesudah Modifikasi" style="height: 350px; border: 1px solid #ddd; border-radius: 8px;"><br>
    <b>Sesudah Modifikasi (Data dari API)</b>
  </div>
  <div style="text-align: center; flex: 0 0 auto;">
    <img src="Screenshots/modul5bagian2/registrasi_berhasil.jpeg" alt="Registrasi Berhasil" style="height: 350px; border: 1px solid #ddd; border-radius: 8px;"><br>
    <b>Notifikasi Registrasi Berhasil</b>
  </div>
  <div style="text-align: center; flex: 0 0 auto;">
    <img src="Screenshots/modul5bagian2/login_gagal.jpeg" alt="Login Gagal" style="height: 350px; border: 1px solid #ddd; border-radius: 8px;"><br>
    <b>Notifikasi Login Gagal (Error Handling)</b>
  </div>
  <div style="text-align: center; flex: 0 0 auto;">
    <img src="Screenshots/modul5bagian2/database_data-produk.png" alt="Database Produk" style="height: 350px; border: 1px solid #ddd; border-radius: 8px;"><br>
    <b>Database MySQL (Data Produk)</b>
  </div>
</div>

## Dokumentasi Tampilan Aplikasi (Modul 4 Bagian 1)

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