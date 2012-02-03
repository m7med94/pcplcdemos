program testiSiemensNoDave;

uses
  Forms,
  Main in 'Main.pas' {MainForm},
  Info in 'Info.pas' {InfoForm},
  nodave in 'nodave.pas',
  ConnInstel in 'ConnInstel.pas' {ConnForm},
  MahBit8 in 'MahBit8.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Test Siemens NoDave';
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TInfoForm, InfoForm);
  Application.CreateForm(TConnForm, ConnForm);
  Application.Run;
end.
