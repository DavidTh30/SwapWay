unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  a:integer;
  b:integer;
begin
  a:=10;
  b:=20;
  memo1.Clear;
  memo1.Append('a = '+IntToStr(a));
  memo1.Append('b = '+IntToStr(b));
  a:=a+b;
  memo1.Append('a=a+b = '+IntToStr(a));
  b:=a-b;
  memo1.Append('b=a-b = '+IntToStr(b));
  a:=a-b;
  memo1.Append('a=a-b = '+IntToStr(a));

  memo1.Append('a = '+IntToStr(a));
  memo1.Append('b = '+IntToStr(b));

  a:=a xor b;
  memo1.Append('a=a xor b = '+IntToStr(a));
  b:=b xor a;
  memo1.Append('b=b xor a = '+IntToStr(b));
  a:=a xor b;
  memo1.Append('a=a xor b = '+IntToStr(a));

  memo1.Append('a = '+IntToStr(a));
  memo1.Append('b = '+IntToStr(b));
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  a:double;
  b:double;
begin
  a:=10.99;
  b:=20.88;
  memo1.Clear;
  memo1.Append('a = '+FloatToStr(a));
  memo1.Append('b = '+FloatToStr(b));
  a:=a+b;
  memo1.Append('a=a+b = '+FloatToStr(a));
  b:=a-b;
  memo1.Append('b=a-b = '+FloatToStr(b));
  a:=a-b;
  memo1.Append('a=a-b = '+FloatToStr(a));
  memo1.Append('a = '+FloatToStr(a));
  memo1.Append('b = '+FloatToStr(b));

end;

procedure TForm1.Button3Click(Sender: TObject);
Type
  TIntegerArray = Array of Integer;
var
  a : array [0..1] of integer = (2,3);
  b : Array of Integer = (1,2,3);
  c : TIntegerArray = (1,2,3);
begin
  a[0]:=44;
  a[1]:=11;
  //a:=[3,4];  //Error
  memo1.Clear;
  b:=[3,4,5];
  c:=[3,4,5];
  memo1.Append('b[0]= '+IntToStr(b[0]));
  memo1.Append('b[1]= '+IntToStr(b[1]));
  memo1.Append('b[2]= '+IntToStr(b[2]));
  b:=[b[0],b[1],b[2]];
  memo1.Append('b=[b[0],b[1],b[2]]');
  memo1.Append('b[0]= '+IntToStr(b[0]));
  memo1.Append('b[1]= '+IntToStr(b[1]));
  memo1.Append('b[2]= '+IntToStr(b[2]));
  b:=[b[1],b[0],b[2]];
  memo1.Append('b=[b[1],b[0],b[2]]');
  memo1.Append('b[0]= '+IntToStr(b[0]));
  memo1.Append('b[1]= '+IntToStr(b[1]));
  memo1.Append('b[2]= '+IntToStr(b[2]));
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  b : Array of String = ('a','b');
begin
  memo1.Clear;
  b:=['a','b'];
  memo1.Append('b[0]= '+b[0]);
  memo1.Append('b[1]= '+b[1]);
  b:=[b[1],b[0]];
  memo1.Append('b=[b[1],b[2]]');
  memo1.Append('b[0]= '+b[0]);
  memo1.Append('b[1]= '+b[1]);
end;

end.

