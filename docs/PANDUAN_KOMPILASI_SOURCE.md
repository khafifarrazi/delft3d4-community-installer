# Panduan Teknis & Acuan Kerja: Kompilasi Mandiri Delft3D 4 Suite (d3d4-suite)

Dokumen ini disusun sebagai **Standar Operasional Prosedur (SOP) dan Acuan Kerja Teknis** untuk mengunduh, mengonfigurasi, mengompilasi, dan mengintegrasikan mesin komputasi (*computational kernels*) **Delft3D 4 Suite (4.07.02)** yang bersumber dari repositori resmi [GitHub Deltares/Delft3D](https://github.com/Deltares/Delft3D).

---

## 1. Arsitektur & Konsep Dasar Delft3D 4

Pemisahan arsitektur antara antarmuka dan mesin komputasi pada Delft3D 4:

```
┌────────────────────────────────────────────────────────┐
│         Delft3D 4 Menu & GUI (x64) - Windows           │
│  • Antarmuka visual gratis dari download.deltares.nl   │
│  • C:\Program Files\Deltares\Delft3D 4.07.02\guis\     │
│  • Belum dilengkapi mesin komputasi (kernel kosong)    │
└───────────────────────────┬────────────────────────────┘
                            │ Memanggil berkas eksekusi
                            ▼
┌────────────────────────────────────────────────────────┐
│     Computational Kernels (Delft3D-main di GitHub)     │
│  • flow2d3d.exe (Mesin hidrodinamika & morfologi)      │
│  • wave.exe / swan.exe (Mesin propagasi gelombang)     │
│  • delwaq.exe (Mesin kualitas air & ekologi)           │
│  • delpar.exe (Mesin jejak partikel / tumpahan minyak) │
│  • datsel.exe, kubint.exe, lint.exe, nesthd1/2.exe     │
└────────────────────────────────────────────────────────┘
```

* **Computational Kernels (GitHub)**: Merupakan *engine* komputasi numerik murni dalam Fortran modern dan C/C++.
* **Graphical User Interface (GUI Delft3D Menu)**: Merupakan aplikasi antarmuka visual Windows yang bertugas meluncurkan modul, mendesain grid (RGFGRID), batimetri (QUICKIN), dan visualisasi (QUICKPLOT).
* **Tujuan Akhir Integrasi**: Mengompilasi kode sumber kernel dari konfigurasi `d3d4-suite` menjadi file `.exe` dan pustaka `.dll`, lalu meletakkannya di:
  `C:\Program Files\Deltares\Delft3D 4.07.02\kernels\x64\bin` dan `lib`.

---

## 2. Prasyarat Perangkat Lunak (Prerequisites)

1. **Sistem Operasi**: Windows 10 / 11 64-bit.
2. **Microsoft Visual Studio 2022 / 2026**:
   * Beban kerja: *Desktop development with C++*.
3. **Intel oneAPI Base Toolkit & HPC Toolkit**:
   * Intel® Fortran Compiler (`ifx.exe`).
   * Intel® oneAPI MKL & MPI.
4. **Python 3.10+**:
   * Paket: `pip install conan cmake jinja2 pyyaml`.
5. **Cygwin (atau Git Bash)**:
   * Menyediakan utilitas shell Unix dasar.

---

## 3. Langkah-langkah Kompilasi Native Windows

### Langkah 1: Kloning Kode Sumber
```cmd
git clone https://github.com/Deltares/Delft3D.git D:\Delft3D_Flexible_Mesh\Delft3D-main
```

### Langkah 2: Instalasi Dependensi Pustaka via Conan
```cmd
cd /d D:\Delft3D_Flexible_Mesh\Delft3D-main
python run_conan.py install --output-folder=build_d3d4-suite\conan --profile=delft3d_windows_msvc_195_v1 --build-missing
```

### Langkah 3: Konfigurasi CMake untuk `d3d4-suite`
```cmd
call "C:\Program Files (x86)\Intel\oneAPI\setvars.bat" intel64 vs2026
cmake -S D:\Delft3D_Flexible_Mesh\Delft3D-main\src\cmake -B D:\Delft3D_Flexible_Mesh\Delft3D-main\build_d3d4-suite -DCONFIGURATION_TYPE:STRING=d3d4-suite -DCMAKE_INSTALL_PREFIX=D:\Delft3D_Flexible_Mesh\Delft3D-main\install_d3d4-suite -T fortran=ifx -A x64 -G "Visual Studio 18 2026"
```

### Langkah 4: Kompilasi & Instalasi Biner
```cmd
cmake --build D:\Delft3D_Flexible_Mesh\Delft3D-main\build_d3d4-suite --config Release --parallel
cmake --install D:\Delft3D_Flexible_Mesh\Delft3D-main\build_d3d4-suite --config Release
```

### Langkah 5: Integrasi ke GUI Delft3D 4
Salin hasil kompilasi dari `install_d3d4-suite\` ke dalam direktori instalasi GUI:
* `install_d3d4-suite\bin\*` -> `C:\Program Files\Deltares\Delft3D 4.07.02\kernels\x64\bin\`
* `install_d3d4-suite\lib\*` -> `C:\Program Files\Deltares\Delft3D 4.07.02\kernels\x64\lib\`
* `install_d3d4-suite\share\*` -> `C:\Program Files\Deltares\Delft3D 4.07.02\kernels\x64\share\`

---

## 4. Pengujian & Verifikasi

Buka Command Prompt dan uji eksekusi langsung solver:
```cmd
"C:\Program Files\Deltares\Delft3D 4.07.02\kernels\x64\bin\flow2d3d.exe" --version
```
Jika banner Delft3D-FLOW muncul, mesin perhitungan telah siap digunakan bersama GUI!
