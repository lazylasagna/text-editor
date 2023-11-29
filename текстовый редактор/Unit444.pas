unit Unit444;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, Vcl.ExtDlgs,
  Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.Samples.Spin, Vcl.Grids, Vcl.ValEdit, Vcl.DBCtrls, Vcl.ComCtrls,
  Vcl.Buttons, Unit6, Vcl.CustomizeDlg, System.ImageList, Vcl.ImgList, CommCtrl, clipbrd,
  Vcl.Imaging.jpeg, Vcl.Imaging.pngimage, Vcl.Themes, Winapi.RichEdit;

type
  TForm5 = class(TForm)
    FontDialog1: TFontDialog;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    New1: TMenuItem;
    Open1: TMenuItem;
    Save1: TMenuItem;
    SaveAs1: TMenuItem;
    N3: TMenuItem;
    OpenTextFileDialog1: TOpenTextFileDialog;
    SaveTextFileDialog1: TSaveTextFileDialog;
    Font1: TMenuItem;
    Memo1: TRichEdit;
    N1: TMenuItem;
    N2: TMenuItem;
    ColorBox1: TColorBox;
    SpinEdit1: TSpinEdit;
    ComboBox1: TComboBox;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N10: TMenuItem;
    ToolBar1: TToolBar;
    ImageList: TImageList;
    Panel1: TPanel;
    Image1: TImage;
    ToolButton8: TToolButton;
    ToolButton10: TToolButton;
    ToolButton6: TToolButton;
    ToolButton11: TToolButton;
    ToolButton4: TToolButton;
    N11: TMenuItem;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Panel5: TPanel;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Panel4: TPanel;
    Image16: TImage;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    ToolButton5: TToolButton;
    Panel2: TPanel;
    SpeedButton11: TSpeedButton;
    Panel3: TPanel;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton8: TSpeedButton;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    ToolButton1: TToolButton;
    N9: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    PrintDialog1: TPrintDialog;
    procedure Open1Click(Sender: TObject);
    procedure SaveAs1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure New1Click(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure ComboBox1Enter(Sender: TObject);
    procedure ComboBox1Select(Sender: TObject);
    procedure Font1Click(Sender: TObject);
    procedure Selection(Sender: TObject);
    procedure Selection2(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ColorBox1Select(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure MarkAllWords(RE:TRichEdit; TheWord:String; Color:TColor);
    procedure N4Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure Memo1Enter(Sender: TObject);
    //procedure Memo1SelectionChange(Sender: TObject);
  private
  name: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  i, k, c1, c2, c3, c4, j, l: integer;
                       Form5: TForm5;
                           s, n: string;

implementation

{$R *.dfm}

Uses Unit7;

procedure TForm5.Selection(Sender: TObject);
begin
if Memo1.SelLength = 0 then
                       begin
                        i:=1;
                        Memo1.SelStart := 0;
                        Memo1.SelLength := Length(Memo1.Text);
                       end;
end;

procedure TForm5.Selection2(Sender: TObject);
begin
if i <> 0 then
          begin
            Memo1.SelStart := 0;
            Memo1.SelLength := 0;
            i := 0;
          end;
end;

procedure TForm5.BitBtn6Click(Sender: TObject);
begin
  Selection(Sender);
  Memo1.Paragraph.Alignment := taLeftJustify;
  Selection2(Sender);
end;

procedure TForm5.BitBtn7Click(Sender: TObject);
begin
  Selection(Sender);
  Memo1.Paragraph.Alignment := taCenter;
  Selection2(Sender);
end;

procedure TForm5.BitBtn8Click(Sender: TObject);
begin
  Selection(Sender);
  Memo1.Paragraph.Alignment := taRightJustify;
  Selection2(Sender);
end;

procedure TForm5.Button1Click(Sender: TObject);
var f: integer;
begin
  if (k <> 1) and (s <> Memo1.Text) then f := Application.MessageBox('Вы не сохранили изменения, сохранить?', 'Внимание!',
  MB_YESNOCANCEL+MB_ICONQUESTION) else Application.Terminate;
  if f = IDYES then Save1Click(Sender)
               else if f = IDNO then Application.Terminate
               else Application.Run;
end;

procedure TForm5.ComboBox1Enter(Sender: TObject);
begin
  ComboBox1.Text:= ComboBox1.Items.Strings[0];
  ComboBox1.Items := Screen.Fonts;
  ComboBox1.ItemIndex := 0;
end;

procedure TForm5.ComboBox1Select(Sender: TObject);
begin
  Selection(Sender);
  Memo1.SelAttributes.Name:= ComboBox1.Items[ComboBox1.ItemIndex];
  Selection2(Sender);
end;

procedure TForm5.ColorBox1Select(Sender: TObject);
begin
  Selection(Sender);
  Memo1.SelAttributes.Color := StringToColor(ColorBox1.Items[ColorBox1.ItemIndex]);
  Selection2(Sender);
end;

procedure TForm5.Font1Click(Sender: TObject);
begin
  FontDialog1.Font:=Memo1.Font;
  if FontDialog1.Execute then
                         begin
                          Selection(Sender);
                          Memo1.SelAttributes.Style:=FontDialog1.Font.Style;
                          Memo1.SelAttributes.Color:=FontDialog1.Font.Color;
                          Memo1.SelAttributes.Name:= FontDialog1.Font.Name;
                          Memo1.SelAttributes.Size := FontDialog1.Font.Height;
                          Selection2(Sender);
                         end;
end;

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
var f: integer;
begin
  if (k <> 1) and (s <> Memo1.Text) then f := Application.MessageBox('Вы не сохранили изменения, сохранить?', 'Внимание!',
  MB_YESNOCANCEL+MB_ICONQUESTION) else Application.Terminate;
  if f = IDYES then Save1Click(Sender)
               else if f = IDNO then Application.Terminate
               else Application.Run;
end;

//procedure TForm4.Memo1SelectionChange(Sender: TObject);
//begin
//  //Selection(Sender);
//  SpinEdit1.Value := Memo1.SelAttributes.Size;
//  ComboBox1.Text := Memo1.SelAttributes.Name;
//  if Memo1.Paragraph.Alignment = taLeftJustify then ComboBox2.Text := 'Слева';
//  if Memo1.Paragraph.Alignment = taCenter then ComboBox2.Text := 'Посередине';
//  if Memo1.Paragraph.Alignment = taRightJustify then ComboBox2.Text := 'Справа';
//  if Memo1.SelAttributes.Style = []  then ComboBox3.Text := 'Обычный';
//  if Memo1.SelAttributes.Style = [fsBold]  then ComboBox3.Text := 'Жирный';
//  if Memo1.SelAttributes.Style = [fsItalic]  then ComboBox3.Text := 'Курсив';
//end;

procedure TForm5.N10Click(Sender: TObject);
begin
  Form7.Show;
end;

procedure TForm5.N12Click(Sender: TObject);
begin
  Clipboard.SetTextBuf(PChar(memo1.SelText));
end;

procedure TForm5.N13Click(Sender: TObject);
begin
  Clipboard.SetTextBuf(PChar(memo1.SelText));
  memo1.SelText := '';
end;

procedure TForm5.N14Click(Sender: TObject);
begin
  memo1.PasteFromClipboard;
end;

procedure TForm5.N16Click(Sender: TObject);
begin
  PrintDialog1.Execute;
end;

procedure TForm5.N2Click(Sender: TObject);
begin
  Form6.ShowModal;
end;

procedure TForm5.N4Click(Sender: TObject);
var f: integer;
begin
  if (k <> 1) and (s <> Memo1.Text) then f := Application.MessageBox('Вы не сохранили изменения, сохранить?', 'Внимание!',
  MB_YESNOCANCEL+MB_ICONQUESTION) else Application.Terminate;
  if f = IDYES then Save1Click(Sender)
               else if f = IDNO then Application.Terminate
               else Application.Run;
end;

procedure TForm5.N6Click(Sender: TObject);
begin
  Selection(Sender);
  N8.Default:=False;
  N6.Default:=True;
  N7.Default:=False;
  Memo1.Paragraph.Alignment := taLeftJustify;
  Selection2(Sender);
end;

procedure TForm5.N7Click(Sender: TObject);
begin
  Selection(Sender);
  N8.Default:=False;
  N6.Default:=False;
  N7.Default:=True;
  Memo1.Paragraph.Alignment := taCenter;
  Selection2(Sender);
end;

procedure TForm5.N8Click(Sender: TObject);
begin
  Selection(Sender);
  N8.Default:=True;
  N6.Default:=False;
  N7.Default:=False;
  Memo1.Paragraph.Alignment := taRightJustify;
  Selection2(Sender);
end;

procedure TForm5.N9Click(Sender: TObject);
begin
  Selection(Sender);
end;

procedure TForm5.New1Click(Sender: TObject);
var f:integer;
begin
  if (k <> 1) and (s <> Memo1.Text) then f := Application.MessageBox('Вы не сохранили изменения, сохранить?', 'Внимание!',
  MB_YESNOCANCEL+MB_ICONQUESTION);
  if f = IDYES then Save1Click(Sender);
  if f <> IDCANCEL then
                   begin
                     name:= '';
                     Memo1.Lines.Clear;
                     s := Memo1.Text;
                     k := 0;
                     Form5.Caption := 'Новый текстовый документ.txt';
                     n := Form5.Caption;
                     l := 0;
                   end;

end;

procedure TForm5.Open1Click(Sender: TObject);
var f:integer;
begin
  if (k <> 1) and (s <> Memo1.Text) then f := Application.MessageBox('Вы не сохранили изменения, сохранить?', 'Внимание!',
  MB_YESNOCANCEL+MB_ICONQUESTION);
  if f = IDYES then Save1Click(Sender);
  if f <> IDCANCEL then
  begin
    if OpenTextFileDialog1.Execute then
                                begin
                                  name := OpenTextFileDialog1.FileName;
                                  Memo1.Lines.LoadFromFile(OpenTextFileDialog1.FileName);
                                  s := Memo1.Text;
                                  k := 0;
                                  Form5.Caption := OpenTextFileDialog1.FileName;
                                  n := Form5.Caption;
                                  l := 0;
                                end;
  end;
end;

procedure TForm5.Save1Click(Sender: TObject);
begin
  if name <> '' then
                begin
                  Memo1.Lines.SaveToFile(name);
                  Form5.Caption := Copy(Form5.Caption,1,Length(Form5.Caption)-1);
                end
                else SaveAs1Click(Sender);
  s := Memo1.Text;
  k := 1;
  l := 0;
end;

procedure TForm5.SaveAs1Click(Sender: TObject);
begin
  if SaveTextFileDialog1.Execute then
                                 begin
                                  k := 1;
                                  s := Memo1.Text;
                                  Memo1.Lines.SaveToFile(SaveTextFileDialog1.FileName + '.txt');
                                 end;
  Form5.Caption := Copy(Form5.Caption,1,Length(Form5.Caption)-1);
  l := 0;
end;

procedure TForm5.SpeedButton10Click(Sender: TObject);
begin
  Clipboard.SetTextBuf(PChar(memo1.SelText));
  memo1.SelText := '';
end;

procedure TForm5.SpeedButton11Click(Sender: TObject);
begin
  Memo1.Undo;
end;

procedure TForm5.SpeedButton13Click(Sender: TObject);
begin
  Selection(Sender);
  N8.Default:=False;
  N6.Default:=True;
  N7.Default:=False;
  Memo1.Paragraph.Alignment := taLeftJustify;
  Selection2(Sender);
end;

procedure TForm5.SpeedButton14Click(Sender: TObject);
begin
  Selection(Sender);
  N8.Default:=False;
  N6.Default:=False;
  N7.Default:=True;
  Memo1.Paragraph.Alignment := taCenter;
  Selection2(Sender);
end;

procedure TForm5.SpeedButton15Click(Sender: TObject);
begin
  Selection(Sender);
  N8.Default:=True;
  N6.Default:=False;
  N7.Default:=False;
  Memo1.Paragraph.Alignment := taRightJustify;
  Selection2(Sender);
end;

procedure TForm5.SpeedButton1Click(Sender: TObject);
begin
  Selection(Sender);
  if c1 = 0  then
            begin
              Memo1.SelAttributes.Style := Memo1.SelAttributes.Style + [fsBold];
              c1 := 1;
            end
            else
            begin
              Memo1.SelAttributes.Style := Memo1.SelAttributes.Style - [fsBold];
              c1 := 0;
            end;
  Selection2(Sender);
end;

procedure TForm5.SpeedButton2Click(Sender: TObject);
begin
  Selection(Sender);
  if c2 = 0  then
            begin
              Memo1.SelAttributes.Style := Memo1.SelAttributes.Style + [fsItalic];
              c2 := 1;
            end
            else
            begin
              Memo1.SelAttributes.Style := Memo1.SelAttributes.Style - [fsItalic];
              c2 := 0;
            end;
  Selection2(Sender);
end;

procedure TForm5.SpeedButton3Click(Sender: TObject);
begin
  Selection(Sender);
  if c4 = 0  then
             begin
              Memo1.SelAttributes.Style := Memo1.SelAttributes.Style + [fsStrikeOut];
              c4 := 1;
             end
             else
             begin
              Memo1.SelAttributes.Style := Memo1.SelAttributes.Style - [fsStrikeOut];
              c4 := 0;
             end;
  Selection2(Sender);
end;

procedure TForm5.SpeedButton4Click(Sender: TObject);
begin
  Selection(Sender);
  if c3 = 0  then
             begin
              Memo1.SelAttributes.Style := Memo1.SelAttributes.Style + [fsUnderline];
              c3 := 1;
             end
             else
             begin
              Memo1.SelAttributes.Style := Memo1.SelAttributes.Style - [fsUnderline];
              c3 := 0;
             end;
  Selection2(Sender);
end;

procedure TForm5.SpeedButton5Click(Sender: TObject);
begin
  Clipboard.SetTextBuf(PChar(memo1.SelText));
end;

procedure TForm5.SpeedButton6Click(Sender: TObject);
var f:integer;
begin
  if (k <> 1) and (s <> Memo1.Text) then f := Application.MessageBox('Вы не сохранили изменения, сохранить?', 'Внимание!',
  MB_YESNOCANCEL+MB_ICONQUESTION);
  if f = IDYES then Save1Click(Sender);
  if f <> IDCANCEL then
                   begin
                     name:= '';
                     Memo1.Lines.Clear;
                     s := Memo1.Text;
                     k := 0;
                     Form5.Caption := 'Новый текстовый документ.txt';
                     n := Form5.Caption;
                     l := 0;
                   end;
end;

procedure TForm5.SpeedButton7Click(Sender: TObject);
begin
  if name <> '' then
                begin
                  Memo1.Lines.SaveToFile(name);
                  Form5.Caption := Copy(Form5.Caption,1,Length(Form5.Caption)-1);
                end
                else SaveAs1Click(Sender);
  s := Memo1.Text;
  k := 1;
  l := 0;
end;

procedure TForm5.SpeedButton8Click(Sender: TObject);
begin
  if OpenTextFileDialog1.Execute then
                                begin
                                  name := OpenTextFileDialog1.FileName;
                                  Memo1.Lines.LoadFromFile(OpenTextFileDialog1.FileName);
                                  s := Memo1.Text;
                                  k := 0;
                                  Form5.Caption := OpenTextFileDialog1.FileName;
                                  n := Form5.Caption;
                                  l := 0;
                                end;
end;

procedure TForm5.SpeedButton9Click(Sender: TObject);
begin
  memo1.PasteFromClipboard;
end;

procedure TForm5.SpinEdit1Change(Sender: TObject);
begin
  Selection(Sender);
  Memo1.SelAttributes.Size := SpinEdit1.Value;
  Selection2(Sender);
end;

procedure Tform5.MarkAllWords(RE:TRichEdit; TheWord:String; Color:TColor);
var
i, CharPos, CharPos2, noChars: Integer;
begin
  CharPos := 0;
  noChars := 0;
  for i := 0 to Pred(RE.Lines.Count) do
  noChars := noChars + Length(RE.Lines[i]);
  repeat
    CharPos2 := RE.FindText(TheWord, CharPos, noChars, [stWholeWord]);
    CharPos := CharPos2+1;
    RE.SelStart := CharPos2;
    RE.SelLength := Length(TheWord);
    RE.SelAttributes.Color := Color;
  until charpos = 0;
end;

procedure TForm5.Memo1Change(Sender: TObject);
begin
  if s <> Memo1.Text then l:= l + 1;
  if l = 1 then Form5.Caption := Form5.Caption + '*';
  if s = Memo1.Text then
  begin
    Form5.Caption := n;
    l := 0;
  end;
end;

procedure TForm5.Memo1Enter(Sender: TObject);
begin
  n := 'Новый текстовый документ.txt';
end;

type
  TRichEditStyleHookFix = class(TScrollingStyleHook)
  strict private
    procedure EMSetBkgndColor(var Message: TMessage); message EM_SETBKGNDCOLOR;
  end;

{ TRichEditStyleHookFix }

procedure TRichEditStyleHookFix.EMSetBkgndColor(var Message: TMessage);
begin
  Message.LParam := ColorToRGB(StyleServices.GetStyleColor(scEdit));
  Handled := False;
  TStyleManager.Engine.RegisterStyleHook(TRichEdit, TRichEditStyleHookFix);
end;
end.
