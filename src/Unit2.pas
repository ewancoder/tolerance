unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,inifiles;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    procedure Button1Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    procedure apply;
  end;

var
  Form2: TForm2;
  loc:string;
  r:tinifile;
  auto:boolean=true;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.apply;
begin
if radiobutton1.Checked then begin
form1.localize('english.txt');
r.WriteString('Global','Language','0');
end;
if radiobutton2.Checked then begin
form1.localize('russian.txt');
r.WriteString('Global','Language','1');
end;
if radiobutton3.Checked then try begin
form1.localize(loc);
r.WriteString('Global','Language',loc);
end except try r.ReadString('Global','Language',loc);except end; end;

end;

procedure TForm2.Button1Click(Sender: TObject);
begin
apply;
form2.Close;
end;

procedure TForm2.RadioButton1Click(Sender: TObject);
begin
apply;
end;

procedure TForm2.RadioButton2Click(Sender: TObject);
begin
apply;
end;

procedure TForm2.RadioButton3Click(Sender: TObject);
begin
if auto=false then begin
if opendialog1.Execute then begin
loc:=opendialog1.FileName;
apply;
end else begin
radiobutton1.Checked:=true;
apply;
end;
end;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
auto:=false;
end;

end.
