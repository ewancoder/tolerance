unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls,inifiles;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Image1: TImage;
    TrackBar1: TTrackBar;
    TrackBar2: TTrackBar;
    TrackBar3: TTrackBar;
    TrackBar4: TTrackBar;
    CheckBox1: TCheckBox;
    Memo2: TMemo;
    TrackBar5: TTrackBar;
    TrackBar6: TTrackBar;
    TrackBar7: TTrackBar;
    Button2: TButton;
    Image2: TImage;
    TrackBar8: TTrackBar;
    TrackBar9: TTrackBar;
    TrackBar10: TTrackBar;
    TrackBar11: TTrackBar;
    CheckBox2: TCheckBox;
    TrackBar12: TTrackBar;
    TrackBar13: TTrackBar;
    TrackBar14: TTrackBar;
    CheckBox3: TCheckBox;
    Panel1: TPanel;
    Button1: TButton;
    Edit2: TEdit;
    Edit1: TEdit;
    Label1: TLabel;
    Edit3: TEdit;
    Label2: TLabel;
    Panel2: TPanel;
    Button3: TButton;
    Edit5: TEdit;
    Edit4: TEdit;
    Label3: TLabel;
    Edit6: TEdit;
    Label4: TLabel;
    Panel3: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Button4: TButton;
    Panel4: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Button6: TButton;
    Label5: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure TrackBar3Change(Sender: TObject);
    procedure TrackBar4Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure TrackBar5Change(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure TrackBar6Change(Sender: TObject);
    procedure TrackBar7Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure TrackBar8Change(Sender: TObject);
    procedure TrackBar9Change(Sender: TObject);
    procedure TrackBar10Change(Sender: TObject);
    procedure TrackBar11Change(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure TrackBar12Change(Sender: TObject);
    procedure TrackBar13Change(Sender: TObject);
    procedure TrackBar14Change(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
  private
    { Private declarations }
    procedure drawing(ppppp:timage);
    procedure checkout1(param:integer);
    procedure checkout2(param:integer);
    procedure error(id:integer);
    procedure clean;
    procedure cleanerrs;
    procedure clearerrs;
    procedure loadfirst(hah:integer);
    procedure savefirst(hah:integer);
  public
    { Public declarations }
    procedure localize(s:string);
  end;

var
  Form1: TForm1;
  si:integer;//global const for drawing
  err:array[0..100]of boolean;
  err11:boolean;//for exception blanking
  add:integer;//additional parameter just to set up some few dopusks
  gost: array[0..21,0..20] of double;
  gost2: array[0..41,0..31] of String;
  gost3: array[0..41,0..14] of String;
  gost4: array[0..41,0..14] of String;
  gost5: array[0..41,0..14] of String;
  gost6: array[0..41,0..14] of String;
  temp:string;//add gost to memory
  size,size2:double;//dimention of the object
  let,qua,let2,qua2:string;//tolerance parameters
  a,a3:integer;//size of object
  b,b2:integer;//qualitet
  c,c2:integer;//mkm-mm
  dsize,dsize2:double;//size of gost dopusk
  b21,b22,b31,b32,b33:integer;//dopusk letter to number for array
  a2,a4:integer;//size huge number to number for array
  deviation:integer;//just deviation
  deviation2:double;
  scale:integer;//scale in percents
  minl,maxl,min3,min4:string;
  lines:boolean;
  x1,x2,x3,x4:integer;
  ps1,ps2,imt1,imt2,imt3,imt4,imt5:string;

  //section for second part
  jig:array[0..5]of record
  sizejig,size2jig:double;//dimention of the object
  letjig,quajig,let2jig,qua2jig:string;//tolerance parameters
  ajig,a3jig:integer;//size of object
  bjig,b2jig:integer;//qualitet
  cjig,c2jig:integer;//mkm-mm
  dsizejig,dsize2jig:double;//size of gost dopusk
  b21jig,b22jig,b31jig,b32jig,b33jig:integer;//dopusk letter to number for array
  a2jig,a4jig:integer;//size huge number to number for array
  deviationjig:integer;//just deviation
  deviation2jig:double;
  scalejig:integer;//scale in percents
  linesjig:boolean;
  end;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var i,j,k:integer;s:string;//temporaty variables
begin
a:=0;
a3:=0;
b:=0;
b2:=0;
c:=0;
c2:=0;
dsize:=0;
dsize2:=0;
b21:=-1;
b22:=-1;
b33:=-1;
b32:=-1;
b31:=-1;
a2:=0;
a4:=0;
deviation:=0;
deviation2:=0;
scale:=100;

lines:=true;
//deviation2:=0;
image1.Canvas.Pen.Width:=2;
image2.Canvas.Pen.Width:=2;
decimalseparator:='.';
size:=40;
qua:='8';
let:='h';
size2:=40;
qua2:='8';
let2:='H';
si:=round(image1.Height/2);
scale:=100;
try begin
//number one
memo1.Lines.LoadFromFile('gost.txt');
temp:=memo1.Text;
for i:=0 to 20 do begin
  for j:=0 to 19 do begin
     if copy(temp,0,1)='{' then delete(temp,1,1);
     k:=0;
     while (copy(temp,k,1)<>',')and(copy(temp,k,1)<>'}') do k:=k+1;
     s:=copy(temp,0,k-1);
     gost[i,j]:=strtofloat(s);
     delete(temp,1,k-1);
     if copy(temp,0,1)=',' then delete(temp,1,1);
     if copy(temp,0,1)='}' then delete(temp,1,3);
  end;
end;
//number two
memo1.Lines.LoadFromFile('gost2.txt');
temp:=memo1.Text;
for i:=0 to 40 do begin
  for j:=0 to 16 do begin
     if copy(temp,0,1)='{' then delete(temp,1,2);
     k:=0;
     while copy(temp,k,1)<>'"' do k:=k+1;
     s:=copy(temp,0,k-1);
     gost2[i,j]:=s;
     delete(temp,1,k-1);
     if copy(temp,0,1)='"' then delete(temp,1,1);
     if copy(temp,0,1)='}' then delete(temp,1,4);
     if copy(temp,0,1)=',' then delete(temp,1,2);
  end;
end;
//number three
memo1.Lines.LoadFromFile('gost3.txt');
temp:=memo1.Text;
for i:=0 to 40 do begin
  for j:=0 to 13 do begin
     if copy(temp,0,1)='{' then delete(temp,1,2);
     k:=0;
     while copy(temp,k,1)<>'"' do k:=k+1;
     s:=copy(temp,0,k-1);
     gost3[i,j]:=s;
     delete(temp,1,k-1);
     if copy(temp,0,1)='"' then delete(temp,1,1);
     if copy(temp,0,1)='}' then delete(temp,1,4);
     if copy(temp,0,1)=',' then delete(temp,1,2);
  end;
end;
//number four
memo1.Lines.LoadFromFile('gost4.txt');
temp:=memo1.Text;
for i:=0 to 40 do begin
  for j:=0 to 11 do begin
     if copy(temp,0,1)='{' then delete(temp,1,2);
     k:=0;
     while copy(temp,k,1)<>'"' do k:=k+1;
     s:=copy(temp,0,k-1);
     gost4[i,j]:=s;
     delete(temp,1,k-1);
     if copy(temp,0,1)='"' then delete(temp,1,1);
     if copy(temp,0,1)='}' then delete(temp,1,4);
     if copy(temp,0,1)=',' then delete(temp,1,2);
  end;
end;
//number five
memo1.Lines.LoadFromFile('gost5.txt');
temp:=memo1.Text;
for i:=0 to 40 do begin
  for j:=0 to 13 do begin
     if copy(temp,0,1)='{' then delete(temp,1,2);
     k:=0;
     while copy(temp,k,1)<>'"' do k:=k+1;
     s:=copy(temp,0,k-1);
     gost5[i,j]:=s;
     delete(temp,1,k-1);
     if copy(temp,0,1)='"' then delete(temp,1,1);
     if copy(temp,0,1)='}' then delete(temp,1,4);
     if copy(temp,0,1)=',' then delete(temp,1,2);
  end;
end;
//number six
memo1.Lines.LoadFromFile('gost6.txt');
temp:=memo1.Text;
for i:=0 to 40 do begin
  for j:=0 to 13 do begin
     if copy(temp,0,1)='{' then delete(temp,1,2);
     k:=0;
     while copy(temp,k,1)<>'"' do k:=k+1;
     s:=copy(temp,0,k-1);
     gost6[i,j]:=s;
     delete(temp,1,k-1);
     if copy(temp,0,1)='"' then delete(temp,1,1);
     if copy(temp,0,1)='}' then delete(temp,1,4);
     if copy(temp,0,1)=',' then delete(temp,1,2);
  end;
end;
end except error(1);end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
cleanerrs;
loadfirst(1);

try size:=strtofloat(edit3.Text); except error(2); end;
let:=edit1.Text;
qua:=edit2.Text;
savefirst(1);
checkout1(1);
drawing(image1);
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
loadfirst(1);
cleanerrs;
b:=trackbar1.position;
case b of
0: qua:='01';
1: qua:='0';
2: qua:='1';
3: qua:='2';
4: qua:='3';
5: qua:='4';
6: qua:='5';
7: qua:='6';
8: qua:='7';
9: qua:='8';
10: qua:='9';
11: qua:='10';
12: qua:='11';
13: qua:='12';
14: qua:='13';
15: qua:='14';
16: qua:='15';
17: qua:='16';
18: qua:='17';
19: qua:='18';
end;
edit2.Text:=qua;
savefirst(1);
checkout1(1);
drawing(image1);

end;

procedure TForm1.drawing(ppppp:timage);
var fs:double;//final scaling
fs2,mk1,mk2,mk3,mk4,mk5,mk6:double;
temp:string;
y1,y2,y3,y4,ymax,ymin:integer;
begin
if ppppp=image1 then loadfirst(1) else loadfirst(2);
//showmessage(floattostr(jig[1].dsizejig));
//showmessage(floattostr(dsize2));
add:=0;
  //exception 2
  if deviation=666 then begin
    if (b>7)and(b<13) then begin
      dsize:=trunc(dsize);
      if trunc(dsize)mod 2 <>0 then dsize:=dsize-1;
      error(20);
    end;
    if (b2>7)and(b2<13) then begin
      dsize2:=trunc(dsize2);
      if trunc(dsize2)mod 2 <>0 then dsize2:=dsize2-1;
      error(20);
    end;
  end;

  fs:=100/scale;
  if checkbox1.Checked=false then fs:=100/scale else begin
  if deviation=666 then fs:=400/(1.1*dsize) else
  if deviation<=0 then fs:=200/(1.1*(dsize+abs(deviation))) else
  fs:=200/(1.1*(dsize+abs(deviation)));
  end;
  fs2:=100500;
  if checkbox2.Checked=false then fs:=100/scale else begin
  if deviation2=666 then fs2:=400/(1.1*dsize2) else
  begin
  if deviation2<=0 then fs2:=200/(1.1*(dsize2+abs(deviation2))) else
  fs2:=200/(1.1*(dsize2+abs(deviation2)))
  end;

  end;

  if fs2<fs then fs:=fs2;



  ppppp.Canvas.Brush.Style:=bssolid;
  ppppp.Canvas.Brush.Color:=clwhite;
  ppppp.Canvas.Rectangle(-50,-50,ppppp.Width+50,ppppp.Height+50);
  ppppp.Canvas.MoveTo(20,si);
  ppppp.Canvas.LineTo(ppppp.ClientWidth-20,si);
  ppppp.Canvas.Brush.Style:=bsbdiagonal;
  ppppp.Canvas.Brush.Color:=clblack;
  //ppppp.Canvas.TextOut(20,si-20,'0');

  /////ppppp.Canvas.TextOut(320,20,min3);
  /////ppppp.Canvas.TextOut(320,100,min4);


  if (deviation=777) then error(12) else
  //if (err11=true) then error(12) else
  if (deviation=666) then begin
  mk1:=si-round(dsize/2*fs);
  mk2:=si+round(dsize/2*fs);
  ppppp.Canvas.Rectangle(30+add,si-round(dsize/2*fs),100+add,si+round(dsize/2*fs));
  ppppp.Canvas.MoveTo(30+add,si-round(dsize/2*fs));
  ppppp.Canvas.LineTo(30+add-15,si-round(dsize/2*fs));
  if c=0 then temp:=floattostr(dsize/2)+' ���' else temp:=floattostr(dsize/2000)+' ��';
  ppppp.Canvas.TextOut(30+add-15,si-round(dsize/2*fs)-15,temp);
  ppppp.Canvas.MoveTo(30+add,si+round(dsize/2*fs)-1);
  ppppp.Canvas.LineTo(30+add-15,si+round(dsize/2*fs)-1);
  ppppp.Canvas.TextOut(30+add-15,si+round(dsize/2*fs)+1,'-'+temp);

  /////ppppp.Canvas.TextOut(320,40,minl+floattostr(size-dsize/2000)+' ��,');
  /////ppppp.Canvas.TextOut(320,60,maxl+floattostr(size+dsize/2000)+' ��,');
  end else begin
  if (b21<12)and(b22=-1) then begin
  mk1:=si-round(deviation*fs);
  mk2:=si-round(deviation*fs-dsize*fs);
  /////ppppp.Canvas.TextOut(320,60,maxl+floattostr(size+deviation/1000)+' ��,');
  /////ppppp.Canvas.TextOut(320,40,minl+floattostr(size+deviation/1000-dsize/1000)+' ��,');
  ppppp.Canvas.Rectangle(30+add, si-round(deviation*fs),100+add,si-round(deviation*fs-dsize*fs));
  ppppp.Canvas.MoveTo(30+add,si-round(deviation*fs));
  ppppp.Canvas.LineTo(30+add-15,si-round(deviation*fs));
  if c=0 then temp:=floattostr(deviation)+' ���' else temp:=floattostr(deviation/1000)+' ��';
  ppppp.Canvas.TextOut(30+add-15,si-round(deviation*fs)-15,temp);
  ppppp.Canvas.MoveTo(100+add,si-round(deviation*fs-dsize*fs+1));
  ppppp.Canvas.LineTo(100+add+15,si-round(deviation*fs-dsize*fs+1));
  if c=0 then temp:=floattostr(deviation-dsize)+' ���' else temp:=floattostr((deviation-dsize)/1000)+' ��';
  ppppp.Canvas.TextOut(100+add+15,si-round(deviation*fs-dsize*fs+1),temp);
  end else begin
  if deviation<0 then begin
  mk1:=si-round(deviation*fs+dsize*fs);
  mk2:=si-round(deviation*fs);
  /////  ppppp.Canvas.TextOut(320,40,minl+floattostr(size+deviation/1000)+' ��,');
  /////ppppp.Canvas.TextOut(320,60,maxl+floattostr(size+deviation/1000+dsize/1000)+' ��,');
  ppppp.Canvas.Rectangle(30+add, si-round(deviation*fs+dsize*fs),100+add,si-round(deviation*fs));
  ppppp.Canvas.MoveTo(100+add,si-round(deviation*fs+dsize*fs));
  ppppp.Canvas.LineTo(100+add+15,si-round(deviation*fs+dsize*fs));
  if c=0 then temp:=floattostr(deviation+dsize)+' ���' else temp:=floattostr((deviation+dsize)/1000)+' ��';
  ppppp.Canvas.TextOut(100+add+15,si-round(deviation*fs+dsize*fs+15),temp);
  ppppp.Canvas.MoveTo(30+add,round(si-deviation*fs-1));
  ppppp.Canvas.LineTo(30+add-15,round(si-deviation*fs-1));
  if c=0 then temp:=floattostr(deviation)+' ���' else temp:=floattostr(deviation/1000)+' ��';
  ppppp.Canvas.TextOut(30+add-15,round(si-deviation*fs),temp);
  end;
  if deviation>=0 then begin
  /////  ppppp.Canvas.TextOut(320,40,minl+floattostr(size+deviation/1000)+' ��,');
  /////ppppp.Canvas.TextOut(320,60,maxl+floattostr(size+deviation/1000+dsize/1000)+' ��,');
  mk1:=round(si-(deviation*fs+dsize*fs));
  mk2:=si-round(deviation*fs);
  ppppp.Canvas.Rectangle(30+add, round(si-(deviation*fs+dsize*fs)),100+add,si-round(deviation*fs));
  ppppp.Canvas.MoveTo(30+add,si-round(deviation*fs)-1);
  ppppp.Canvas.LineTo(30+add-15,si-round(deviation*fs)-1);
  if c=0 then temp:=floattostr(deviation)+' ���' else temp:=floattostr(deviation/1000)+' ��';
  ppppp.Canvas.TextOut(30+add-15,si-round(deviation*fs)+1,temp);
  ppppp.Canvas.MoveTo(100+add,round(si-(deviation*fs+dsize*fs)));
  ppppp.Canvas.LineTo(100+add+15,round(si-(deviation*fs+dsize*fs)));
  if c=0 then temp:=floattostr(deviation+dsize)+' ���' else temp:=floattostr((deviation+dsize)/1000)+' ��';
  ppppp.Canvas.TextOut(100+add+15,round(si-(deviation*fs+dsize*fs)-15),temp);
  end;
  end;
  end;












  //if fs2<fs then fs:=fs2;
  add:=150;
  ppppp.Canvas.Brush.Style:=bssolid;
  ppppp.Canvas.Brush.Color:=clwhite;
  //ppppp.Canvas.Rectangle(-50,-50,ppppp.Width+50,ppppp.Height+50);
  ppppp.Canvas.MoveTo(20,si);
  ppppp.Canvas.LineTo(ppppp.ClientWidth-20,si);
  ppppp.Canvas.Brush.Style:=bsbdiagonal;
  ppppp.Canvas.Brush.Color:=clblack;
  //ppppp.Canvas.TextOut(20,si-20,'0');
  //showmessage(floattostr(deviation2));
  if (deviation2=777) then error(12) else
  //if (err11=true) then error(12) else
  if (deviation2=666) then begin
  mk3:=si-round(dsize2/2*fs);
  mk4:=si+round(dsize2/2*fs);
  ppppp.Canvas.Rectangle(30+add,si-round(dsize2/2*fs),100+add,si+round(dsize2/2*fs));
  ppppp.Canvas.MoveTo(30+add,si-round(dsize2/2*fs));
  ppppp.Canvas.LineTo(30+add-15,si-round(dsize2/2*fs));
  if c2=0 then temp:=floattostr(dsize2/2)+' ���' else temp:=floattostr(dsize2/2000)+' ��';
  ppppp.Canvas.TextOut(30+add-15,si-round(dsize2/2*fs)-15,temp);
  ppppp.Canvas.MoveTo(30+add,si+round(dsize2/2*fs)-1);
  ppppp.Canvas.LineTo(30+add-15,si+round(dsize2/2*fs)-1);
  ppppp.Canvas.TextOut(30+add-15,si+round(dsize2/2*fs)+1,'-'+temp);
  /////ppppp.Canvas.TextOut(320,120,minl+floattostr(size2-dsize2/2000)+' ��,');
  /////ppppp.Canvas.TextOut(320,140,maxl+floattostr(size2+dsize2/2000)+' ��');
  end else begin
  if (b31<>-1) then begin
    if deviation2<0 then begin
    mk3:=si-round(deviation2*fs+dsize2*fs);
    mk4:=si-round(deviation2*fs);
   ///// ppppp.Canvas.TextOut(320,120,minl+floattostr(size2+deviation2/1000)+' ��,');
   ///// ppppp.Canvas.TextOut(320,140,maxl+floattostr(size2+deviation2/1000+dsize2/1000)+' ��,');
    ppppp.Canvas.Rectangle(30+add, si-round(deviation2*fs+dsize2*fs),100+add,si-round(deviation2*fs));
    ppppp.Canvas.MoveTo(100+add,si-round(deviation2*fs+dsize2*fs));
    ppppp.Canvas.LineTo(100+add+15,si-round(deviation2*fs+dsize2*fs));
    if c2=0 then temp:=floattostr(deviation2+dsize2)+' ���' else temp:=floattostr((deviation2+dsize2)/1000)+' ��';
    ppppp.Canvas.TextOut(100+add+15,si-round(deviation2*fs+dsize2*fs+15),temp);
    ppppp.Canvas.MoveTo(30+add,round(si-deviation2*fs-1));
    ppppp.Canvas.LineTo(30+add-15,round(si-deviation2*fs-1));
    if c2=0 then temp:=floattostr(deviation2)+' ���' else temp:=floattostr(deviation2/1000)+' ��';
    ppppp.Canvas.TextOut(30+add-15,round(si-deviation2*fs),temp);
    end;
    if deviation2>=0 then begin
 /////     ppppp.Canvas.TextOut(320,120,minl+floattostr(size2+deviation2/1000)+' ��,');
 /////   ppppp.Canvas.TextOut(320,140,maxl+floattostr(size2+deviation2/1000+dsize2/1000)+' ��,');
  mk3:=round(si-(deviation2*fs+dsize2*fs));
  mk4:=si-round(deviation2*fs);
  ppppp.Canvas.Rectangle(30+add, round(si-(deviation2*fs+dsize2*fs)),100+add,si-round(deviation2*fs));
  ppppp.Canvas.MoveTo(30+add,si-round(deviation2*fs)-1);
  ppppp.Canvas.LineTo(30+add-15,si-round(deviation2*fs)-1);
  if c2=0 then temp:=floattostr(deviation2)+' ���' else temp:=floattostr(deviation2/1000)+' ��';
  ppppp.Canvas.TextOut(30+add-15,si-round(deviation2*fs)+1,temp);
  ppppp.Canvas.MoveTo(100+add,round(si-(deviation2*fs+dsize2*fs)));
  ppppp.Canvas.LineTo(100+add+15,round(si-(deviation2*fs+dsize2*fs)));
  if c2=0 then temp:=floattostr(deviation2+dsize2)+' ���' else temp:=floattostr((deviation2+dsize2)/1000)+' ��';
  ppppp.Canvas.TextOut(100+add+15,round(si-(deviation2*fs+dsize2*fs)-15),temp);
  end;
  end else begin
 ///// ppppp.Canvas.TextOut(320,140,maxl+floattostr(size2+deviation2/1000)+' ��,');
 ///// ppppp.Canvas.TextOut(320,120,minl+floattostr(size2+deviation2/1000-dsize2/1000)+' ��,');
  mk3:=si-round(deviation2*fs);
  mk4:=si-round(deviation2*fs-dsize2*fs);
  ppppp.Canvas.Rectangle(30+add, si-round(deviation2*fs),100+add,si-round(deviation2*fs-dsize2*fs));
  ppppp.Canvas.MoveTo(30+add,si-round(deviation2*fs));
  ppppp.Canvas.LineTo(30+add-15,si-round(deviation2*fs));
  if c2=0 then temp:=floattostr(deviation2)+' ���' else temp:=floattostr(deviation2/1000)+' ��';
  ppppp.Canvas.TextOut(30+add-15,si-round(deviation2*fs)-15,temp);
  ppppp.Canvas.MoveTo(100+add,si-round(deviation2*fs-dsize2*fs+1));
  ppppp.Canvas.LineTo(100+add+15,si-round(deviation2*fs-dsize2*fs+1));
  if c2=0 then temp:=floattostr(deviation2-dsize2)+' ���' else temp:=floattostr((deviation2-dsize2)/1000)+' ��';
  ppppp.Canvas.TextOut(100+add+15,si-round(deviation2*fs-dsize2*fs+1),temp);
  end;


  end;

  if (mk2<mk3)or(mk4<mk1) then begin
    if mk2<mk3 then begin
      //negative clearance
      y1:=trunc(mk2)-1;
      y2:=trunc(mk3);
      y3:=trunc(mk1);
      y4:=trunc(mk4)-1;
      ymin:=abs(y1-y2);
      ymax:=abs(y3-y4);
      ps1:=imt1+floattostr(ymin);
      ps2:=imt2+floattostr(ymax);
    end else if mk4<mk1 then begin
      //clearance
      y1:=trunc(mk1);
      y2:=trunc(mk4)-1;
      y3:=trunc(mk2)-1;
      y4:=trunc(mk3);
      ymin:=abs(y1-y2);
      ymax:=abs(y4-y3);
    end;

  ppppp.Canvas.MoveTo(100,y1);
  ppppp.Canvas.LineTo(145,y1);
  ppppp.Canvas.MoveTo(180,y2);
  ppppp.Canvas.LineTo(135,y2);

  ppppp.Canvas.MoveTo(100,y3);
  ppppp.Canvas.LineTo(125,y3);
  ppppp.Canvas.MoveTo(180,y4);
  ppppp.Canvas.LineTo(115,y4);

  if mk2<mk3 then ppppp.Canvas.Pen.Color:=clred else ppppp.Canvas.Pen.Color:=clblue;
  if lines=true then begin
  ppppp.Canvas.MoveTo(140,y1);
  //ppppp.Canvas.Ellipse(139,y1-1,141,y1+1);
  ppppp.Canvas.LineTo(140,y2);
  //ppppp.Canvas.Ellipse(129,y2-1,141,y2+1);

  ppppp.Canvas.MoveTo(120,y3);
  //ppppp.Canvas.Ellipse(139,y3-1,141,y3+1);
  ppppp.Canvas.LineTo(120,y4);
  //ppppp.Canvas.Ellipse(129,y4-1,141,y4+1);
  end;
  ppppp.Canvas.Pen.Color:=clblack;

  end else begin

    if 1=2 then begin

    end else begin
      y1:=round(mk1);
      y2:=round(mk4);
      y3:=round(mk2);
      y4:=round(mk3);
      ymin:=abs(y1-y2);
      ymax:=abs(y3-y4);
      if mk1<mk3 then begin
        x1:=145;
        x2:=135;
        x3:=125;
        x4:=115;
      end else begin
        x1:=145;
        x2:=115;
        x3:=125;
        x4:=115;
      end;
    end;

  ppppp.Canvas.MoveTo(100,y3-1);
  ppppp.Canvas.LineTo(x1,y3-1);
  ppppp.Canvas.MoveTo(180,y4);
  ppppp.Canvas.LineTo(x2,y4);

  ppppp.Canvas.MoveTo(100,y1);
  ppppp.Canvas.LineTo(x3,y1);
  ppppp.Canvas.MoveTo(180,y2-1);
  ppppp.Canvas.LineTo(x4,y2-1);

  if lines=true then begin
  //if (mk1>mk3)and(mk2<mk4) then
  ppppp.Canvas.Pen.Color:=clblue;
  //if mk1<mk3 then ppppp.Canvas.Pen.Color:=clblue else ppppp.Canvas.Pen.Color:=clblue;
  ppppp.Canvas.MoveTo(140,y3);
  //ppppp.Canvas.Ellipse(139,y3-1,141,y3+1);
  ppppp.Canvas.LineTo(140,y4);
  //ppppp.Canvas.Ellipse(129,y4-1,141,y4+1);
  ppppp.Canvas.Pen.Color:=clblack;
  //if mk1<mk3 then ppppp.Canvas.Pen.Color:=clred else ppppp.Canvas.Pen.Color:=clred;
  ppppp.Canvas.Pen.Color:=clred;
  ppppp.Canvas.MoveTo(120,y1);
  //ppppp.Canvas.Ellipse(139,y1-1,141,y1+1);
  ppppp.Canvas.LineTo(120,y2);
  //ppppp.Canvas.Ellipse(129,y2-1,141,y2+1);
  ppppp.Canvas.Pen.Color:=clblack;
  end;
  ppppp.Canvas.Pen.Color:=clblack;
  end;
  //ppppp.Canvas.TextOut(320,180,ps1);
  //ppppp.Canvas.TextOut(320,200,ps2);
if ppppp=image1 then savefirst(1) else savefirst(2);
end;

procedure TForm1.TrackBar2Change(Sender: TObject);
begin

loadfirst(1);
cleanerrs;
b21:=-1;
b22:=-1;
if trackbar2.Position<12 then b21:=trackbar2.Position else
if trackbar2.Position=12 then begin
  try begin
  if (strtoint(qua)=5)or(strtoint(qua)=6) then b21:=12 else
  if strtoint(qua)=7 then b21:=13 else
  if strtoint(qua)=8 then b21:=14 else
  error(14);
  end except error(13);end;
end else
if trackbar2.Position=13 then begin
   try begin
   if (strtoint(qua)>3)and(strtoint(qua)<8) then b21:=15;
   if (strtoint(qua)<4)or(strtoint(qua)>7) then b21:=16;
   end except error(15);end;
end else b22:=trackbar2.Position-14;

if b21=0 then let:='a';
if b21=1 then let:='b';
if b21=2 then let:='c';
if b21=3 then let:='cd';
if b21=4 then let:='d';
if b21=5 then let:='e';
if b21=6 then let:='ef';
if b21=7 then let:='f';
if b21=8 then let:='fg';
if b21=9 then let:='g';
if b21=10 then let:='h';
if b21=11 then let:='is';
if (b21=12)or(b21=13)or(b21=14) then let:='I';
if (b21=15)or(b21=16) then let:='k';
if b22=0 then let:='m';
if b22=1 then let:='n';
if b22=2 then let:='p';
if b22=3 then let:='r';
if b22=4 then let:='s';
if b22=5 then let:='t';
if b22=6 then let:='u';
if b22=7 then let:='v';
if b22=8 then let:='x';
if b22=9 then let:='y';
if b22=10 then let:='z';
if b22=11 then let:='za';
if b22=12 then let:='zb';
if b22=13 then let:='zc';
//+++++ UPDATE: make qualitet change if both b21 and b22 is equal to -1
edit1.Text:=let;
savefirst(1);
checkout1(1);


drawing(image1);

end;

procedure TForm1.TrackBar3Change(Sender: TObject);
begin
loadfirst(1);
cleanerrs;
if trackbar3.Position<500 then scale:=trackbar3.Position else
if trackbar3.Position<800 then scale:=trackbar3.Position+(trackbar3.Position-500)*8 else
scale:=trackbar3.Position+(trackbar3.Position-500)*8+(trackbar3.Position-800)*200;
savefirst(1);
drawing(image1);
end;

procedure TForm1.checkout1(param:integer);
begin
loadfirst(param);
err11:=false;
if size<3 then a:=0 else
if size<6 then a:=1 else
if size<10 then a:=2 else
if size<18 then a:=3 else
if size<30 then a:=4 else
if size<50 then a:=5 else
if size<80 then a:=6 else
if size<120 then a:=7 else
if size<180 then a:=8 else
if size<250 then a:=9 else
if size<315 then a:=10 else
if size<400 then a:=11 else
if size<500 then a:=12 else
if size<630 then a:=13 else
if size<800 then a:=14 else
if size<1000 then a:=15 else
if size<1250 then a:=16 else
if size<1600 then a:=17 else
if size<2000 then a:=18 else
if size<2500 then a:=19 else
if size<=3150 then a:=20 else begin
a:=-1;
error(3);
end;
if qua='01' then b:=0 else try b:=strtoint(qua)+1; except error(4); end;
if b<13 then c:=0 else c:=1;//mkm-mm
if (b>14)and(size<1) then error(5) else begin
  dsize:=gost[a,b];//size of
  if c=1 then dsize:=dsize*1000;
  b21:=-1;b22:=-1;
  if let='a' then if size>=1 then b21:=0 else error(16);
  if let='b' then if size>=1 then b21:=1 else error(16);
  if let='c' then b21:=2;
  if let='cd' then b21:=3;
  if let='d' then b21:=4;
  if let='e' then b21:=5;
  if let='ef' then b21:=6;
  if let='f' then b21:=7;
  if let='fg' then b21:=8;
  if let='g' then b21:=9;
  if let='h' then b21:=10;
  if let='is' then b21:=11;
  if let='I' then begin
    try begin
    if (strtoint(qua)=5)or(strtoint(qua)=6) then b21:=12 else
    if strtoint(qua)=7 then b21:=13 else
    if strtoint(qua)=8 then b21:=14 else begin
    error(14);
    end;
    end except error(6); end;
  end;
  if let='k' then begin
     try begin
     if (strtoint(qua)>3)and(strtoint(qua)<8) then b21:=15;
     if (strtoint(qua)<4)or(strtoint(qua)>7) then b21:=16;
     end except error(7); end;
  end;
  if (let='m')and(b=8) then if size>3 then b22:=0 else error(17);
  if (let='m')and(b<>8) then b22:=0;
  if let='n' then b22:=1;
  if let='p' then b22:=2;
  if let='r' then b22:=3;
  if let='s' then b22:=4;
  if let='t' then b22:=5;
  if let='u' then b22:=6;
  if let='v' then b22:=7;
  if let='x' then b22:=8;
  if let='y' then b22:=9;
  if let='z' then b22:=10;
  if let='za' then b22:=11;
  if let='zb' then b22:=12;
  if let='zc' then b22:=13;

  if size<3 then a2:=0 else
  if size<6 then a2:=1 else
  if size<10 then a2:=2 else
  if size<14 then a2:=3 else
  if size<18 then a2:=4 else
  if size<24 then a2:=5 else
  if size<30 then a2:=6 else
  if size<40 then a2:=7 else
  if size<50 then a2:=8 else
  if size<65 then a2:=9 else
  if size<80 then a2:=10 else
  if size<100 then a2:=11 else
  if size<120 then a2:=12 else
  if size<140 then a2:=13 else
  if size<160 then a2:=14 else
  if size<180 then a2:=15 else
  if size<200 then a2:=16 else
  if size<225 then a2:=17 else
  if size<250 then a2:=18 else
  if size<280 then a2:=19 else
  if size<315 then a2:=20 else
  if size<355 then a2:=21 else
  if size<400 then a2:=22 else
  if size<450 then a2:=23 else
  if size<500 then a2:=24 else
  if size<560 then a2:=25 else
  if size<630 then a2:=26 else
  if size<710 then a2:=27 else
  if size<800 then a2:=28 else
  if size<900 then a2:=29 else
  if size<1000 then a2:=30 else
  if size<1120 then a2:=31 else
  if size<1250 then a2:=32 else
  if size<1400 then a2:=33 else
  if size<1600 then a2:=34 else
  if size<1800 then a2:=35 else
  if size<2000 then a2:=36 else
  if size<2240 then a2:=37 else
  if size<2500 then a2:=38 else
  if size<2800 then a2:=39 else
  if size<=3150 then a2:=40 else begin
    a2:=-1;
    error(8);
  end;
  if b21<>-1 then begin
      if (gost2[a2,b21]='*') then deviation:=666 else
      if (gost2[a2,b21]='-') then error(19) else try deviation:=strtoint(gost2[a2,b21]);except error(9);end;
    end else if b22<>-1 then begin
      if (gost3[a2,b22]='-')or(gost3[a2,b22]='*') then error(19) else try deviation:=strtoint(gost3[a2,b22]);except error(10);end;
    end else begin
       error(11);
    end;
end;
//drawing;
savefirst(param);
end;

procedure TForm1.error(id: integer);
begin
//+++++ UPDATE: make float whole this thing
//image1.Canvas.Rectangle(-50,-50,image1.Width+50,image1.Height+50);
case id of
1: err[1]:=true;//showmessage('Error while loading database (Error 1)'+#10#13+'Check out files gost.txt, gost2.txt, ..., gost7.txt in your root directory');//error while opening gosts #110
2: err[2]:=true;//showmessage('Wrong diameter. Try to type float value with point-separator, like "10.5"');//error while receiving strtoint(Edit3.text) #118
3: err[3]:=true;//showmessage('Max diameter, counted in GOST is 3150, you''re overflowing it!');//error with size (a=-1) #233
//4: showmessage('error 4');//error with receiving strtoint(qua) #238
5: err[4]:=true;{
begin

showmessage('There''s no 14-18 qualitets for sizes smaller than 1 mm');
clean;

  end;  }
//6: showmessage('error 6');//error with receiving strtoint(qua)
//7: showmessage('error 7');//error with receiving strtoint(qua)
//8: showmessage('error 8');//error with size (a2=-1)
//9: showmessage('error 9');//error with receiving strtoint(gost2[a2,b21])
//10: showmessage('error 10');//error with receiving strtoint(gost3[a2,b22])
11:
begin
err[5]:=true;
err11:=true;
end;
//showmessage('error 11');//either b21 and b22 is equal to '-1' ; I or k with wrong qualitet
//12: showmessage('error 12');//dopusk is equal to '-'
//13: showmessage('error 13');//error with receiving strtoint(qua)
14: err[6]:=true;//showmessage('Deviation "I" is only exists for 5,6,7 and 8 qualitets');//there's no such dopusk with this qualitet
18: err[7]:=true;//showmessage('Deviation "J" is only exists for 6,7 and 8 qualitets');//there's no such dopusk with this qualitet
//15: showmessage('error 15');//error with receiving strtoint(qua)
16: err[8]:=true;//showmessage('Base deviations a and b don''t counted on sizes smaller than 1 mm.');//exception 1: a or b with size smaller than 1
21: err[9]:=true;//showmessage('Base deviations A and B don''t counted on sizes smaller than 1 mm.');//exception 1: a or b with size smaller than 1
17: err[10]:=true;//showmessage('Deviation m 7 counted only on sizes smaller than 3 mm.');//exception 3: m 7 only for > 3 mm.
19: err[11]:=true;//showmessage('There''s just don''t such a tolerance');
20: err[12]:=true;//showmessage('there''s was trunk value');
22: err[13]:=true;//showmessage('Deviation M 8 counted only on sizes smaller than 3 mm.');//exception 3: m 7 only for > 3 mm.
23: err[14]:=true;//showmessage('Deviation N with qualitet till 8 isn''t counted with on sizes smaller than 1 mm.');//exception 3: m 7 only for > 3 mm.
end;
//statusbar1.SimpleText:=booltostr(err[1])+' '+booltostr(err[2])+' '+booltostr(err[3])+' '+booltostr(err[4])+' '+booltostr(err[5])+' '+booltostr(err[6])+' '+booltostr(err[7])+' '+booltostr(err[8])+' '+booltostr(err[9])+' '+booltostr(err[10])+' '+booltostr(err[11])+' '+booltostr(err[12])+' '+booltostr(err[13])+' '+booltostr(err[14]);
end;

procedure TForm1.TrackBar4Change(Sender: TObject);
begin
loadfirst(1);
cleanerrs;
case trackbar4.Position of
1:size:=1;
2:size:=3;
3:size:=6;
4:size:=10;
5:size:=14;
6:size:=18;
7:size:=24;
8:size:=30;
9:size:=40;
10:size:=50;
11:size:=65;
12:size:=80;
13:size:=100;
14:size:=120;
15:size:=140;
16:size:=160;
17:size:=180;
18:size:=200;
19:size:=225;
20:size:=250;
21:size:=280;
22:size:=315;
23:size:=355;
24:size:=400;
25:size:=450;
26:size:=500;
27:size:=560;
28:size:=630;
29:size:=710;
30:size:=800;
31:size:=900;
32:size:=1000;
33:size:=1120;
34:size:=1250;
35:size:=1400;
36:size:=1600;
37:size:=1800;
38:size:=2000;
39:size:=2240;
40:size:=2500;
41:size:=2800;
42:size:=3150;
end;
edit3.Text:=floattostr(size);
savefirst(1);
checkout1(1);

if checkbox3.Checked then trackbar10.Position:=trackbar4.Position;
drawing(image1);
end;

procedure TForm1.FormShow(Sender: TObject);
begin
try begin
r:=tinifile.Create(extractfilepath(application.ExeName)+'Settings.ini');

if r.ReadString('Global','Language','0')='0' then begin
form2.RadioButton1.Checked:=true;
form2.apply;
end else
if r.ReadString('Global','Language','0')='1' then begin
form2.RadioButton2.Checked:=true;
form2.apply;
end else begin
loc:=r.ReadString('Global','Language','english.txt');
form2.RadioButton3.Checked:=true;
form2.apply;
end;
checkbox3.Checked:=r.ReadBool('Global','Sync',true);
end except {showmessage('Program could work uncorrectly in non-write mode. Can''t create configuration file.');  }
end;
savefirst(1);
savefirst(2);
checkout1(1);
checkout2(1);
drawing(image1);

checkout1(2);
checkout2(2);
drawing(image2);
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
cleanerrs;
if checkbox1.Checked then trackbar3.Enabled:=false else trackbar3.Enabled:=true;
drawing(image1);
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
trackbar5.Visible:=true;
trackbar6.Visible:=true;
trackbar7.Visible:=true;
trackbar12.Visible:=true;
trackbar13.Visible:=true;
trackbar14.Visible:=true;
end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
trackbar5.Visible:=false;
trackbar6.Visible:=false;
trackbar7.Visible:=false;
trackbar12.Visible:=false;
trackbar13.Visible:=false;
trackbar14.Visible:=false;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
cleanerrs;
loadfirst(1);
try size2:=strtofloat(edit6.Text); except error(2); end;
let2:=edit4.Text;
qua2:=edit5.Text;
savefirst(1);
checkout2(1);
drawing(image1);
end;

procedure TForm1.checkout2(param:integer);
var trig,detected,negative:boolean;
i:integer;
D:double;
s:string;
begin
loadfirst(param);
if size2<3 then a3:=0 else
if size2<6 then a3:=1 else
if size2<10 then a3:=2 else
if size2<18 then a3:=3 else
if size2<30 then a3:=4 else
if size2<50 then a3:=5 else
if size2<80 then a3:=6 else
if size2<120 then a3:=7 else
if size2<180 then a3:=8 else
if size2<250 then a3:=9 else
if size2<315 then a3:=10 else
if size2<400 then a3:=11 else
if size2<500 then a3:=12 else
if size2<630 then a3:=13 else
if size2<800 then a3:=14 else
if size2<1000 then a3:=15 else
if size2<1250 then a3:=16 else
if size2<1600 then a3:=17 else
if size2<2000 then a3:=18 else
if size2<2500 then a3:=19 else
if size2<=3150 then a3:=20 else begin
a3:=-1;
error(3);
end;
if qua2='01' then b2:=0 else try b2:=strtoint(qua2)+1; except error(4); end;
if b2<13 then c2:=0 else c2:=1;//mkm-mm
if (b2>14)and(size2<1) then error(5) else begin
  dsize2:=gost[a3,b2];//size of
  if c2=1 then dsize2:=dsize2*1000;

  b31:=-1;b32:=-1;b33:=-1;
if let2='A' then if size2>=1 then b31:=0 else error(21);
  if let2='B' then if size2>=1 then b31:=1 else error(21);
  if let2='C' then b31:=2;
  if let2='CD' then b31:=3;
  if let2='D' then b31:=4;
  if let2='E' then b31:=5;
  if let2='EF' then b31:=6;
  if let2='F' then b31:=7;
  if let2='FG' then b31:=8;
  if let2='G' then b31:=9;
  if let2='H' then b31:=10;
  if let2='JS' then b31:=11;

  if let2='J' then begin
    try begin
    if strtoint(qua2)=6 then b32:=0 else
    if strtoint(qua2)=7 then b32:=1 else
    if strtoint(qua2)=8 then b32:=2 else begin
    error(18);
    end;
    end except error(6); end;
  end;
  if let2='K' then begin
     try begin
     if (strtoint(qua2)>8) then b32:=4;
     if (strtoint(qua2)<9) then b32:=3;
     end except error(7); end;
  end;
  if let2='M' then begin
    if b2=9 then begin
      if size2>3 then begin
        try begin
          if (strtoint(qua2)>8) then b32:=6;
          if (strtoint(qua2)<9) then b32:=5;
        end except error(7); end;
      end else error(17);
    end else begin
      try begin
        if (strtoint(qua2)>8) then b32:=6;
        if (strtoint(qua2)<9) then b32:=5;
      end except error(7); end;
    end;
  end;
  if let2='N' then begin
    if b2<=9 then begin
      if size2>1 then begin
        try begin
          if (strtoint(qua2)>8) then b32:=8;
          if (strtoint(qua2)<9) then b32:=7;
        end except error(7); end;
      end else error(23);
    end else begin
      try begin
        if (strtoint(qua2)>8) then b32:=8;
        if (strtoint(qua2)<9) then b32:=7;
      end except error(7); end;
    end;
  end;
  if let2='P' then b32:=10;
  if let2='R' then b32:=11;
  if let2='S' then b32:=12;
  if let2='T' then b32:=13;
  if let2='U' then b33:=0;
  if let2='V' then b33:=1;
  if let2='X' then b33:=2;
  if let2='Y' then b33:=3;
  if let2='Z' then b33:=4;
  if let2='ZA' then b33:=5;
  if let2='ZB' then b33:=6;
  if let2='ZC' then b33:=7;

  if size2<3 then a4:=0 else
  if size2<6 then a4:=1 else
  if size2<10 then a4:=2 else
  if size2<14 then a4:=3 else
  if size2<18 then a4:=4 else
  if size2<24 then a4:=5 else
  if size2<30 then a4:=6 else
  if size2<40 then a4:=7 else
  if size2<50 then a4:=8 else
  if size2<65 then a4:=9 else
  if size2<80 then a4:=10 else
  if size2<100 then a4:=11 else
  if size2<120 then a4:=12 else
  if size2<140 then a4:=13 else
  if size2<160 then a4:=14 else
  if size2<180 then a4:=15 else
  if size2<200 then a4:=16 else
  if size2<225 then a4:=17 else
  if size2<250 then a4:=18 else
  if size2<280 then a4:=19 else
  if size2<315 then a4:=20 else
  if size2<355 then a4:=21 else
  if size2<400 then a4:=22 else
  if size2<450 then a4:=23 else
  if size2<500 then a4:=24 else
  if size2<560 then a4:=25 else
  if size2<630 then a4:=26 else
  if size2<710 then a4:=27 else
  if size2<800 then a4:=28 else
  if size2<900 then a4:=29 else
  if size2<1000 then a4:=30 else
  if size2<1120 then a4:=31 else
  if size2<1250 then a4:=32 else
  if size2<1400 then a4:=33 else
  if size2<1600 then a4:=34 else
  if size2<1800 then a4:=35 else
  if size2<2000 then a4:=36 else
  if size2<2240 then a4:=37 else
  if size2<2500 then a4:=38 else
  if size2<2800 then a4:=39 else
  if size2<=3150 then a4:=40 else begin
    a4:=-1;
    error(8);
  end;

  try D:=strtofloat(gost6[a4,strtoint(qua2)+5]);
  except D:=0; end;

if b31<>-1 then begin
  if (gost4[a4,b31]='*') then begin
  deviation2:=666;
  end else
  if (gost4[a4,b31]='-') then error(19) else try deviation2:=strtoint(gost4[a4,b31]);except error(9);end;
end else if b32<>-1 then begin
  if (gost5[a4,b32]='-') then error(19) else
  try begin
    s:=gost5[a4,b32];
    detected:=false;
    //negative:=false;
    for i:=0 to length(s) do begin
      if copy(s,i,1)='D' then begin
      //if copy(s,i-1,1)='-' then negative:=true;
        delete(s,i,1);
        delete(s,i-1,1);
        detected:=true;
      end;
    end;
    if detected then begin
      deviation2:=strtoint(s)+D;
    end else begin
    deviation2:=strtoint(s);
    end;
    if (strtoint(qua2)<8)and(b32>9) then deviation2:=deviation2+D;
  end except end;
end else if b33<>-1 then begin
  if (gost6[a4,b33]='-') then error(19) else
  try begin
    deviation2:=strtoint(gost6[a4,b33]);
    if (strtoint(qua2)<8) then deviation2:=deviation2+D;
  end except end;
end else error(11);
end;
//drawing;
savefirst(param);
end;

procedure TForm1.TrackBar5Change(Sender: TObject);
begin
loadfirst(1);

cleanerrs;
b31:=-1;
b32:=-1;
b33:=-1;
if trackbar5.Position<12 then b31:=trackbar5.Position{else
if trackbar2.Position=12 then begin
  try begin
  if (strtoint(qua)=5)or(strtoint(qua)=6) then b21:=12 else
  if strtoint(qua)=7 then b21:=13 else
  if strtoint(qua)=8 then b21:=14 else
  error(14);
  end except error(13);end;
end else    }
else
if trackbar5.Position=12 then begin
   try begin
   if strtoint(qua2)=6 then b32:=0 else
   if strtoint(qua2)=7 then b32:=1 else
   if strtoint(qua2)=8 then b32:=2 else
   error(18);
   end except error(15);end;
end
else
if trackbar5.Position=13 then begin
  try begin
   if strtoint(qua2)<9 then b32:=3 else
   if strtoint(qua2)>8 then b32:=4;
   end except error(15);end;
end
else
if trackbar5.Position=14 then begin
  try begin
   if strtoint(qua2)<9 then b32:=5 else
   if strtoint(qua2)>8 then b32:=6;
   end except error(15);end;
end
else
if trackbar5.Position=15 then begin
  try begin
   if strtoint(qua2)<9 then b32:=7 else
   if strtoint(qua2)>8 then b32:=8;
   end except error(15);end;
end
else
if trackbar5.Position<20 then b32:=trackbar5.position-6
else
b33:=trackbar5.Position-20;

if b31=0 then let2:='A';
if b31=1 then let2:='B';
if b31=2 then let2:='C';
if b31=3 then let2:='CD';
if b31=4 then let2:='D';
if b31=5 then let2:='E';
if b31=6 then let2:='EF';
if b31=7 then let2:='F';
if b31=8 then let2:='FG';
if b31=9 then let2:='G';
if b31=10 then let2:='H';
if b31=11 then let2:='JS';
if (b32=0)or(b32=1)or(b32=2) then let2:='J';
if (b32=3)or(b32=4) then let2:='K';
if (b32=5)or(b32=6) then let2:='M';
if (b32=7)or(b32=8) then let2:='N';
if b32=10 then let2:='P';
if b32=11 then let2:='R';
if b32=12 then let2:='S';
if b32=13 then let2:='T';
if b33=0 then let2:='U';
if b33=1 then let2:='V';
if b33=2 then let2:='X';
if b33=3 then let2:='Y';
if b33=4 then let2:='Z';
if b33=5 then let2:='ZA';
if b33=6 then let2:='ZB';
if b33=7 then let2:='ZC';

//+++++ UPDATE: make qualitet change if both b31 and b32 (*AND b33) is equal to -1
edit4.Text:=let2;
savefirst(1);
checkout2(1);

drawing(image1);
end;

procedure TForm1.Button5Click(Sender: TObject);
var i,j:integer;
begin
i:=strtoint('-50+20');

{memo2.Lines.LoadFromFile('gost6.txt');
memo1.Text:='{';


for i:=0 to 40 do begin

    for j:=0 to 13 do begin

        memo1.Text:=memo1.Text+('"'+memo2.Lines.Strings[0]+'"');
        if j<>13 then memo1.Text:=memo1.Text+',';
        memo2.Lines.Delete(0);

    end;
    memo1.text:=memo1.Text+,;
end;

memo1.Lines.SaveToFile('gosthaha.txt');
     }

end;

procedure TForm1.TrackBar6Change(Sender: TObject);
begin
loadfirst(1);
cleanerrs;
b2:=trackbar6.position;
case b2 of
0: qua2:='01';
1: qua2:='0';
2: qua2:='1';
3: qua2:='2';
4: qua2:='3';
5: qua2:='4';
6: qua2:='5';
7: qua2:='6';
8: qua2:='7';
9: qua2:='8';
10: qua2:='9';
11: qua2:='10';
12: qua2:='11';
13: qua2:='12';
14: qua2:='13';
15: qua2:='14';
16: qua2:='15';
17: qua2:='16';
18: qua2:='17';
19: qua2:='18';
end;
edit5.Text:=qua2;
savefirst(1);
checkout2(1);

drawing(image1);
end;

procedure TForm1.clean;
begin
image1.Canvas.Brush.Style:=bssolid;
image1.Canvas.Brush.Color:=clwhite;
image1.Canvas.Rectangle(-50,-50,image1.Width+50,image1.Height+50);//showmessage('error 5');//error with using qualitet 14-18 with size lower than 1 mm
image1.Canvas.MoveTo(20,si);
image1.Canvas.LineTo(image1.ClientWidth-20,si);
end;

procedure TForm1.TrackBar7Change(Sender: TObject);
begin
loadfirst(1);
cleanerrs;
case trackbar7.Position of
1:size2:=1;
2:size2:=3;
3:size2:=6;
4:size2:=10;
5:size2:=14;
6:size2:=18;
7:size2:=24;
8:size2:=30;
9:size2:=40;
10:size2:=50;
11:size2:=65;
12:size2:=80;
13:size2:=100;
14:size2:=120;
15:size2:=140;
16:size2:=160;
17:size2:=180;
18:size2:=200;
19:size2:=225;
20:size2:=250;
21:size2:=280;
22:size2:=315;
23:size2:=355;
24:size2:=400;
25:size2:=450;
26:size2:=500;
27:size2:=560;
28:size2:=630;
29:size2:=710;
30:size2:=800;
31:size2:=900;
32:size2:=1000;
33:size2:=1120;
34:size2:=1250;
35:size2:=1400;
36:size2:=1600;
37:size2:=1800;
38:size2:=2000;
39:size2:=2240;
40:size2:=2500;
41:size2:=2800;
42:size2:=3150;
end;
edit6.Text:=floattostr(size2);
savefirst(1);
checkout2(1);

if checkbox3.Checked then trackbar14.Position:=trackbar7.Position;
drawing(image1);
end;

procedure TForm1.clearerrs;
begin

end;

procedure TForm1.cleanerrs;
begin

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
form2.showmodal;
end;

procedure TForm1.localize(s: string);
begin
if fileexists(s) then begin
memo1.Lines.LoadFromFile(s);
label2.Caption:=memo1.Lines.Strings[0];
label1.Caption:=memo1.Lines.Strings[1];
button1.Caption:=memo1.Lines.Strings[2];
checkbox3.Caption:=memo1.Lines.Strings[3];
label5.Caption:=memo1.Lines.Strings[4];
label11.Caption:=label5.Caption;
label12.Caption:=label10.Caption;
label10.Caption:=memo1.Lines.Strings[5];
//radiobutton1.Caption:=memo1.Lines.Strings[4];
//radiobutton2.Caption:=memo1.Lines.Strings[5];
label4.Caption:=memo1.Lines.Strings[6];
label3.Caption:=memo1.Lines.Strings[7];
button3.Caption:=memo1.Lines.Strings[8];
checkbox1.Caption:=memo1.Lines.Strings[9];
trackbar3.Hint:=memo1.Lines.Strings[10];
trackbar2.Hint:=memo1.Lines.Strings[11];
trackbar5.Hint:=memo1.Lines.Strings[12];
trackbar1.Hint:=memo1.Lines.Strings[13];
trackbar6.Hint:=memo1.Lines.Strings[14];
trackbar4.Hint:=memo1.Lines.Strings[15];
trackbar7.Hint:=memo1.Lines.Strings[16];
form1.Caption:=memo1.Lines.Strings[17];
form2.caption:=memo1.Lines.Strings[18];
form2.Label1.Caption:=memo1.lines.strings[19];
form2.RadioButton1.Caption:=memo1.Lines.Strings[20];
form2.RadioButton2.Caption:=memo1.Lines.Strings[21];
form2.RadioButton3.Caption:=memo1.Lines.Strings[22];
form2.Button1.Caption:=memo1.Lines.Strings[23];
minl:=memo1.Lines.Strings[24];
maxl:=memo1.Lines.Strings[25];
min3:=memo1.lines.Strings[26];
min4:=memo1.lines.strings[27];
imt1:=memo1.Lines.Strings[28];
imt2:=memo1.Lines.Strings[29];
imt3:=memo1.Lines.Strings[30];
imt4:=memo1.Lines.Strings[31];
imt5:=memo1.Lines.Strings[32];

label7.Caption:=label2.Caption;
label6.Caption:=label1.Caption;
label9.Caption:=label4.Caption;
label8.Caption:=label3.Caption;
button4.Caption:=button1.Caption;
button6.Caption:=button3.Caption;
end;
end;



procedure TForm1.Button4Click(Sender: TObject);
begin
cleanerrs;
loadfirst(2);
try size:=strtofloat(edit9.Text); except error(2); end;
let:=edit7.Text;
qua:=edit8.Text;
savefirst(2);
checkout1(1);
drawing(image2);
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
cleanerrs;
loadfirst(2);
try size2:=strtofloat(edit12.Text); except error(2); end;
let2:=edit10.Text;
qua2:=edit11.Text;
savefirst(2);
checkout2(1);
drawing(image2);
end;

procedure TForm1.TrackBar8Change(Sender: TObject);
begin
loadfirst(2);
cleanerrs;
b:=trackbar8.position;
case b of
0: qua:='01';
1: qua:='0';
2: qua:='1';
3: qua:='2';
4: qua:='3';
5: qua:='4';
6: qua:='5';
7: qua:='6';
8: qua:='7';
9: qua:='8';
10: qua:='9';
11: qua:='10';
12: qua:='11';
13: qua:='12';
14: qua:='13';
15: qua:='14';
16: qua:='15';
17: qua:='16';
18: qua:='17';
19: qua:='18';
end;
edit8.Text:=qua;
savefirst(2);
checkout1(2);
drawing(image2);
end;

procedure TForm1.TrackBar9Change(Sender: TObject);
begin
loadfirst(2);
cleanerrs;
b21:=-1;
b22:=-1;
if trackbar9.Position<12 then b21:=trackbar9.Position else
if trackbar9.Position=12 then begin
  try begin
  if (strtoint(qua)=5)or(strtoint(qua)=6) then b21:=12 else
  if strtoint(qua)=7 then b21:=13 else
  if strtoint(qua)=8 then b21:=14 else
  error(14);
  end except error(13);end;
end else
if trackbar9.Position=13 then begin
   try begin
   if (strtoint(qua)>3)and(strtoint(qua)<8) then b21:=15;
   if (strtoint(qua)<4)or(strtoint(qua)>7) then b21:=16;
   end except error(15);end;
end else b22:=trackbar9.Position-14;

if b21=0 then let:='a';
if b21=1 then let:='b';
if b21=2 then let:='c';
if b21=3 then let:='cd';
if b21=4 then let:='d';
if b21=5 then let:='e';
if b21=6 then let:='ef';
if b21=7 then let:='f';
if b21=8 then let:='fg';
if b21=9 then let:='g';
if b21=10 then let:='h';
if b21=11 then let:='is';
if (b21=12)or(b21=13)or(b21=14) then let:='I';
if (b21=15)or(b21=16) then let:='k';
if b22=0 then let:='m';
if b22=1 then let:='n';
if b22=2 then let:='p';
if b22=3 then let:='r';
if b22=4 then let:='s';
if b22=5 then let:='t';
if b22=6 then let:='u';
if b22=7 then let:='v';
if b22=8 then let:='x';
if b22=9 then let:='y';
if b22=10 then let:='z';
if b22=11 then let:='za';
if b22=12 then let:='zb';
if b22=13 then let:='zc';
//+++++ UPDATE: make qualitet change if both b21 and b22 is equal to -1
edit7.Text:=let;
savefirst(2);
checkout1(2);
drawing(image2);
end;

procedure TForm1.TrackBar10Change(Sender: TObject);
begin
cleanerrs;
loadfirst(2);
case trackbar10.Position of
1:size:=1;
2:size:=3;
3:size:=6;
4:size:=10;
5:size:=14;
6:size:=18;
7:size:=24;
8:size:=30;
9:size:=40;
10:size:=50;
11:size:=65;
12:size:=80;
13:size:=100;
14:size:=120;
15:size:=140;
16:size:=160;
17:size:=180;
18:size:=200;
19:size:=225;
20:size:=250;
21:size:=280;
22:size:=315;
23:size:=355;
24:size:=400;
25:size:=450;
26:size:=500;
27:size:=560;
28:size:=630;
29:size:=710;
30:size:=800;
31:size:=900;
32:size:=1000;
33:size:=1120;
34:size:=1250;
35:size:=1400;
36:size:=1600;
37:size:=1800;
38:size:=2000;
39:size:=2240;
40:size:=2500;
41:size:=2800;
42:size:=3150;
end;
edit9.Text:=floattostr(size);
savefirst(2);
checkout1(2);

if checkbox3.Checked then trackbar4.Position:=trackbar10.Position;
drawing(image2);
end;

procedure TForm1.TrackBar11Change(Sender: TObject);
begin
loadfirst(2);
cleanerrs;
if trackbar11.Position<500 then scale:=trackbar11.Position else
if trackbar11.Position<800 then scale:=trackbar11.Position+(trackbar11.Position-500)*8 else
scale:=trackbar11.Position+(trackbar11.Position-500)*8+(trackbar11.Position-800)*200;
savefirst(2);
drawing(image2);
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
cleanerrs;
if checkbox2.Checked then trackbar11.Enabled:=false else trackbar11.Enabled:=true;
drawing(image2);
end;

procedure TForm1.savefirst(hah:integer);
begin
  //err:array[0..100]of boolean;
  //err11:boolean;//for exception blanking
  //add:integer;//additional parameter just to set up some few dopusks
  //temp:string;//add gost to memory
jig[hah].size2jig:=size2;
jig[hah].sizejig:=size;
jig[hah].letjig:=let;
jig[hah].quajig:=qua;
jig[hah].let2jig:=let2;
jig[hah].qua2jig:=qua2;
jig[hah].ajig:=a;
jig[hah].a3jig:=a3;
jig[hah].bjig:=b;
jig[hah].b2jig:=b2;
jig[hah].cjig:=c;
jig[hah].c2jig:=c2;
jig[hah].dsizejig:=dsize;
jig[hah].dsize2jig:=dsize2;
jig[hah].b21jig:=b21;
jig[hah].b22jig:=b22;
jig[hah].b33jig:=b33;
jig[hah].b32jig:=b32;
jig[hah].b31jig:=b31;
jig[hah].a2jig:=a2;
jig[hah].a4jig:=a4;
jig[hah].deviationjig:=deviation;
jig[hah].deviation2jig:=deviation2;
jig[hah].scalejig:=scale;
jig[hah].linesjig:=lines;


  //x1,x2,x3,x4:integer;




end;

procedure TForm1.loadfirst(hah:integer);
begin
size2:=jig[hah].size2jig;
size:=jig[hah].sizejig;
let:=jig[hah].letjig;
qua:=jig[hah].quajig;
let2:=jig[hah].let2jig;
qua2:=jig[hah].qua2jig;
a:=jig[hah].ajig;
a3:=jig[hah].a3jig;
b:=jig[hah].bjig;
b2:=jig[hah].b2jig;
c:=jig[hah].cjig;
c2:=jig[hah].c2jig;
dsize:=jig[hah].dsizejig;
dsize2:=jig[hah].dsize2jig;
b21:=jig[hah].b21jig;
b22:=jig[hah].b22jig;
b33:=jig[hah].b33jig;
b32:=jig[hah].b32jig;
b31:=jig[hah].b31jig;
a2:=jig[hah].a2jig;
a4:=jig[hah].a4jig;
deviation:=jig[hah].deviationjig;
deviation2:=jig[hah].deviation2jig;
scale:=jig[hah].scalejig;
lines:=jig[hah].linesjig;
end;

procedure TForm1.TrackBar12Change(Sender: TObject);
begin
loadfirst(2);

cleanerrs;
b31:=-1;
b32:=-1;
b33:=-1;
if trackbar12.Position<12 then b31:=trackbar12.Position{else
if trackbar2.Position=12 then begin
  try begin
  if (strtoint(qua)=5)or(strtoint(qua)=6) then b21:=12 else
  if strtoint(qua)=7 then b21:=13 else
  if strtoint(qua)=8 then b21:=14 else
  error(14);
  end except error(13);end;
end else    }
else
if trackbar12.Position=12 then begin
   try begin
   if strtoint(qua2)=6 then b32:=0 else
   if strtoint(qua2)=7 then b32:=1 else
   if strtoint(qua2)=8 then b32:=2 else
   error(18);
   end except error(15);end;
end
else
if trackbar12.Position=13 then begin
  try begin
   if strtoint(qua2)<9 then b32:=3 else
   if strtoint(qua2)>8 then b32:=4;
   end except error(15);end;
end
else
if trackbar12.Position=14 then begin
  try begin
   if strtoint(qua2)<9 then b32:=5 else
   if strtoint(qua2)>8 then b32:=6;
   end except error(15);end;
end
else
if trackbar12.Position=15 then begin
  try begin
   if strtoint(qua2)<9 then b32:=7 else
   if strtoint(qua2)>8 then b32:=8;
   end except error(15);end;
end
else
if trackbar12.Position<20 then b32:=trackbar12.position-6
else
b33:=trackbar12.Position-20;

if b31=0 then let2:='A';
if b31=1 then let2:='B';
if b31=2 then let2:='C';
if b31=3 then let2:='CD';
if b31=4 then let2:='D';
if b31=5 then let2:='E';
if b31=6 then let2:='EF';
if b31=7 then let2:='F';
if b31=8 then let2:='FG';
if b31=9 then let2:='G';
if b31=10 then let2:='H';
if b31=11 then let2:='JS';
if (b32=0)or(b32=1)or(b32=2) then let2:='J';
if (b32=3)or(b32=4) then let2:='K';
if (b32=5)or(b32=6) then let2:='M';
if (b32=7)or(b32=8) then let2:='N';
if b32=10 then let2:='P';
if b32=11 then let2:='R';
if b32=12 then let2:='S';
if b32=13 then let2:='T';
if b33=0 then let2:='U';
if b33=1 then let2:='V';
if b33=2 then let2:='X';
if b33=3 then let2:='Y';
if b33=4 then let2:='Z';
if b33=5 then let2:='ZA';
if b33=6 then let2:='ZB';
if b33=7 then let2:='ZC';

//+++++ UPDATE: make qualitet change if both b31 and b32 (*AND b33) is equal to -1
edit10.Text:=let2;
savefirst(2);
checkout2(2);
drawing(image2);
end;

procedure TForm1.TrackBar13Change(Sender: TObject);
begin
loadfirst(2);
cleanerrs;
b2:=trackbar13.position;
case b2 of
0: qua2:='01';
1: qua2:='0';
2: qua2:='1';
3: qua2:='2';
4: qua2:='3';
5: qua2:='4';
6: qua2:='5';
7: qua2:='6';
8: qua2:='7';
9: qua2:='8';
10: qua2:='9';
11: qua2:='10';
12: qua2:='11';
13: qua2:='12';
14: qua2:='13';
15: qua2:='14';
16: qua2:='15';
17: qua2:='16';
18: qua2:='17';
19: qua2:='18';
end;
edit11.Text:=qua2;
savefirst(2);
checkout2(2);

drawing(image2);

end;

procedure TForm1.TrackBar14Change(Sender: TObject);
begin
loadfirst(2);
cleanerrs;
case trackbar14.Position of
1:size2:=1;
2:size2:=3;
3:size2:=6;
4:size2:=10;
5:size2:=14;
6:size2:=18;
7:size2:=24;
8:size2:=30;
9:size2:=40;
10:size2:=50;
11:size2:=65;
12:size2:=80;
13:size2:=100;
14:size2:=120;
15:size2:=140;
16:size2:=160;
17:size2:=180;
18:size2:=200;
19:size2:=225;
20:size2:=250;
21:size2:=280;
22:size2:=315;
23:size2:=355;
24:size2:=400;
25:size2:=450;
26:size2:=500;
27:size2:=560;
28:size2:=630;
29:size2:=710;
30:size2:=800;
31:size2:=900;
32:size2:=1000;
33:size2:=1120;
34:size2:=1250;
35:size2:=1400;
36:size2:=1600;
37:size2:=1800;
38:size2:=2000;
39:size2:=2240;
40:size2:=2500;
41:size2:=2800;
42:size2:=3150;
end;
edit12.Text:=floattostr(size2);
savefirst(2);
checkout2(2);

if checkbox3.Checked then trackbar7.Position:=trackbar14.Position;
drawing(image2);
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin
r.WriteBool('Global','Sync',checkbox3.Checked);
end;

procedure TForm1.Panel1Click(Sender: TObject);
begin
trackbar5.Visible:=false;
trackbar6.Visible:=false;
//trackbar12.Visible:=false;
//trackbar13.Visible:=false;
panel1.BevelOuter:=bvLowered;
panel2.BevelOuter:=bvRaised;
end;

procedure TForm1.Panel2Click(Sender: TObject);
begin
trackbar5.Visible:=true;
trackbar6.Visible:=true;
//trackbar12.Visible:=true;
//trackbar13.Visible:=true;
panel1.BevelOuter:=bvRaised;
panel2.BevelOuter:=bvLowered;
end;

procedure TForm1.Panel3Click(Sender: TObject);
begin
//trackbar5.Visible:=false;
//trackbar6.Visible:=false;
trackbar12.Visible:=false;
trackbar13.Visible:=false;
panel3.BevelOuter:=bvLowered;
panel4.BevelOuter:=bvRaised;
end;

procedure TForm1.Panel4Click(Sender: TObject);
begin
//trackbar5.Visible:=true;
//trackbar6.Visible:=true;
trackbar12.Visible:=true;
trackbar13.Visible:=true;
panel3.BevelOuter:=bvRaised;
panel4.BevelOuter:=bvLowered;
end;

end.
