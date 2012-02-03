unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ComCtrls, Menus, Buttons, ExtCtrls, ExtDlgs, StrUtils,
  StdCtrls, Registry, nodave, Spin,  MahBit8;

type
TMainForm = class(TForm)
    ToolBar1: TToolBar;
    StatusBar1: TStatusBar;
    SBCon: TSpeedButton;
    SBVerbOpties: TSpeedButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    OpenTextFileDialog1: TOpenTextFileDialog;
    Timer1: TTimer;
    SBInstel: TSpeedButton;
    SBdiscon: TSpeedButton;
    SimulatieAan: TSpeedButton;
    SBSim: TSpeedButton;
    SimulatieUit: TSpeedButton;
    MainMenu1: TMainMenu;
    Exit1: TMenuItem;
    Connection1: TMenuItem;
    Online1: TMenuItem;
    Offline1: TMenuItem;
    N3: TMenuItem;
    ConnectionSettings: TMenuItem;
    Instellingen1: TMenuItem;
    Info1: TMenuItem;
    if1: TMenuItem;
    SpinEdit3: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit1: TSpinEdit;
    Label99: TLabel;
    LabelRes: TLabel;
    Th_pomp_P3613: TCheckBox;
    Fo_pomp_P3613: TCheckBox;
    Sch_pomp_P3613: TCheckBox;
    pomp_P3613: TAnimate;
    Mcc_pomp_P3613: TCheckBox;
    TrackBar10: TTrackBar;
    Label49: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    LabelByteOutput: TLabel;
    LabelByteInput: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure SimulatieAanClick(Sender: TObject);
    procedure SimulatieUitClick(Sender: TObject);
    procedure if1Click(Sender: TObject);
    procedure ConnectionSettingsClick(Sender: TObject);
    procedure Offline1Click(Sender: TObject);
    procedure Online1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    function  TimeToReal(Time:TDateTime):real;
    procedure MaakVerbinding;
    procedure VerbrVerbinding;
    procedure MenuAct;
    procedure SetToolBar;
    procedure aria3600;
    procedure testDB;

  private
    { Private declarations }
    verbinding : boolean;
    oBit8  : TBit8;
    dc   : pdaveConnection;
    dcIn : pdaveInterface;

    uitgangen: Array[0..15] of byte;
    ingangen:  Array[0..44] of byte;
    aUit, aIn, bUit, bMel, bSch, bMcc , bFsb, bThr, bFo, bTh : byte;

  public
    { Public declarations }

    IP_Siemens  : string;
    rack  : string;
    slot  : string;
    ProjectDir  : string;
    CommonDir   : string;
    DataDir     : string;
    SimActief   : boolean;
    OS_Connect  : boolean;
    RetMessage  : string;
    readOK : boolean;

 end;

var
  MainForm: TMainForm;

implementation

uses   Info, ConnInstel;

{$R *.dfm}

procedure TMainForm.Exit1Click(Sender: TObject);
begin
  application.Terminate;
end;

procedure TMainForm.FormCreate(Sender: TObject);
var
  PrBufReg:TRegIniFile;
  begin
  verbinding := false;
  SimActief  := false;
  PrBufReg  := TRegIniFile.Create('Software\TestSiemensNoDave');

  IP_Siemens := PrBufReg.ReadString('PLC','IP_Siemens','130.143.128.11');
  rack := PrBufReg.ReadString('PLC','rack','0');
  slot := PrBufReg.ReadString('PLC','slot','2');

  PrBufReg.Free;
  ProjectDir:=ExtractFilePath(application.ExeName);
  MenuAct;

  aUit :=0; aIn:=0;
  bUit:=0; bMcc :=0; bSch :=0; bMel :=0; bFsb:=0; bThr :=0; bFo :=0; bTh :=0;

  //AREA 3600, 3800, FLOTATIE
  pomp_P3613.FileName  := ProjectDir + '\Pics\FFU.avi';
  pomp_P3613.Stop;
  pomp_P3613.Seek(4);
  Mcc_pomp_P3613.Checked := true;
  Sch_pomp_P3613.Checked := true;
  Fo_pomp_P3613.Checked := true;
  Th_pomp_P3613.Checked := true;

end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
var
  PrBufReg:TRegIniFile;
begin
  //Schrijf instellingen in registry
  PrBufReg := TRegIniFile.Create('Software\TestSiemensNoDave');
  PrBufReg.WriteString('Dir','CommonDir',CommonDir);
  PrBufReg.WriteString('Dir','DataDir',DataDir);

//  PrBufReg.WriteBool('Instellingen','ChBox0',InitVar[0]);
  PrBufReg.WriteString('PLC','IP_Siemens',IP_Siemens);
  PrBufReg.WriteString('PLC','rack',rack);
  PrBufReg.WriteString('PLC','slot',slot);

  PrBufReg.Free;

end;

procedure TMainForm.MenuAct;
begin
    SBcon.Visible    :=  not verbinding;
    SBdiscon.Visible := verbinding;
    SBVerbOpties.Enabled := not verbinding;
    MainMenu1.Items[1].Items[0].Checked := verbinding;
    MainMenu1.Items[1].Items[0].Enabled := not verbinding;
    MainMenu1.Items[1].Items[1].Checked := not verbinding;
    MainMenu1.Items[1].Items[1].Enabled := verbinding;
    MainMenu1.Items[1].Items[3].Enabled := not verbinding;
    SimulatieAan.Visible := not SimActief;
    SimulatieUit.Visible := SimActief;
    SBSim.Enabled := verbinding;
end;

procedure TMainForm.SetToolBar;
begin
      if(SimActief) then
      begin
        StatusBar1.Panels[3].Text:='Sim AAN';
      end else
      begin
        StatusBar1.Panels[3].Text:='Sim UIT';
      end;
      MenuAct;
end;

procedure TMainForm.Online1Click(Sender: TObject);
begin
  MaakVerbinding;
end;

procedure TMainForm.Offline1Click(Sender: TObject);
begin
  VerbrVerbinding;
end;

procedure TMainForm.ConnectionSettingsClick(Sender: TObject);
begin
  ConnForm.show;
  StatusBar1.Panels[0].Text:=RetMessage;
end;

procedure TMainForm.MaakVerbinding;
Var
 ComName:Array[0..20] of Char;
 Fds:_daveOSserialType;
 S:String;
 I,N:Integer;
begin
    S:=Trim(IP_Siemens);
    For I:=1 To Length(S) Do
      ComName[I-1]:=S[I];

    ComName[Length(S)]:=#0;
    StatusBar1.Panels[0].Text:='IpAdres: '+ComName+ ', port = 102';
    fds.rfd:=openSocket(102,COMname);
    fds.wfd:=fds.rfd;

    verbinding := false;
    StatusBar1.Panels[1].Text :='Attempt of creation of the connection';
    //creation of the interface
    if (fds.rfd>0) then
    begin
      dcIn:=daveNewInterface(fds, 'IF1',0,daveProtoISOTCP, daveSpeed187k);
      dcIn^.timeout:=500;
      StatusBar1.Panels[1].Text :='New interface: '+ 'protocol = '+inttostr(daveProtoISOTCP) + ', speed 187k = '+inttostr(daveSpeed187k);

      //initialize the adapter
      if (daveInitAdapter(dcIn)=0) then
      begin
        dc :=daveNewConnection(dcIn,2, StrToInt(rack), StrToInt(slot));
        StatusBar1.Panels[1].Text :='Connection: MPI = 2, rack = '+rack+', slot = '+slot;
        //connection
        if (daveConnectPLC(dc)=0) then
        begin
          StatusBar1.Panels[0].Text := 'Connected Siemens '+ComName+ ', port=102';
          verbinding := true;
        end else StatusBar1.Panels[0].Text :='Not successful attempt of connection!';
      end else StatusBar1.Panels[0].Text :='Not successful attempt to initialize  the adapter!';
    end else StatusBar1.Panels[0].Text :='Not successful attempt of creation of the interface!';

    MenuAct;

end;

procedure TMainForm.VerbrVerbinding;
begin
  if verbinding then
  begin
    daveDisconnectPLC(dc);
    daveDisconnectAdapter(dcIn);
    verbinding := false;
    MenuAct;
    StatusBar1.Panels[0].Text:='Disconnected';
  end;
end;

function TMainForm.TimeToReal(Time:TDateTime):real;
var
  uur,min,sec,msec:word;
begin
  DecodeTime(Time,uur,min,sec,msec);
  result:=60*uur+min+(sec/60);
end;

procedure TMainForm.if1Click(Sender: TObject);  begin InfoForm.show;   end;
procedure TMainForm.SimulatieUitClick(Sender: TObject); begin  SimActief := false; SetToolBar; end;
procedure TMainForm.SimulatieAanClick(Sender: TObject); begin   SimActief := true;  SetToolBar; end;

procedure TMainForm.Timer1Timer(Sender: TObject);
var
 Res:LongInt;
 i : integer;
begin
  if verbinding then
  begin
    res := daveReadBytes(dc, daveOutputs, 0, 0, 16, NIL);
    if (res = 0) then
    begin
      For i := 0 to 43 do
           uitgangen[i] := daveGetU8(dc);
      readOK := true;
    end else
      readOK := false;
  end;
  aria3600;
  if verbinding then
  begin
    res := daveWriteBytes(dc, daveInputs, 0, 0, 44, @ingangen);
    testDB;
  end;
end;

procedure TMainForm.aria3600;
begin
  if ((verbinding) and (readOK)) then
  begin
    oBit8 := TBit8.Create;
    aUit :=8; aIn:=16;
    bUit:=2; bMcc :=4; bSch :=5; bMel :=6; bFo :=7;
    oBit8.AsByteO := uitgangen[aUit];   oBit8.AsByteI := ingangen[aIn];
    if (oBit8.BitSet(bUit)) then begin pomp_P3613.Seek(5); oBit8.SetBit(bMel); end
                            else begin pomp_P3613.Seek(6); oBit8.ClrBit(bMel); end;
        if Mcc_pomp_P3613.Checked then oBit8.SetBit(bMcc)else oBit8.ClrBit(bMcc);
        if Sch_pomp_P3613.Checked then oBit8.SetBit(bMcc)else oBit8.ClrBit(bSch);
        if  Fo_pomp_P3613.Checked then oBit8.SetBit(bMcc)else oBit8.ClrBit(bFo);
                            ingangen[aIn] := oBit8.AsByteI;

    LabelByteOutput.Caption := IntToStr(uitgangen[aUit])+' '+oBit8.AsBinary1;
    LabelByteInput.Caption  := IntToStr(ingangen[aIn])+' '+oBit8.AsBinary2;


    oBit8.Free;
  end else
  begin
    pomp_P3613.Seek(4);
 end;
end;

procedure TMainForm.testDB;
var
 Res:LongInt;
 S:String;
 i:Integer;
 Buf:Array[0..1023] of Byte;
 NrDB:Word;
 CountByte:Word;
 BeginByte:Word;

begin
   if verbinding then
    begin
            NrDB     := StrToInt(SpinEdit1.text);
            CountByte:= StrToInt(SpinEdit2.text);
            BeginByte:= StrToInt(SpinEdit3.text);

            Res:=daveReadBytes(dc,daveDB,NrDB,BeginByte,CountByte,@Buf);
            if (Res=0) Then
            Begin
              StatusBar1.Panels[0].Text :='Data from Siemens considered.';
              S:='';
              for i:=1 To CountByte Do
              Begin
                S:=S+IntToStr(Buf[i-1])+' , ';
              End;
              LabelRes.Caption :=  S;
            End Else StatusBar1.Panels[0].Text :='Not successful attempt to read through!';
    end;
end;

end.

