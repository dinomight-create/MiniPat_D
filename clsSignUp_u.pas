unit clsSignUp_u;

interface
uses dmLearner_u, System.SysUtils;

type
  TSignUp = class (TObject)
    private
      fLearnerName : string;
      fLearnerSurname : string;
      fLearnerUsername : string;
      fLearnerPassword : string;
      fLearnerEmailAddress : string;

    public
      constructor Create(sName, sSurname, sUsername, sPassword, sEmail : string);
      function SignUp(sName, sSurname, sUsername, sPassword,
      sEmail: string): boolean;
  end;

implementation

{ TSignUp }

constructor TSignUp.Create(sName, sSurname, sUsername, sPassword,
  sEmail: string);
begin
     fLearnerName := sName;
      fLearnerSurname := sSurname;
      fLearnerUsername :=sUsername;
      fLearnerPassword := sPassword;
      fLearnerEmailAddress := sEmail;
end;

function TSignUp.SignUp(sName, sSurname, sUsername, sPassword,
  sEmail: string): boolean;
begin

end;

end.
