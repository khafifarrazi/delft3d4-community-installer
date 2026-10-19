# 🌊 Panduan Instalasi & Distribusi Delft3D 4 Suite (All-in-One)

Installer mandiri (*All-in-One Installer*) ini dirancang khusus agar Anda dan rekan-rekan Anda (mahasiswa, peneliti, perekayasa pantai, oseanografer, dan praktisi pemodelan) dapat memasang **Delft3D 4 Suite (Versi 4.07.02)** secara gratis, instan, dan siap pakai tanpa perlu kompilasi manual atau konfigurasi lingkungan yang rumit.

---

### 📌 Informasi Berkas Installer:
* **Tautan Unduh Google Drive**: [**Unduh Installer (Google Drive Folder)**](https://drive.google.com/drive/folders/1n4nYRUO1JAszAicliTmhP5IbFDc4uOIP?usp=sharing)
* **Nama Berkas**: `Delft3D_4_Suite_4.07.02_AllInOne_Setup.exe`
* **Arsitektur**: Windows 64-bit (x64)
* **Ukuran Berkas**: ~392 MB (411.149.041 byte)
* **SHA-256 Checksum**: `84EB99005729D503B54A061F1962E8A466C346CE3AA9485C492C90207A857721`
* **Status**: Siap didistribusikan / dipasang langsung (Bebas data pribadi)

---

## 📦 Apa Saja yang Ada di Dalam Installer Ini?

Installer ini mengemas seluruh ekosistem Delft3D 4 dalam 1 file `.exe` tunggal:
1. **Delft3D 4 Menu & Modul Antarmuka (4.07.02)**: Antarmuka terintegrasi untuk menjalankan modul FLOW, WAVE, WAQ, PART, dan TIDE.
2. **Utilitas Pra-Pemrosesan Grid & Batimetri**:
   - **RGFGRID**: Generator grid kurvilinear ortogonal untuk perairan pantai, sungai, estuari, dan danau.
   - **QUICKIN**: Alat interpolasi kedalaman, batimetri, dan koefisien kekasaran dengan triangulasi otomatis.
3. **Mesin Kalkulasi Lengkap (Kernels x64)**:
   - **Delft3D-FLOW (`flow2d3d.exe`)**: Solver hidrodinamika 2D/3D non-stasioner, densitas, salinitas, suhu, dan transpor sedimen.
   - **Delft3D-WAVE (`wave.exe` & SWAN)**: Solver gelombang acak jarak pendek (wind-wave).
   - **Delft3D-WAQ (`delwaq.exe`)**: Solver kualitas air multidimensi, dispersi polutan, dan oksigen terlarut.
   - **Delft3D-PART (`delpar.exe`)**: Pemodelan jejak partikel untuk simulasi tumpahan minyak dan sedimentasi.
   - Pustaka numerik komputasi performa tinggi: **Intel MKL**, **NetCDF**, **HDF5**, dan **OpenMP**.
4. **QUICKPLOT Tool 2.72 (Windows 64-bit)**: Perangkat lunak visualisasi analisis hasil simulasi (peta kontur, vektor arus, profil vertikal, dan time-series).
5. **Konfigurasi Lingkungan FlexNet Otomatis**: Menyiapkan registry dan folder lisensi `C:\Program Files (x86)\DS_Flex` secara otomatis saat instalasi.

> [!IMPORTANT]
> **Privasi & Keamanan Data Pengguna:**  
> Untuk melindungi data pribadi dan privasi pemilik berkas, paket installer ini **TIDAK menyertakan file lisensi pribadi siapapun**.  
> Setiap pengguna (mahasiswa/peneliti) diarahkan untuk memperoleh file lisensi resmi **GRATIS (100% Legal)** atas nama sendiri/institusi langsung dari portal resmi Deltares dengan langkah mudah di bawah ini.

---

## 🔑 Langkah 1: Dapatkan Lisensi Resmi Gratis dari Deltares

Sebelum atau saat menginstal, dapatkan file lisensi `.lic` resmi Anda dari Deltares:

1. **Buka Portal Resmi Deltares**:
   Kunjungi halaman pendaftaran lisensi Open Source resmi:  
   👉 **[Deltares Software Download - Delft3D 4 Suite GUI Open Source](https://download.deltares.nl/delft3d-4-suite-graphical-user-interface-gui-open-source)**  
   *(Atau buka [https://download.deltares.nl/](https://download.deltares.nl/) dan cari "Delft3D 4 Suite GUI Open Source")*.

2. **Masukkan ke Keranjang (Order € 0.00)**:
   - Pada halaman produk, klik tombol **"Order"** atau **"Add to Cart"** (Biaya: **€ 0.00 / Gratis & Legal**).
   - Klik **"Checkout"** atau **"View Cart"** untuk melanjutkan.

3. **Isi Formulir Pendaftaran**:
   - Masukkan informasi pengguna:
     - **Nama Lengkap**
     - **Alamat Email Aktif** *(Gunakan email kampus/pribadi)*
     - **Nama Institusi/Universitas/Perusahaan**
     - **Negara**: Indonesia
     - **Tujuan Penggunaan**: Educational / Research / General.
   - Centang persetujuan lisensi (*Terms & Conditions*), lalu klik **"Submit Order"** / **"Complete"**.

4. **Unduh File Lisensi dari Email**:
   - Periksa kotak masuk email Anda (cek juga folder *Spam* jika belum masuk dalam 1–5 menit).
   - Deltares akan mengirimkan email konfirmasi pesanan berisikan lampiran atau tautan unduh file lisensi `.lic` (misalnya: `Delft3D4_GUI_OSS.lic` atau `license.lic`).
   - Simpan file `.lic` tersebut di komputer Anda (misalnya di folder *Downloads* atau *Desktop*).

---

## 🚀 Langkah 2: Jalankan Installer

1. **Buka Installer**:
   Cari file installer:
   ```
   Delft3D_4_Suite_4.07.02_AllInOne_Setup.exe
   ```
   Klik kanan file tersebut, lalu pilih **Run as administrator**.

2. **Ikuti Wizard Instalasi**:
   - **Welcome Screen**: Klik **Next**.
   - **Pilih Lokasi Instalasi**: Secara default di `C:\Program Files\Deltares\Delft3D 4.07.02` (bisa disesuaikan).
   - **Pilih Komponen**: Pastikan Core GUI & Kernels, RGFGRID, QUICKIN, dan QUICKPLOT dicentang.
   - **Halaman Opsi Lisensi (License Configuration)**:
     - 🔘 **Opsi 1: Pilih file lisensi (.lic) resmi yang sudah saya peroleh dari Deltares (Direkomendasikan)**:  
       Klik **Next** -> Klik tombol **Browse** -> Pilih file `Delft3D4_GUI_OSS.lic` yang Anda unduh dari email Deltares pada Langkah 1.  
       *Installer akan secara otomatis menyalin lisensi tersebut ke `C:\Program Files (x86)\DS_Flex\` dan mengonfigurasi registry Windows.*
     - 🔘 **Opsi 2: Lewati**:  
       Pilih opsi ini jika Anda belum mengunduh lisensi saat ini dan ingin menyalinnya secara manual nanti.
   - **Pilih Shortcut**: Centang pembuatan shortcut Desktop untuk **Delft3D 4 Menu**, **RGFGRID**, **QUICKIN**, dan **QUICKPLOT**.
   - **Install**: Klik tombol **Install** dan tunggu hingga selesai.

---

## 🎯 Membuka Aplikasi & Menjalankan Simulasi

Setelah instalasi selesai:
1. Buka icon **Delft3D 4** di Desktop Anda (atau dari menu Start).
2. Delft3D 4 Menu akan langsung terbuka menampilkan seluruh modul pemodelan (FLOW, WAVE, WAQ, PART).
3. Anda dapat langsung membuka **RGFGRID** untuk membuat grid dan **QUICKIN** untuk interpolasi batimetri.
4. Saat mengeksekusi perhitungan (*Run Hydrodynamics*), solver `flow2d3d.exe` akan langsung berjalan lancar menggunakan kalkulasi kernel 64-bit yang telah terintegrasi!
