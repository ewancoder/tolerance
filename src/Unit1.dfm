object Form1: TForm1
  Left = 248
  Top = 153
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Tolerance'
  ClientHeight = 636
  ClientWidth = 720
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 40
    Top = 200
    Width = 329
    Height = 401
  end
  object Image2: TImage
    Left = 352
    Top = 200
    Width = 329
    Height = 401
  end
  object Label5: TLabel
    Left = 8
    Top = 160
    Width = 28
    Height = 13
    Caption = 'Outer'
  end
  object Label10: TLabel
    Left = 8
    Top = 176
    Width = 26
    Height = 13
    Caption = 'Inner'
  end
  object Label12: TLabel
    Left = 680
    Top = 176
    Width = 26
    Height = 13
    Caption = 'Inner'
  end
  object Label11: TLabel
    Left = 680
    Top = 160
    Width = 28
    Height = 13
    Caption = 'Outer'
  end
  object Memo1: TMemo
    Left = -704
    Top = 266
    Width = 713
    Height = 145
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
    Visible = False
  end
  object TrackBar1: TTrackBar
    Left = 40
    Top = 600
    Width = 321
    Height = 33
    Hint = 'Qualitet'
    Max = 19
    Position = 9
    TabOrder = 1
    OnChange = TrackBar1Change
  end
  object TrackBar2: TTrackBar
    Left = 8
    Top = 200
    Width = 33
    Height = 401
    Hint = 'Deviation'
    Max = 27
    Orientation = trVertical
    Position = 10
    TabOrder = 2
    OnChange = TrackBar2Change
  end
  object TrackBar3: TTrackBar
    Left = 760
    Top = 40
    Width = 321
    Height = 25
    Hint = 'Scaling'
    Enabled = False
    Max = 900
    Min = 1
    Position = 100
    TabOrder = 3
    TickMarks = tmBoth
    TickStyle = tsNone
    Visible = False
    OnChange = TrackBar3Change
  end
  object TrackBar4: TTrackBar
    Left = 48
    Top = 156
    Width = 305
    Height = 25
    Hint = 'Diameter'
    Max = 42
    Min = 1
    Position = 9
    TabOrder = 4
    OnChange = TrackBar4Change
  end
  object CheckBox1: TCheckBox
    Left = 920
    Top = 24
    Width = 137
    Height = 17
    Caption = 'Autoscaling'
    Checked = True
    State = cbChecked
    TabOrder = 5
    Visible = False
    OnClick = CheckBox1Click
  end
  object Memo2: TMemo
    Left = -480
    Top = 296
    Width = 489
    Height = 89
    Lines.Strings = (
      'Memo2')
    TabOrder = 6
    Visible = False
  end
  object TrackBar5: TTrackBar
    Left = 8
    Top = 200
    Width = 33
    Height = 401
    Max = 27
    Orientation = trVertical
    Position = 10
    TabOrder = 7
    Visible = False
    OnChange = TrackBar5Change
  end
  object TrackBar6: TTrackBar
    Left = 40
    Top = 600
    Width = 321
    Height = 33
    Max = 19
    Position = 9
    TabOrder = 8
    Visible = False
    OnChange = TrackBar6Change
  end
  object TrackBar7: TTrackBar
    Left = 48
    Top = 176
    Width = 305
    Height = 25
    Max = 42
    Min = 1
    Position = 9
    TabOrder = 9
    OnChange = TrackBar7Change
  end
  object Button2: TButton
    Left = 688
    Top = 604
    Width = 25
    Height = 25
    Caption = 'S'
    TabOrder = 10
    OnClick = Button2Click
  end
  object TrackBar8: TTrackBar
    Left = 360
    Top = 600
    Width = 321
    Height = 45
    Max = 19
    Position = 9
    TabOrder = 11
    OnChange = TrackBar8Change
  end
  object TrackBar9: TTrackBar
    Left = 680
    Top = 200
    Width = 45
    Height = 401
    Max = 27
    Orientation = trVertical
    Position = 10
    TabOrder = 12
    TickMarks = tmTopLeft
    OnChange = TrackBar9Change
  end
  object TrackBar10: TTrackBar
    Left = 368
    Top = 156
    Width = 305
    Height = 25
    Max = 42
    Min = 1
    Position = 9
    TabOrder = 13
    OnChange = TrackBar10Change
  end
  object TrackBar11: TTrackBar
    Left = 768
    Top = 72
    Width = 321
    Height = 25
    Enabled = False
    Max = 900
    Min = 1
    Position = 100
    TabOrder = 14
    TickMarks = tmBoth
    TickStyle = tsNone
    Visible = False
    OnChange = TrackBar11Change
  end
  object CheckBox2: TCheckBox
    Left = 880
    Top = 56
    Width = 97
    Height = 17
    Caption = 'CheckBox2'
    Checked = True
    State = cbChecked
    TabOrder = 15
    Visible = False
    OnClick = CheckBox2Click
  end
  object TrackBar12: TTrackBar
    Left = 680
    Top = 200
    Width = 33
    Height = 401
    Max = 27
    Orientation = trVertical
    Position = 10
    TabOrder = 16
    TickMarks = tmTopLeft
    Visible = False
    OnChange = TrackBar12Change
  end
  object TrackBar13: TTrackBar
    Left = 360
    Top = 600
    Width = 321
    Height = 45
    Max = 19
    Position = 9
    TabOrder = 17
    Visible = False
    OnChange = TrackBar13Change
  end
  object TrackBar14: TTrackBar
    Left = 368
    Top = 176
    Width = 305
    Height = 25
    Max = 42
    Min = 1
    Position = 9
    TabOrder = 18
    OnChange = TrackBar14Change
  end
  object CheckBox3: TCheckBox
    Left = 16
    Top = 136
    Width = 305
    Height = 17
    Caption = 'Sync diameters'
    Checked = True
    State = cbChecked
    TabOrder = 19
    OnClick = CheckBox3Click
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 161
    Height = 121
    BevelOuter = bvLowered
    BevelWidth = 2
    TabOrder = 20
    OnClick = Panel1Click
    object Label1: TLabel
      Left = 8
      Top = 48
      Width = 123
      Height = 13
      Caption = 'Enter tolerance (e.g. h 8)'
    end
    object Label2: TLabel
      Left = 8
      Top = 8
      Width = 131
      Height = 13
      Alignment = taCenter
      Caption = 'Enter outer diameter (mm):'
    end
    object Button1: TButton
      Left = 8
      Top = 88
      Width = 145
      Height = 25
      Caption = 'Build tolerance'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 56
      Top = 64
      Width = 41
      Height = 21
      Hint = 'Qualitet'
      TabOrder = 1
      Text = '8'
    end
    object Edit1: TEdit
      Left = 8
      Top = 64
      Width = 41
      Height = 21
      Hint = 'Deviation'
      TabOrder = 2
      Text = 'h'
    end
    object Edit3: TEdit
      Left = 8
      Top = 24
      Width = 145
      Height = 21
      Hint = 'Inner or outer diameter'
      TabOrder = 3
      Text = '40'
    end
  end
  object Panel2: TPanel
    Left = 176
    Top = 8
    Width = 161
    Height = 121
    BevelWidth = 2
    TabOrder = 21
    OnClick = Panel2Click
    object Label3: TLabel
      Left = 8
      Top = 48
      Width = 124
      Height = 13
      Caption = 'Enter tolerance (e.g. H 8)'
    end
    object Label4: TLabel
      Left = 8
      Top = 8
      Width = 129
      Height = 13
      Alignment = taCenter
      Caption = 'Enter inner diameter (mm):'
    end
    object Button3: TButton
      Left = 8
      Top = 88
      Width = 145
      Height = 25
      Caption = 'Build tolerance'
      TabOrder = 0
      OnClick = Button3Click
    end
    object Edit5: TEdit
      Left = 56
      Top = 64
      Width = 41
      Height = 21
      Hint = 'Qualitet'
      TabOrder = 1
      Text = '8'
    end
    object Edit4: TEdit
      Left = 8
      Top = 64
      Width = 41
      Height = 21
      Hint = 'Deviation'
      TabOrder = 2
      Text = 'H'
    end
    object Edit6: TEdit
      Left = 8
      Top = 24
      Width = 145
      Height = 21
      Hint = 'Inner or outer diameter'
      TabOrder = 3
      Text = '40'
    end
  end
  object Panel3: TPanel
    Left = 384
    Top = 8
    Width = 161
    Height = 121
    BevelOuter = bvLowered
    BevelWidth = 2
    TabOrder = 22
    OnClick = Panel3Click
    object Label6: TLabel
      Left = 8
      Top = 48
      Width = 123
      Height = 13
      Caption = 'Enter tolerance (e.g. h 8)'
    end
    object Label7: TLabel
      Left = 8
      Top = 8
      Width = 131
      Height = 13
      Alignment = taCenter
      Caption = 'Enter outer diameter (mm):'
    end
    object Edit7: TEdit
      Left = 8
      Top = 64
      Width = 41
      Height = 21
      Hint = 'Deviation'
      TabOrder = 0
      Text = 'h'
    end
    object Edit8: TEdit
      Left = 56
      Top = 64
      Width = 41
      Height = 21
      Hint = 'Qualitet'
      TabOrder = 1
      Text = '8'
    end
    object Edit9: TEdit
      Left = 8
      Top = 24
      Width = 145
      Height = 21
      Hint = 'Inner or outer diameter'
      TabOrder = 2
      Text = '40'
    end
    object Button4: TButton
      Left = 8
      Top = 88
      Width = 145
      Height = 25
      Caption = 'Build tolerance'
      TabOrder = 3
      OnClick = Button4Click
    end
  end
  object Panel4: TPanel
    Left = 552
    Top = 8
    Width = 161
    Height = 121
    BevelWidth = 2
    TabOrder = 23
    OnClick = Panel4Click
    object Label8: TLabel
      Left = 8
      Top = 48
      Width = 124
      Height = 13
      Caption = 'Enter tolerance (e.g. H 8)'
    end
    object Label9: TLabel
      Left = 8
      Top = 8
      Width = 129
      Height = 13
      Alignment = taCenter
      Caption = 'Enter inner diameter (mm):'
    end
    object Edit10: TEdit
      Left = 8
      Top = 64
      Width = 41
      Height = 21
      Hint = 'Deviation'
      TabOrder = 0
      Text = 'H'
    end
    object Edit11: TEdit
      Left = 56
      Top = 64
      Width = 41
      Height = 21
      Hint = 'Qualitet'
      TabOrder = 1
      Text = '8'
    end
    object Edit12: TEdit
      Left = 8
      Top = 24
      Width = 145
      Height = 21
      Hint = 'Inner or outer diameter'
      TabOrder = 2
      Text = '40'
    end
    object Button6: TButton
      Left = 8
      Top = 88
      Width = 145
      Height = 25
      Caption = 'Build tolerance'
      TabOrder = 3
      OnClick = Button6Click
    end
  end
end
