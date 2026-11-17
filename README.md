# 🍉 HEF (Healthy Eco Foody) Mobile

## 📌 Application Overview
HEF Mobile (Healthy Eco Foody) adalah mobile app yang membantu pengguna menerapkan gaya hidup Sustainable Food & Diet dengan menganalisis kandungan nutrisi dari produk makanan serta resep harian. Dengan mengintegrasikan data melalui platform website kami (via Django Rest Framework API), yang menggunakan Open Food Facts API dan Spoonacular API, app ini menyediakan fitur pemindaian barcode untuk mengecek Eco/Nutri-Score, perbandingan produk secara berdampingan, analisis keberlanjutan resep, serta manajemen inventaris bahan makanan rumah tangga lengkap dengan pengingat tanggal kadaluarsa untuk mencegah food waste. 

## 📌 Important Links
### - [Link Figma]
### - [Link APK]

## 📋 Daftar Anggota Kelompok dan Pembagian Modul
| Nama | NPM | Modul |
| :---: | :---: | :---: |
| Angelica Christilia Talumewo | 2506536313 | Perbandingan 2-3 Produk melalui Eco/Nutrition Score
| Celine Nafisa Setiawan | 2506590201 | Inventaris Bahan Makanan di Rumah beserta Pengingat Tanggal Kadaluarsa
| Ferdinandus Pakasi | 2506602643 | Pencarian dan Analisis Resep
| Muhammad Raihananta Adzaky Yuwono | 2506547853 | Sistem Login dan Otentikasi Akun Pengguna
| Yazid Khairul Firmansyah | 2506537064 | Pencarian Produk dan Eco/Nutrition Score melalui Scan Barcode

## 👤 Peran Pengguna
### 🧑‍🤝‍🧑 Jenis User:
1. Pembelanja peduli lingkungan
2. Pelaku diet sehat dan berkelanjutan
3. Edukator dan content creator lingkungan

### 📖 User Persona & Story: 
Persona 1: Sarah — Ibu Rumah Tangga Peduli Lingkungan
- Sebagai Sarah, saya ingin scan/cari barcode produk di supermarket, supaya saya bisa langsung tahu eco-score-nya sebelum beli.
- Sebagai Sarah, saya ingin membandingkan 2-3 produk sejenis, supaya saya bisa pilih yang paling ramah lingkungan untuk keluarga saya.
- Sebagai Sarah, saya ingin melihat histori pencarian saya, supaya saya nggak perlu cari ulang produk yang sama tiap belanja.

Persona 2: Raihananta — Mahasiswa Vegetarian Baru
- Sebagai Nanta, saya ingin memasukkan bahan yang saya punya, supaya sistem bisa kasih tahu nutrisi dan apakah resep saya cukup plant-based.
- Sebagai Nanta, saya ingin mendapat rekomendasi resep otomatis berdasarkan diet vegetarian, supaya saya nggak perlu cari-cari resep sendiri di internet.
- Sebagai Nanta, saya ingin filter resep berdasarkan kalori, supaya sesuai dengan kebutuhan diet saya sehari-hari.

Persona 3: Rina — Content Creator Sustainability
- Sebagai Rina, saya ingin menyimpan produk favorit ke daftar saya, supaya saya bisa kumpulkan referensi produk sustainable buat konten.
- Sebagai Rina, saya ingin melihat detail lengkap eco-score dan alasan di baliknya, supaya saya bisa jelaskan ke followers dengan akurat.
- Sebagai Rina, saya ingin akun login, supaya data favorit dan histori saya tersimpan permanen dan bisa diakses kapan saja.

## 🌍 Pengintegrasian Data dengan Website Kami
HEF Mobile dirancang untuk mengambil dan mengirim data melalui backend website HEF menggunakan Django REST Framework (DRF). Aplikasi mobile nantinya berkomunikasi dengan API milik website; kredensial API pihak ketiga tidak disimpan di aplikasi. Backend website bertanggung jawab untuk mengolah permintaan dan, bila diperlukan, mengambil data dari Open Food Facts atau Spoonacular.

Alur data:

```text
HEF Mobile (Flutter) → HEF Website API (Django REST Framework) → layanan/data website
```

Rencana data yang akan diintegrasikan mencakup pencarian produk dan detail skor, perbandingan produk, pencarian/analisis resep, login dan data akun, serta inventaris bahan makanan dan pengingat kedaluwarsa. Untuk fitur yang menyimpan data pengguna, aplikasi akan mengirim permintaan terautentikasi ke DRF sesuai kontrak API yang disediakan backend.

## 📈 Public API yang digunakan
- Open Food Facts API : https://world.openfoodfacts.org/data 
- Spoonacular API : https://spoonacular.com/food-api 

## ⚙️ Setup  Instructions
### Requirements

- Flutter SDK yang menyertakan Dart **3.13.7 atau lebih baru** (batas yang dideklarasikan di `pubspec.yaml`).
- Android Studio atau editor pilihan dengan Flutter/Dart plugin, serta Android SDK/emulator atau perangkat Android.
- Untuk menjalankan target iOS, diperlukan macOS dengan Xcode dan iOS Simulator/perangkat iOS.

### Menjalankan aplikasi

1. Clone repository dan masuk ke folder project:

   ```bash
   git clone https://github.com/PBP-D-Kelompok-13/mobile-HEF.git
   cd mobile-HEF
   ```

2. Pastikan instalasi Flutter terdeteksi:

   ```bash
   flutter doctor
   ```

   Selesaikan konfigurasi toolchain untuk platform yang ingin digunakan.

3. Ambil dependency Flutter:

   ```bash
   flutter pub get
   ```

4. Jalankan emulator/perangkat, lalu mulai aplikasi:

   ```bash
   flutter devices
   flutter run
   ```

## 📦 Tech Stack & Core Dependencies

- **Flutter** — framework aplikasi mobile lintas platform.
- **Dart** — bahasa pemrograman; batas SDK project saat ini `^3.13.7`.
- **Material Components** — UI bawaan Flutter (`uses-material-design: true`).

## 📝 Tambahan File untuk Grading
- [File terkait AI Documentation masing-masing anggota](docs/ai-documentation.md) 
- [File terkait Git Extra Contributions masing-masing anggota](docs/extra-contributions.md) 
