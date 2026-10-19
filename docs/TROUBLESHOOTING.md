# 🛠️ Panduan Pemecahan Masalah (Troubleshooting & FAQ)

Dokumen ini berisi panduan solusi untuk masalah umum yang mungkin dihadapi saat instalasi atau pengoperasian **Delft3D 4 Suite**.

---

## 1. Peringatan Windows Defender SmartScreen ("Windows protected your PC")

### Gejala:
Saat pertama kali menjalankan `Delft3D_4_Suite_4.07.02_AllInOne_Setup.exe`, Windows menampilkan layar biru peringatan SmartScreen.

### Penyebab:
File installer ini adalah build mandiri komunitas (*community build*) yang belum memiliki sertifikat digital komersial berbayar (EV Code Signing Certificate). Windows Defender secara otomatis menampilkan peringatan ini untuk semua file `.exe` baru yang diunduh dari internet.

### Solusi:
1. Pada jendela SmartScreen, klik tautan bertuliskan **"More info"** (*Informasi selengkapnya*).
2. Klik tombol **"Run anyway"** (*Tetap jalankan*).
3. Installer akan berjalan dengan normal.

---

## 2. Kesalahan Library C++ Hilang (`MSVCP140.dll` atau `VCRUNTIME140.dll`)

### Gejala:
Saat membuka Delft3D 4 Menu, RGFGRID, QUICKIN, atau saat memulai perhitungan simulasi, muncul pesan error:  
`The code execution cannot proceed because MSVCP140.dll was not found.` atau `vcruntime140_1.dll was not found.`

### Penyebab:
Komputer target belum memiliki runtime **Microsoft Visual C++ Redistributable (2015-2022 x64)**.

### Solusi:
Unduh dan pasang paket resmi dari Microsoft (bebas biaya):
👉 **[Microsoft Visual C++ 2015–2022 Redistributable (x64)](https://aka.ms/vs/17/release/vc_redist.x64.exe)**  
*(File `vc_redist.x64.exe` juga sudah kami sediakan di dalam folder Google Drive installer).*  
Setelah instalasi selesai, buka kembali Delft3D 4.

---

## 3. Pesan Error "License file not found" atau "Delft3D license missing"

### Gejala:
Aplikasi Delft3D 4 Menu atau modul FLOW/WAVE/WAQ menolak terbuka dan meminta file lisensi yang valid.

### Penyebab:
File lisensi `Delft3D4_GUI_OSS.lic` belum dipasang di folder FlexNet atau path registry belum terdaftar.

### Solusi:
1. Pastikan Anda telah memiliki file lisensi resmi `.lic` dari Deltares (ikuti panduan di [PANDUAN_LISENSI_DELTARES.md](PANDUAN_LISENSI_DELTARES.md)).
2. Pastikan file tersebut diletakkan di:
   ```
   C:\Program Files (x86)\DS_Flex\
   ```
3. Pastikan ekstensi file adalah `.lic` (bukan `.lic.txt`). Di File Explorer, aktifkan opsi *View -> File name extensions*.
4. Buka aplikasi kembali.

---

## 4. Mesin Solver Tidak Ditemukan oleh GUI ("Calculation Engine Not Found")

### Gejala:
Saat memilih menu *Calculation* -> *Execute* pada Delft3D-FLOW atau Delft3D-WAVE, solver tidak berjalan.

### Penyebab:
Direktori kernel (`C:\Program Files\Deltares\Delft3D 4.07.02\kernels\x64\bin`) belum terisi lengkap.

### Solusi:
Buka folder instalasi:
`C:\Program Files\Deltares\Delft3D 4.07.02\kernels\x64\bin`  
Pastikan berkas-berkas berikut ada di folder `bin`:
* `flow2d3d.exe`
* `wave.exe`
* `delwaq.exe`
* `delpar.exe`
* `datsel.exe`, `kubint.exe`, `lint.exe`, `nesthd1.exe`, dll.

Jika berkas-berkas tersebut tidak ada, jalankan kembali installer dan pastikan komponen **Delft3D 4 Core** tercentang saat instalasi.

---

## 5. Menjalankan RGFGRID dan QUICKIN Secara Langsung

### Tips:
Selain dapat dibuka dari dalam menu utama **Delft3D 4**, Anda juga dapat membuka langsung:
* **RGFGRID**: Melalui shortcut Desktop RGFGRID atau di folder:
  `C:\Program Files\Deltares\Delft3D 4.07.02\guis\x64\util\bin\rgfgrid.exe`
* **QUICKIN**: Melalui shortcut Desktop QUICKIN atau di folder:
  `C:\Program Files\Deltares\Delft3D 4.07.02\guis\x64\util\bin\quickin.exe`
* **QUICKPLOT**: Melalui shortcut Desktop QUICKPLOT atau di folder:
  `C:\Program Files\Deltares\Delft3D 4.07.02\tools\quickplot\win64\quickplot\bin\d3d_qp.exe`
