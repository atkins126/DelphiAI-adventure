object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'MainForm'
  ClientHeight = 654
  ClientWidth = 1003
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar: TStatusBar
    Left = 0
    Top = 635
    Width = 1003
    Height = 19
    Panels = <>
  end
  object Panel1: TPanel
    Left = 0
    Top = -5
    Width = 833
    Height = 358
    BorderWidth = 1
    BorderStyle = bsSingle
    TabOrder = 1
    inline DrawFrame1: TDrawFrame
      Left = 2
      Top = 2
      Width = 825
      Height = 350
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = 2
      ExplicitWidth = 825
      ExplicitHeight = 350
<<<<<<< HEAD
      inherited PaintBox: TPaintBox
        OnMouseDown = DrawFrame1PaintBoxMouseDown
      end
=======
>>>>>>> e8f608cd522bdc38c67d43349785aa8cfd1c7f97
    end
  end
  object MainMenu: TMainMenu
    Left = 960
    Top = 32
    object MnuFile: TMenuItem
      Caption = '&File'
    end
  end
end
