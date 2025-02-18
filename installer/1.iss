; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "CapelonTestStation"
#define MyAppVersion "0.6.27"
#define MyAppPublisher "Capelon AB"
#define MyAppURL "https://www.capelon.se"
#define MyAppExeName "CapelonTestStation.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{3F5AF25D-9301-453F-9D90-812BB0801CFF}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
LicenseFile=d:\Upwork\Capelon\CapelonTestStation_installer\lic.txt
InfoAfterFile=d:\Upwork\Capelon\CapelonTestStation_installer\third_party.txt
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputDir=d:\Upwork\Capelon\CapelonTestStation_installer
OutputBaseFilename=CapelonTestStationSetup
SetupIconFile=d:\Upwork\Capelon\CapelonTestStation_installer\appIcon.ico
WizardImageFile=d:\Upwork\Capelon\CapelonTestStation_installer\finish.bmp
WizardImageStretch=no
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
;Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "d:\Upwork\Capelon\CapelonTestStation_installer\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "d:\Upwork\Capelon\CapelonTestStation_installer\files\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "d:\Upwork\Capelon\CapelonTestStation_installer\settings_files\*"; DestDir: "{localappdata}\{#MyAppPublisher}\{#MyAppName}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

