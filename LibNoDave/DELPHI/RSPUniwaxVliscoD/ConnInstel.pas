unit ConnInstel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TConnForm = class(TForm)
    Edit_IP: TEdit;
    Label1: TLabel;
    ButtonToepassen: TButton;
    ButtonExit: TButton;
    Label2: TLabel;
    Edit_RAck: TEdit;
    Label3: TLabel;
    Edit_SLot: TEdit;
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


{$R *.dfm}

procedure TConnForm.ButtonToepassenClick(Sender: TObject);
begin
  HoofdForm.IP_Siemens := Edit_IP.Text;
  HoofdForm.CPURack := Edit_Rack.Text;
  HoofdForm.CPUSlot := Edit_Slot.Text;
  ConnForm.Hide;
end;

procedure TConnForm.ButtonExitClick(Sender: TObject);
begin
  ConnForm.Hide;
end;

procedure TConnForm.FormActivate(Sender: TObject);
begin
  Edit_IP.Text := HoofdForm.IP_Siemens;
  Edit_Rack.Text := HoofdForm.CPURack;
  Edit_Slot.Text := HoofdForm.CPUSlot;
end;

end.
