; ==============================================================================
; Inno Setup Script: Delft3D 4 Suite (All-In-One Installer)
; Bundling: Delft3D Menu GUI + 64-bit Calculation Kernels + QuickPlot + Manuals + License
; ==============================================================================

#define MyAppName "Delft3D 4 Suite"
#define MyAppVersion "4.07.02"
#define MyAppPublisher "Deltares & Community Open Source Build"
#define MyAppURL "https://oss.deltares.nl/web/delft3d"
#define MyAppExeName "d3d_menu.bat"

[Setup]
AppId={{8B321947-975B-4AC7-B22A-4D7166CF4E21}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\Deltares\Delft3D 4.07.02
DefaultGroupName=Deltares\Delft3D 4.07.02
DisableProgramGroupPage=no
OutputBaseFilename=Delft3D_4_Suite_4.07.02_AllInOne_Setup
OutputDir=D:\Delft3D_Flexible_Mesh\Installer_Output
SetupIconFile=D:\Delft3D_Flexible_Mesh\delft3d4_app.ico
UninstallDisplayIcon={app}\guis\x64\icon\Delft3D.ico
Compression=lzma2/ultra64
SolidCompression=yes
ArchitecturesInstallIn64BitMode=x64compatible
PrivilegesRequired=admin
PrivilegesRequiredOverridesAllowed=dialog
WizardStyle=modern
DisableWelcomePage=no
ShowLanguageDialog=no

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Types]
Name: "full"; Description: "Instalasi Lengkap (Direkomendasikan)"
Name: "compact"; Description: "Instalasi Minimum (Hanya GUI & Mesin Solver)"
Name: "custom"; Description: "Instalasi Kustom"; Flags: iscustom

[Components]
Name: "core"; Description: "Delft3D 4 Core (Delft3D Menu + Mesin Solver FLOW, WAVE, WAQ, PART, TIDE)"; Types: full compact custom; Flags: fixed
Name: "rgfgrid"; Description: "RGFGRID (Utilitas Pembuat Grid Kurvilinear Ortogonal)"; Types: full custom
Name: "quickin"; Description: "QUICKIN (Utilitas Interpolasi Kedalaman & Batimetri)"; Types: full custom
Name: "quickplot"; Description: "QUICKPLOT Tool (Visualisasi kurva, profil, vektor arus, dan peta)"; Types: full custom

[Tasks]
Name: "desktopicon"; Description: "Buat shortcut Delft3D 4 Menu di Desktop"; GroupDescription: "{cm:AdditionalIcons}"
Name: "rgfgriddesktopicon"; Description: "Buat shortcut RGFGRID di Desktop"; GroupDescription: "{cm:AdditionalIcons}"; Components: rgfgrid
Name: "quickindesktopicon"; Description: "Buat shortcut QUICKIN di Desktop"; GroupDescription: "{cm:AdditionalIcons}"; Components: quickin
Name: "quickplotdesktopicon"; Description: "Buat shortcut QUICKPLOT di Desktop"; GroupDescription: "{cm:AdditionalIcons}"; Components: quickplot

[Files]
; --- 1. Delft3D 4 Suite GUI Base Files ---
Source: "C:\Program Files\Deltares\Delft3D 4.07.02\*"; DestDir: "{app}"; Excludes: "kernels\*"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: core

; --- 2. Compiled 64-bit Calculation Kernels ---
Source: "D:\Delft3D_Flexible_Mesh\Delft3D-main\install_d3d4-suite\bin\*"; DestDir: "{app}\kernels\x64\bin"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: core
Source: "D:\Delft3D_Flexible_Mesh\Delft3D-main\install_d3d4-suite\share\*"; DestDir: "{app}\kernels\x64\share"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: core

; --- 3. QUICKPLOT Tool ---
Source: "D:\Delft3D_Flexible_Mesh\QUICKPLOT\QUICKPLOT 2.72.c429e046e (Windows 64bit)\*"; DestDir: "{app}\tools\quickplot"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: quickplot

; --- 4. Manuals & Documentation ---
Source: "D:\Delft3D_Flexible_Mesh\Delft3D 4 Suite 4.07.02 OpenHMWQ\Delft3D-Installation_Manual.pdf"; DestDir: "{app}\manuals"; Flags: ignoreversion
Source: "D:\Delft3D_Flexible_Mesh\Delft3D 4 Suite 4.07.02 OpenHMWQ\delft3d_4.07.02_release_notes.pdf"; DestDir: "{app}\release_notes"; Flags: ignoreversion

[Icons]
; Shortcut Menu Utama Delft3D 4
Name: "{group}\{#MyAppName} 4.07.02"; Filename: "{app}\guis\x64\d3d_menu.bat"; WorkingDir: "{userdocs}\Deltares\Delft3D 4.07.02"; IconFilename: "{app}\guis\x64\icon\Delft3D.ico"
Name: "{autodesktop}\{#MyAppName} 4.07.02"; Filename: "{app}\guis\x64\d3d_menu.bat"; WorkingDir: "{userdocs}\Deltares\Delft3D 4.07.02"; IconFilename: "{app}\guis\x64\icon\Delft3D.ico"; Tasks: desktopicon

; Shortcut RGFGRID
Name: "{group}\RGFGRID (Grid Generator)"; Filename: "{app}\guis\x64\util\bin\rgfgrid.exe"; WorkingDir: "{userdocs}\Deltares\Delft3D 4.07.02"; Components: rgfgrid
Name: "{autodesktop}\RGFGRID"; Filename: "{app}\guis\x64\util\bin\rgfgrid.exe"; WorkingDir: "{userdocs}\Deltares\Delft3D 4.07.02"; Components: rgfgrid; Tasks: rgfgriddesktopicon

; Shortcut QUICKIN
Name: "{group}\QUICKIN (Bathymetry Interpolator)"; Filename: "{app}\guis\x64\util\bin\quickin.exe"; WorkingDir: "{userdocs}\Deltares\Delft3D 4.07.02"; Components: quickin
Name: "{autodesktop}\QUICKIN"; Filename: "{app}\guis\x64\util\bin\quickin.exe"; WorkingDir: "{userdocs}\Deltares\Delft3D 4.07.02"; Components: quickin; Tasks: quickindesktopicon

; Shortcut QuickPlot
Name: "{group}\QUICKPLOT"; Filename: "{app}\tools\quickplot\win64\quickplot\bin\d3d_qp.exe"; Components: quickplot
Name: "{autodesktop}\QUICKPLOT"; Filename: "{app}\tools\quickplot\win64\quickplot\bin\d3d_qp.exe"; Components: quickplot; Tasks: quickplotdesktopicon

; Shortcut Panduan & Uninstall
Name: "{group}\Panduan Instalasi & Penggunaan"; Filename: "{app}\manuals\Delft3D-Installation_Manual.pdf"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"

[Run]
Filename: "{app}\guis\x64\d3d_menu.bat"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[Code]
var
  LicenseModePage: TInputOptionWizardPage;
  LicenseFilePage: TInputFileWizardPage;

procedure InitializeWizard;
begin
  // Halaman Opsi Lisensi (Privasi Terjamin: Tanpa lisensi pribadi)
  LicenseModePage := CreateInputOptionPage(
    wpSelectProgramGroup,
    'Konfigurasi Lisensi Delft3D 4 Suite',
    'Tentukan file lisensi resmi (.lic) Anda untuk mengaktifkan aplikasi.',
    'Aplikasi ini memerlukan file lisensi (.lic) resmi dari Deltares.' + #13#10 +
    'Untuk menjaga privasi dan keamanan data, paket ini tidak menyertakan data lisensi pribadi.' + #13#10#13#10 +
    'Anda dapat memperoleh lisensi resmi gratis atas nama Anda sendiri di: https://download.deltares.nl/' + #13#10#13#10 +
    'Silakan pilih opsi lisensi:',
    True, False);

  LicenseModePage.Add('Pilih file lisensi (.lic) resmi yang sudah saya peroleh dari Deltares (Direkomendasikan)');
  LicenseModePage.Add('Lewati (Saya akan mengunduh dan menyalin lisensi secara manual nanti)');

  LicenseModePage.SelectedValueIndex := 0;

  LicenseFilePage := CreateInputFilePage(
    LicenseModePage.ID,
    'Pilih File Lisensi Resmi Anda',
    'Tentukan lokasi file lisensi (.lic) yang Anda peroleh dari Deltares.',
    'Klik tombol Browse untuk memilih file lisensi (.lic) Anda:');

  LicenseFilePage.Add(
    'File Lisensi (*.lic):',
    'License Files (*.lic)|*.lic|All files (*.*)|*.*',
    '.lic');
end;

function ShouldSkipPage(PageID: Integer): Boolean;
begin
  Result := False;
  if PageID = LicenseFilePage.ID then
  begin
    if LicenseModePage.SelectedValueIndex <> 0 then
      Result := True;
  end;
end;

function NextButtonClick(CurPageID: Integer): Boolean;
begin
  Result := True;
  if CurPageID = LicenseFilePage.ID then
  begin
    if (LicenseFilePage.Values[0] = '') or (not FileExists(LicenseFilePage.Values[0])) then
    begin
      MsgBox('File lisensi yang Anda pilih tidak ditemukan atau belum dipilih.' + #13#10#13#10 +
             'Silakan pilih file lisensi (.lic) yang valid, atau klik tombol Back lalu pilih opsi "Lewati" jika belum memiliki file lisensi saat ini.', mbError, MB_OK);
      Result := False;
    end;
  end;
end;

procedure CurStepChanged(CurStep: TSetupStep);
var
  TargetLicDir: String;
  TargetLicFile: String;
  SourceLicFile: String;
begin
  if CurStep = ssPostInstall then
  begin
    TargetLicDir := ExpandConstant('{commonpf32}\DS_Flex');
    if not DirExists(TargetLicDir) then
      ForceDirectories(TargetLicDir);

    // Konfigurasi Registry FlexNet standar Deltares
    RegWriteStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\WOW6432Node\FLEXlm License Manager', 'DHSDELFT_LICENSE_FILE', ';' + TargetLicDir + ';');

    if LicenseModePage.SelectedValueIndex = 0 then
    begin
      SourceLicFile := LicenseFilePage.Values[0];
      if (SourceLicFile <> '') and FileExists(SourceLicFile) then
      begin
        TargetLicFile := TargetLicDir + '\' + ExtractFileName(SourceLicFile);
        FileCopy(SourceLicFile, TargetLicFile, False);
        RegWriteStringValue(HKEY_CURRENT_USER, 'Software\FLEXlm License Manager', 'DHSDELFT_LICENSE_FILE', TargetLicFile + ';' + TargetLicDir);
      end;
    end;
  end;
end;
