unit frmSignUp_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Classes_u, clsSignUp_u;

type
  TForm1 = class(TForm)
    edtLearnerName: TEdit;
    edtLearnerSurname: TEdit;
    edtPassword: TEdit;
    edtConfirmPassword: TEdit;
    edtLearnerEmailAddress: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    btnSignUp: TButton;
    //procedure edtLearnerNameChange(Sender: TObject);
    procedure btnSignUpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    //procedure GetObjValue(objectThatIsComingFromTheLoginPage: TLearner)
  end;

var
  frmSignUp: TForm1;
  // we are declaring the object
  obj : TSignUp;

implementation

{$R *.dfm}

procedure TForm1.btnSignUpClick(Sender: TObject);
var sUserName : string;
begin
      sUserName := edtLearnerName.Text[1] + edtLearnerSurname.Text;
      obj := TSignUp.Create(edtLearnerName.Text, edtLearnerSurname.Text, sUserName, edtPassword.Text, edtLearnerEmailAddress.Text);

      if (obj.SignUp(edtLearnerName.Text, edtLearnerSurname.Text, sUserName, edtPassword.Text, edtLearnerEmailAddress.Text) = true) then
      begin
        //SignUp was successfull
        ShowMessage('Signup successful. Welcome '+ edtLearnerName.Text +' '+edtLearnerSurname.Text);
      end
      else
      begin
         //SignUp was unsuccessfull
         ShowMessage('Signup unsuccessful. Please try again later');
      end;

end;

end.
