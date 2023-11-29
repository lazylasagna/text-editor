unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, Vcl.ExtDlgs,
  Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.Samples.Spin, Vcl.Grids, Vcl.ValEdit, Vcl.DBCtrls, Vcl.ComCtrls,
  Vcl.Buttons, Vcl.CustomizeDlg, System.ImageList, Vcl.ImgList, CommCtrl, clipbrd,
  Vcl.Imaging.jpeg, Vcl.Imaging.pngimage, Vcl.Themes, Winapi.RichEdit;

type
  TForm7 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    st: string;
  end;

var
  Form7: TForm7;
  i: integer;

implementation

{$R *.dfm}
Uses Unit444;

procedure TForm7.Button1Click(Sender: TObject);
begin
  Form5.Selection(Sender);
  Form5.Memo1.SelAttributes.Color := StringToColor(Form5.ColorBox1.Items[Form5.ColorBox1.ItemIndex]);
  Form5.Selection2(Sender);
  Form5.Selection(Sender);
  if Edit1.Text <> '' then
           begin
             Form5.MarkAllWords( Form5.Memo1, Edit1.Text, clRed);
             j:=1;
           end
  else  Form5.Memo1.SelAttributes.Color := StringToColor( Form5.ColorBox1.Items[Form5.ColorBox1.ItemIndex]);
  Form5.Selection2(Sender);
end;

procedure TForm7.Button2Click(Sender: TObject);
var
i, CharPos, noChars: Integer;
begin
  Form5.Selection(Sender);
  Form5.Memo1.SelAttributes.Color := StringToColor(Form5.ColorBox1.Items[Form5.ColorBox1.ItemIndex]);
  CharPos := 0;
  noChars := 0;
  for i := 0 to Pred(Form5.Memo1.Lines.Count) do
  noChars := noChars + Length(Form5.Memo1.Lines[i]);
  if CharPos <> -1 then
  begin
    CharPos := Form5.Memo1.FindText(Edit1.Text, CharPos, noChars, [stWholeWord]);
    Form5.Memo1.SelStart := CharPos;
    Form5.Memo1.SelLength := Length(Edit1.Text);
    Form5.Memo1.SelText := Edit2.Text;
    Form5.Memo1.SelStart := CharPos;
    Form5.Memo1.SelLength := Length(Edit2.Text);
    Form5.Memo1.SelAttributes.Color := clRed;
    Form5.Selection2(Sender);
  end;
end;

procedure TForm7.Button3Click(Sender: TObject);
var
i, CharPos, noChars: Integer;
begin
  Form5.Selection(Sender);
  Form5.Memo1.SelAttributes.Color := StringToColor(Form5.ColorBox1.Items[Form5.ColorBox1.ItemIndex]);
  CharPos := 0;
  noChars := 0;
  for i := 0 to Pred(Form5.Memo1.Lines.Count) do
  noChars := noChars + Length(Form5.Memo1.Lines[i]);
  repeat
    CharPos := Form5.Memo1.FindText(Edit1.Text, CharPos, noChars, [stWholeWord]);
    if CharPos <> -1 then
    begin
      Form5.Memo1.SelStart := CharPos;
      Form5.Memo1.SelLength := Length(Edit1.Text);
      Form5.Memo1.SelText := Edit2.Text;
      Form5.Memo1.SelStart := CharPos;
      Form5.Memo1.SelLength := Length(Edit2.Text);
      Form5.Memo1.SelAttributes.Color := clRed;
    end;
  until CharPos = -1;
  Form5.Selection2(Sender);
end;

procedure TForm7.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form5.Selection(Sender);
  Form5.Memo1.SelAttributes.Color := StringToColor(Form5.ColorBox1.Items[Form5.ColorBox1.ItemIndex]);
  Form5.Selection2(Sender);
end;


end.
