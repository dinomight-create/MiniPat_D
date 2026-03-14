object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Login Page'
  ClientHeight = 210
  ClientWidth = 438
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object edtUsername: TLabeledEdit
    Left = 64
    Top = 32
    Width = 297
    Height = 23
    EditLabel.Width = 53
    EditLabel.Height = 15
    EditLabel.Caption = 'Username'
    TabOrder = 0
    Text = 'asam'
  end
  object edtPassword: TLabeledEdit
    Left = 64
    Top = 72
    Width = 297
    Height = 23
    EditLabel.Width = 50
    EditLabel.Height = 15
    EditLabel.Caption = 'Password'
    TabOrder = 1
    Text = 'Password1'
  end
  object btnLogin: TButton
    Left = 64
    Top = 128
    Width = 297
    Height = 25
    Caption = 'Login'
    TabOrder = 2
    OnClick = btnLoginClick
  end
  object btnSignUp: TButton
    Left = 355
    Top = 177
    Width = 75
    Height = 25
    Caption = 'Sign Up'
    TabOrder = 3
    OnClick = btnSignUpClick
  end
end
