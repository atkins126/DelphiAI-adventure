unit Views.MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ToolWin, Vcl.ActnMan,
  Vcl.ActnCtrls, Vcl.ActnMenus, Vcl.StdStyleActnCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, Views.DrawFrame;

type
  /// represents top most window and therefore kind of view host
  TMainForm = class(TForm)
    MainMenu: TMainMenu;
    MnuFile: TMenuItem;
    StatusBar: TStatusBar;
    Panel1: TPanel;
    DrawFrame1: TDrawFrame;
    procedure DrawFrame1PaintBoxMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.DrawFrame1PaintBoxMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  DrawFrame1.PaintBox.Canvas.Pen.Color := clRed;
  DrawFrame1.PaintBox.Canvas.Ellipse(X-15, Y-10, X+15, Y+10);
  Self.Canvas.Pen.Color := clGreen;
  Self.Canvas.Ellipse(X-150, Y-100, X+150, Y+100);
end;

end.
