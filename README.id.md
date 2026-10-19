# 🌊 Delft3D 4 Suite (4.07.02) — Installer Komunitas Windows

<p align="center">
  <a href="README.md">English</a> •
  <b>Bahasa Indonesia</b> •
  <a href="README.nl.md">Nederlands</a> •
  <a href="README.es.md">Español</a> •
  <a href="README.fr.md">Français</a> •
  <a href="README.zh.md">中文</a>
</p>

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![Platform](https://img.shields.io/badge/Platform-Windows%20x64-lightgrey.svg)]()
[![Engine](https://img.shields.io/badge/Deltares-Delft3D%204-005fa3.svg)](https://github.com/Deltares/Delft3D)
[![Download Google Drive](https://img.shields.io/badge/Download-Google%20Drive-4285F4?style=flat&logo=googledrive&logoColor=white)](https://drive.google.com/drive/folders/1n4nYRUO1JAszAicliTmhP5IbFDc4uOIP?usp=sharing)
[![Release](https://img.shields.io/badge/Release-4.07.02%20All--in--One-brightgreen.svg)](../../releases)
[![Citation](https://img.shields.io/badge/Cite%20this%20repo-CITATION.cff-orange.svg)](CITATION.cff)

> **⚠️ Pernyataan Hak Cipta & Penafian Hukum:**  
> Repositori ini merupakan inisiatif komunitas independen (*Distribusi & Pengemasan Komunitas Tidak Resmi*) untuk mempermudah mahasiswa, akademisi, peneliti, dan praktisi teknik pantai/hidrodinamika dalam memasang **Delft3D 4 Suite (Versi 4.07.02)** pada sistem operasi Windows 64-bit secara instan tanpa proses kompilasi manual yang rumit.  
> Seluruh kode sumber, mesin komputasi (*calculation kernels*), dan antarmuka pengguna grafis (*Delft3D Menu, RGFGRID, QUICKIN*) merupakan hak cipta milik **[Stichting Deltares](https://www.deltares.nl/)**, Delft, Belanda. Proyek ini **tidak berafiliasi resmi dengan Deltares**, dan disediakan murni sesuai lisensi Open Source resmi dari Deltares.

---

## 🏗️ Gambaran Arsitektur Sistem

Diagram berikut menunjukkan bagaimana antarmuka Delft3D 4 Menu, utilitas persiapan grid (pre-processing), mesin solver hidrodinamika, dan pasca-pemrosesan (post-processing) terintegrasi dalam paket instalasi ini:

```mermaid
graph TD
    User([Pengguna / Peneliti / Praktisi]) --> MENU["Delft3D 4 Menu (d3d_menu.exe)"]
    
    subgraph Utilitas Pra-Pemrosesan Grid & Batimetri
        MENU --> RGFGRID["RGFGRID (Pembuat Grid Kurvilinear Ortogonal)"]
        MENU --> QUICKIN["QUICKIN (Interpolasi Batimetri & Kedalaman)"]
    end
    
    subgraph Mesin Solver Numerik [x64 Kernels]
        MENU --> FLOW["Delft3D-FLOW (flow2d3d.exe) - Hidrodinamika & Morfologi"]
        MENU --> WAVE["Delft3D-WAVE (wave.exe / SWAN) - Propagasi Gelombang Spektral"]
        MENU --> WAQ["Delft3D-WAQ (delwaq.exe) - Kualitas Air & Ekologi"]
        MENU --> PART["Delft3D-PART (delpar.exe) - Pelacak Partikel & Tumpahan Minyak"]
    end

    subgraph Pustaka Komputasi Kinerja Tinggi (HPC)
        FLOW -.-> MKL["Intel oneAPI MKL"]
        FLOW -.-> MPI["Intel MPI / OpenMP Multithreading"]
        FLOW -.-> NETCDF["NetCDF & HDF5"]
    end

    subgraph Pasca-Pemrosesan & Visualisasi
        FLOW --> Output[("Hasil Simulasi (trim-*.dat/.def, com-*.dat)")]
        Output --> QP["QUICKPLOT Tool 2.72 (d3d_qp.exe)"]
    end
```

---

## 📚 Panduan Lengkap & Dokumentasi Teknis

Panduan mendalam tersedia pada direktori [`docs/`](docs/):

| Panduan | Penjelasan |
| :--- | :--- |
| 📖 [**Panduan Instalasi Lengkap**](docs/PANDUAN_INSTALASI.md) | Langkah-langkah detail menjalankan installer mandiri |
| 🔑 [**Panduan Lisensi Resmi Deltares**](docs/PANDUAN_LISENSI_DELTARES.md) | Cara mendapatkan lisensi resmi gratis (**€ 0.00**) langsung dari portal Deltares |
| 🛠️ [**Solusi Kendala (Troubleshooting)**](docs/TROUBLESHOOTING.md) | Mengatasi runtime Visual C++, peringatan SmartScreen, dan registri FlexNet |
| ⚙️ [**Panduan Kompilasi Source Code**](docs/PANDUAN_KOMPILASI_SOURCE.md) | Panduan bagi pengembang yang ingin mengompilasi kernel dari kode sumber |
| 🛡️ [**Kebijakan Privasi & Keamanan**](SECURITY.md) | Jaminan perlindungan privasi, tanpa telemetri, dan bebas dari lisensi privat |

---

## 📦 Apa Saja yang Termasuk dalam Paket All-in-One Ini?

Paket installer tunggal ini menyatukan seluruh ekosistem pemodelan Delft3D 4:

1. **Delft3D 4 Menu & Modul GUI (4.07.02)**: Antarmuka pemodelan klasik Deltares untuk modul FLOW, WAVE, WAQ, PART, dan TIDE.
2. **Utilitas Pra-Pemrosesan Grid & Batimetri**:
   * **RGFGRID**: Generator grid kurvilinear ortogonal untuk perairan pantai, sungai, estuari, dan danau.
   * **QUICKIN**: Alat interpolasi kedalaman, batimetri, dan koefisien kekasaran dengan triangulasi otomatis.
3. **Mesin Komputasi Numerik Lengkap 64-bit (Kernels)**:
   * **Delft3D-FLOW (`flow2d3d.exe`)**: Solver hidrodinamika aliran non-stasioner 2D/3D dan transpor sedimen.
   * **Delft3D-WAVE (`wave.exe` & SWAN)**: Simulasi gelombang acak jarak pendek (wind-wave).
   * **Delft3D-WAQ (`delwaq.exe`)**: Simulasi kualitas air multidimensi, dispersi polutan, dan oksigen terlarut.
   * **Delft3D-PART (`delpar.exe`)**: Pemodelan jejak partikel untuk simulasi tumpahan minyak dan sedimentasi.
   * Program utilitas: `datsel.exe`, `kubint.exe`, `lint.exe`, `nesthd1.exe`, `nesthd2.exe`, `run_delwaq.bat`, dll.
4. **QUICKPLOT Tool 2.72 (Windows 64-bit)**: Visualisasi kurva waktu, penampang melintang, vektor arus, dan animasi medan tinggi muka air.
5. **Otomatisasi Lingkungan Lisensi FlexNet**: Installer secara otomatis menyiapkan direktori target (`C:\Program Files (x86)\DS_Flex`) dan entri registry Windows yang diperlukan.

---

## 🔒 Privasi & Perlindungan Data Pengguna

> [!IMPORTANT]
> Untuk melindungi privasi dan integritas data pengguna, paket installer ini **TIDAK memuat file lisensi pribadi siapapun**. Setiap pengguna diarahkan untuk memperoleh file lisensi resmi gratis (**€ 0.00**) langsung dari portal resmi Deltares atas nama sendiri (hanya butuh waktu sekitar 2 menit).

### Cara Memperoleh Lisensi Resmi Gratis dari Deltares:
1. Kunjungi portal resmi: [Deltares Delft3D 4 Open Source GUI](https://download.deltares.nl/delft3d-4-suite-graphical-user-interface-gui-open-source).
2. Klik tombol **"Order"** / **"Add to Cart"** (Biaya: **€ 0.00 / Gratis**), lalu lanjutkan ke **Checkout**.
3. Masukkan nama, institusi/universitas, dan alamat email Anda, lalu klik **Submit Order**.
4. Buka email masuk Anda dan unduh file lisensi `.lic` (misalnya `Delft3D4_GUI_OSS.lic`).  
*(Panduan bergambar lengkap tersedia di [docs/PANDUAN_LISENSI_DELTARES.md](docs/PANDUAN_LISENSI_DELTARES.md))*.

---

## 🚀 Pengunduhan & Instalasi

### 1. Unduh File Installer

Anda dapat langsung mengunduh file installer mandiri dari tautan penyimpanan awan berikut tanpa perlu melakukan kompilasi kode sumber:

| Sumber Unduhan | Tautan Unduhan | Keterangan |
| :--- | :---: | :--- |
| 🚀 **Google Drive (Direkomendasikan)** | [**Unduh via Google Drive**](https://drive.google.com/drive/folders/1n4nYRUO1JAszAicliTmhP5IbFDc4uOIP?usp=sharing) | Unduhan berkecepatan tinggi, langsung siap pasang |
| 📦 **GitHub Releases** | [**Unduh via GitHub Releases**](../../releases) | Mirror rilis biner resmi repositori GitHub |

> **Informasi File:**
> * **Nama Berkas**: `Delft3D_4_Suite_4.07.02_AllInOne_Setup.exe`
> * **Arsitektur**: Windows 64-bit (x64)
> * *(Catatan: Folder Google Drive juga memuat file opsional `vc_redist.x64.exe` jika komputer Anda belum memiliki Microsoft Visual C++ runtime).*

### 2. Jalankan Wisaya Instalasi (Setup Wizard)
1. Klik kanan pada `Delft3D_4_Suite_4.07.02_AllInOne_Setup.exe`, pilih **Run as administrator**.
2. Pilih komponen yang diinginkan (Delft3D 4 Core GUI & Kernels, RGFGRID, QUICKIN, QUICKPLOT).
3. **Konfigurasi Lisensi:**
   * **Opsi 1 (Direkomendasikan):** Pilih *"Pilih file lisensi (.lic) resmi yang sudah saya peroleh dari Deltares"* -> Klik **Browse** -> Pilih file lisensi `Delft3D4_GUI_OSS.lic` milik Anda. Installer akan otomatis menyalin dan mengonfigurasi lisensi tersebut.
   * **Opsi 2:** Pilih *"Lewati"* jika Anda ingin menyalin lisensi secara manual ke `C:\Program Files (x86)\DS_Flex\` di kemudian hari.
4. Klik **Install**. Delft3D 4 siap digunakan langsung melalui jalan pintas Desktop maupun menu Start!

---

## 🔗 Tautan Resmi Deltares (Upstream)

Untuk dokumentasi ilmiah, kode sumber asli, dan forum diskusi:
* 🌐 **Situs Resmi Deltares**: [https://www.deltares.nl/](https://www.deltares.nl/)
* 💻 **Repositori Kode Sumber**: [https://github.com/Deltares/Delft3D](https://github.com/Deltares/Delft3D)
* 📥 **Portal Unduhan & Lisensi**: [https://download.deltares.nl/](https://download.deltares.nl/)
* 📚 **Dokumentasi & Manual Delft3D 4**: [https://oss.deltares.nl/web/delft3d](https://oss.deltares.nl/web/delft3d)
* 💬 **Forum Diskusi Komunitas**: [Deltares GitHub Discussions](https://github.com/Deltares/Delft3D/discussions)

---

## 📖 Sitasi Akademik

Jika Anda memanfaatkan distribusi komunitas ini atau Delft3D 4 dalam penelitian, tugas akhir, skripsi, tesis, disertasi, atau publikasi jurnal ilmiah, **sangat disarankan mencantumkan sitasi resmi Deltares**:

### Format APA:
> Deltares. (2026). *Delft3D 4 Suite: Hydrodynamics, Waves, Water Quality and Morphology Simulation System for Curvilinear Grids*. Stichting Deltares, Delft, The Netherlands. https://www.deltares.nl/en/software-and-data/products/delft3d-4-suite

### Format BibTeX:
```bibtex
@manual{DeltaresDelft3D4Suite,
  author       = {{Deltares}},
  title        = {{Delft3D 4 Suite: Integrated Hydrodynamics, Wave, Sediment Transport and Water Quality Simulation System}},
  organization = {Stichting Deltares},
  address      = {Delft, The Netherlands},
  year         = {2026},
  url          = {https://oss.deltares.nl/web/delft3d}
}
```

---

## 📄 Lisensi & Hak Penggunaan

- **Mesin Komputasi & Kode Sumber Deltares**: Dilisensikan di bawah lisensi GNU General Public License v3.0 (GPLv3) dan LGPLv3 oleh Stichting Deltares.
- **Skrip Pemasang (Installer) & Pengemasan**: Dilisensikan di bawah Lisensi MIT.
