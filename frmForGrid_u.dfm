object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 16
    Top = 8
    Width = 585
    Height = 153
    DataSource = DataModule1.dscForGrid
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object edtLearnerName: TLabeledEdit
    Left = 88
    Top = 192
    Width = 241
    Height = 23
    EditLabel.Width = 74
    EditLabel.Height = 15
    EditLabel.Caption = 'Learner Name'
    TabOrder = 1
    Text = ''
  end
  object edtLearnerSurname: TLabeledEdit
    Left = 88
    Top = 240
    Width = 241
    Height = 23
    EditLabel.Width = 89
    EditLabel.Height = 15
    EditLabel.Caption = 'Learner Surname'
    TabOrder = 2
    Text = ''
  end
  object edtLearnerUsername: TLabeledEdit
    Left = 88
    Top = 285
    Width = 241
    Height = 23
    EditLabel.Width = 95
    EditLabel.Height = 15
    EditLabel.Caption = 'Learner Username'
    TabOrder = 3
    Text = ''
  end
  object edtLearnerPassword: TLabeledEdit
    Left = 88
    Top = 328
    Width = 241
    Height = 23
    EditLabel.Width = 92
    EditLabel.Height = 15
    EditLabel.Caption = 'Learner Password'
    TabOrder = 4
    Text = ''
  end
  object edtLearnerEmailAddress: TLabeledEdit
    Left = 88
    Top = 376
    Width = 241
    Height = 23
    EditLabel.Width = 116
    EditLabel.Height = 15
    EditLabel.Caption = 'Learner Email Address'
    TabOrder = 5
    Text = ''
  end
  object btnDeleteRecord: TButton
    Left = 416
    Top = 375
    Width = 123
    Height = 25
    Caption = 'Delete'
    TabOrder = 6
    OnClick = btnDeleteRecordClick
  end
end
