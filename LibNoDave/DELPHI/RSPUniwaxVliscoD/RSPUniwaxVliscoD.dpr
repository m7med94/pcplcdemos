program RSPUniwaxVliscoD;

uses
  Forms,
  Main in 'Main.pas' {MainForm},
  Instellingen in 'Instellingen.pas' {InstelForm},
  Info in 'Info.pas' {InfoForm},
  nodave in 'nodave.pas',
  MahBit8 in 'MahBit8.pas',
  Editor in 'Editor.pas' {ConnectionEditor},
  MahBit16 in 'MahBit16.pas',
  SetValue in 'SetValue.pas' {FormSetValue};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'RSPUniwaxVliscoD';
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TInstelForm, InstelForm);
  Application.CreateForm(TInstelForm, InstelForm);
  Application.CreateForm(TInfoForm, InfoForm);
  Application.CreateForm(TConnectionEditor, ConnectionEditor);
  Application.CreateForm(TFormSetValue, FormSetValue);
  Application.Run;
end.
