unit frmLogin_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Classes_u, frmHome_u, frmSignUp_u, frmForGrid_u;

type
  TForm2 = class(TForm)
    edtUsername: TLabeledEdit;
    edtPassword: TLabeledEdit;
    btnLogin: TButton;
    btnSignUp: TButton;
    procedure btnLoginClick(Sender: TObject);
    procedure btnSignUpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  // we are declaring the object
  obj : TLearner;

implementation

{$R *.dfm}

procedure TForm2.btnLoginClick(Sender: TObject);
begin
   //We are instantiating the object
   obj := TLearner.Create(edtUsername.Text, edtPassword.Text);


   if (obj.Login(edtUsername.Text, edtPassword.Text) = true)  then
   begin
     //frmHome.ShowModal();
     frmForGrid.ShowModal();
   end
   else
   begin
     ShowMessage('Entered credentials are incorrect. Please enter the correct information.');
   end;


end;

procedure TForm2.btnSignUpClick(Sender: TObject);
begin
  frmSignUp.ShowModal();
end;

end.
