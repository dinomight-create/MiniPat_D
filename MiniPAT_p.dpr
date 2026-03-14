program MiniPAT_p;

uses
  Vcl.Forms,
  frmLogin_u in 'frmLogin_u.pas' {Form2},
  frmHome_u in 'frmHome_u.pas' {Form3},
  dmLearner_u in 'dmLearner_u.pas' {DataModule1: TDataModule},
  Classes_u in 'Classes_u.pas',
  frmSignUp_u in 'frmSignUp_u.pas' {Form1},
  clsSignUp_u in 'clsSignUp_u.pas',
  frmForGrid_u in 'frmForGrid_u.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TfrmHome, frmHome);
  Application.CreateForm(TdmLearner, dmLearner);
  Application.CreateForm(TfrmSignup, frmSignup);
  Application.CreateForm(TfrmForGrid, frmForGrid);
  Application.Run;
end.
