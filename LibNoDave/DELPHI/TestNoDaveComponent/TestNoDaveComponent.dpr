// NoDaveDemo.dpr

program TestNoDaveComponent;

uses
  Forms,
  Main in 'Main.pas' {MainForm},
  Editor in 'Editor.pas' {ConnectionEditor},
  SZLView in 'SZLView.pas' {SZLViewer},
  MahBit16 in 'MahBit16.pas',
  MahBit8 in 'MahBit8.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'BasisNoDaveComp';
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TConnectionEditor, ConnectionEditor);
  Application.CreateForm(TSZLViewer, SZLViewer);
  Application.Run;
end.
