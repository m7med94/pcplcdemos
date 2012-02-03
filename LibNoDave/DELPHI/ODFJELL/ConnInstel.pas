unit ConnInstel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TConnForm = class(TForm)
    Edit_IP_FFU: TEdit;
    Label1: TLabel;
    ButtonToepassen: TButton;
    ButtonExit: TButton;
    Label2: TLabel;
    Edit_Rack_FFU: TEdit;
    Label3: TLabel;
    Edit_SLot_FFU: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit_IP_BGB: TEdit;
    Edit_Rack_BGB: TEdit;
    Edit_SLot_BGB: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure ButtonExitClick(Sender: TObject);
    procedure ButtonToepassenClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConnForm: TConnForm;

implementation

uses  Main, FFU;

{$R *.dfm}

procedure TConnForm.ButtonToepassenClick(Sender: TObject);
begin
  MainForm.IP_Siemens_FFU := Edit_IP_FFU.Text;
  MainForm.rack_FFU       := Edit_Rack_FFU.Text;
  MainForm.slot_FFU       := Edit_Slot_FFU.Text;
  MainForm.IP_Siemens_BGB := Edit_IP_BGB.Text;
  MainForm.rack_BGB       := Edit_Rack_BGB.Text;
  MainForm.slot_BGB       := Edit_Slot_BGB.Text;
  ConnForm.Hide;
end;

procedure TConnForm.ButtonExitClick(Sender: TObject);
begin
  ConnForm.Hide;
end;

procedure TConnForm.FormActivate(Sender: TObject);
begin
  Edit_IP_FFU.Text   := MainForm.IP_Siemens_FFU;
  Edit_Rack_FFU.Text := MainForm.rack_FFU;
  Edit_Slot_FFU.Text := MainForm.slot_FFU;
  Edit_IP_BGB.Text   := MainForm.IP_Siemens_BGB;
  Edit_Rack_BGB.Text := MainForm.rack_BGB;
  Edit_Slot_BGB.Text := MainForm.slot_BGB;
end;

end.
