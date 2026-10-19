# 📋 Catatan Rilis & Riwayat Perubahan (Changelog)

Semua perubahan dan rilis penting untuk paket installer komunitas **Delft3D 4 Suite** didokumentasikan dalam berkas ini.

---

## [4.07.02-community-1.0.0] - 2026-10-19

### Ditambahkan (Added)
- **All-in-One Installer Windows (x64)**: Paket pemasangan terpadu untuk Delft3D 4 Suite Versi 4.07.02.
- **64-bit Calculation Kernels Terintegrasi**:
  - `flow2d3d.exe` (Delft3D-FLOW - Hidrodinamika & Transpor Sedimen).
  - `wave.exe` & `swan.exe` (Delft3D-WAVE - Transformasi Gelombang).
  - `delwaq.exe` (Delft3D-WAQ - Kualitas Air & Biokimia).
  - `delpar.exe` (Delft3D-PART - Pelacakan Partikel).
  - Utilitas pendukung: `datsel.exe`, `kubint.exe`, `lint.exe`, `nesthd1.exe`, `nesthd2.exe`.
- **Integrasi Pre-processor & Post-processor**:
  - `rgfgrid.exe` (Pembuat Grid Kurvilinear Ortogonal).
  - `quickin.exe` (Interpolasi Kedalaman & Batimetri).
  - `QUICKPLOT 2.72` (Visualisasi Data & Analisis).
- **Wisaya Konfigurasi Lisensi Otomatis**: Mendukung pemilihan berkas lisensi resmi (`Delft3D4_GUI_OSS.lic`) secara interaktif saat instalasi.
- **Dokumentasi Multi-Bahasa**: README dalam 6 bahasa (Inggris, Indonesia, Belanda, Spanyol, Prancis, Mandarin).
- **Atribusi Hak Cipta & Sitasi Ilmiah**: File `CITATION.cff` dan panduan sitasi resmi ke Deltares.
