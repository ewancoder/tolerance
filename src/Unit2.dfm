object Form2: TForm2
  Left = 192
  Top = 125
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Settings'
  ClientHeight = 131
  ClientWidth = 176
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 51
    Height = 13
    Caption = 'Language:'
  end
  object RadioButton1: TRadioButton
    Left = 16
    Top = 24
    Width = 121
    Height = 17
    Caption = 'English'
    Checked = True
    TabOrder = 0
    TabStop = True
    OnClick = RadioButton1Click
  end
  object RadioButton2: TRadioButton
    Left = 16
    Top = 40
    Width = 121
    Height = 17
    Caption = 'Russian'
    TabOrder = 1
    OnClick = RadioButton2Click
  end
  object RadioButton3: TRadioButton
    Left = 16
    Top = 56
    Width = 113
    Height = 17
    Caption = 'The other'
    TabOrder = 2
    OnClick = RadioButton3Click
  end
  object Button1: TButton
    Left = 8
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Apply'
    TabOrder = 3
    OnClick = Button1Click
  end
  object OpenDialog1: TOpenDialog
    Left = 104
    Top = 96
  end
end
