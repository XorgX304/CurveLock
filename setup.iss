; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "CurveLock"
#define MyAppVersion "0.2"
#define MyAppPublisher "Adam Caudill"
#define MyAppURL "https://adamcaudill.com/curvelock/"
#define MyAppExeName "CurveLock.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{4E555818-8D8E-4168-B912-52CC0890EB78}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
LicenseFile=LICENSE
OutputDir=_signing
OutputBaseFilename=setup-curvelock-{#MyAppVersion}
Compression=lzma
SolidCompression=yes
UninstallDisplayIcon={app}\{#MyAppExeName}

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "_signing\bin\CurveLock.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "_signing\bin\Base58Check.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "_signing\bin\Zxcvbn.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "_signing\bin\CLCore.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "_signing\bin\libsodium.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "_signing\bin\libsodium-64.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "_signing\bin\protobuf-net.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "_signing\bin\Sodium.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "_signing\bin\StreamCryptor.dll"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
