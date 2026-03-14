unit Classes_u;

interface

uses dmLearner_u, System.SysUtils;

type
  TLearner = class(TObject)
  private
    fLearnerName: string;
    fLearnerSurname: string;
    fLearnerUsername: string;
    fLearnerPassword: string;
    fLearnerEmailAddress: string;

  public
    procedure GetLearnerName();
    procedure GetLearnerEmailAddress();
    procedure GetLearnerSurname();
    procedure SetLearnerUsername(sNewUsername: string);
    procedure SetLearnerPassword(sNewPassword: string);
    procedure DeleteRecord(iID: integer);

    function GetLearnerNameValue(): string;
    function GetLearnerID(): integer;

    constructor Create(sUsername: string; sPassword: string);
    // Instantiates the fields for login
    // constructor Create (sLearnerName;sLearnerSurname;sLearnerUsername;sLearnerPassword
    function Login(sUsername: string; sPassword: string): boolean;
    // This is responsible for loging the user in

  end;

implementation

{ TLearner }

constructor TLearner.Create(sUsername, sPassword: string);
begin
  fLearnerUsername := sUsername;
  fLearnerPassword := sPassword;
end;

function TLearner.GetLearnerID() : integer;
begin
  with dmLearner do
  begin
    qryLogin.SQL.Clear;
    qryLogin.SQL.Add('SELECT LearnerID');
    qryLogin.SQL.Add('FROM Learner');
    qryLogin.SQL.Add('WHERE LearnerUsername="' + fLearnerUsername + '"');
    qryLogin.SQL.Add('AND LearnerPassword="' + fLearnerPassword + '"');
    qryLogin.Open;
    result := qryLogin['LearnerID'];
  end;
end;
procedure TLearner.DeleteRecord(iID: integer);
var sID : string;
begin
    sID := IntToStr(iID);
     with dmLearner do
     begin
       qryForGrid.SQL.Clear;
       qryForGrid.SQL.Add('DELETE FROM Learner WHERE LearnerID='+ sID);
     end;
end;

procedure TLearner.GetLearnerEmailAddress; // This method is a Mutator
begin
  with dmLearner do
  begin
    qryLogin.SQL.Clear;
    qryLogin.SQL.Add('SELECT LearnerEmailAddress');
    qryLogin.SQL.Add('FROM Learner');
    qryLogin.SQL.Add('WHERE LearnerUsername="' + fLearnerUsername + '"');
    qryLogin.SQL.Add('AND LearnerPassword="' + fLearnerPassword + '"');
    qryLogin.Open;
    fLearnerEmailAddress := qryLogin['LearnerEmailAddress'];
  end;
end;

procedure TLearner.GetLearnerName;
begin
  with dmLearner do
  begin
    qryLogin.SQL.Clear;
    qryLogin.SQL.Add('SELECT LearnerName');
    qryLogin.SQL.Add('FROM Learner');
    qryLogin.SQL.Add('WHERE LearnerUsername="' + fLearnerUsername + '"');
    qryLogin.SQL.Add('AND LearnerPassword="' + fLearnerPassword + '"');
    qryLogin.Open;
    fLearnerName := qryLogin['LearnerName'];
  end;
end;

function TLearner.GetLearnerNameValue: string;
begin
  result := fLearnerName;
end;

procedure TLearner.GetLearnerSurname;
begin
  with dmLearner do
  begin
    qryLogin.SQL.Clear;
    qryLogin.SQL.Add('SELECT LearnerSurname');
    qryLogin.SQL.Add('FROM Learner');
    qryLogin.SQL.Add('WHERE LearnerUsername="' + fLearnerUsername + '"');
    qryLogin.SQL.Add('AND LearnerPassword="' + fLearnerPassword + '"');
    qryLogin.Open;
    fLearnerSurname := qryLogin['LearnerSurname'];
  end;
end;

function TLearner.Login(sUsername, sPassword: string): boolean;
begin
  with dmLearner do
  begin
    qryLogin.SQL.Clear;
    qryLogin.SQL.Add('SELECT LearnerUsername, LearnerPassword');
    qryLogin.SQL.Add('FROM Learner');
    qryLogin.SQL.Add('WHERE LearnerUsername="' + sUsername + '"');
    qryLogin.SQL.Add('AND LearnerPassword="' + sPassword + '"');
    qryLogin.Open;

    if (qryLogin.RecordCount = 1) then
      result := true
    else
      result := false;
  end;
end;

procedure TLearner.SetLearnerPassword(sNewPassword: string);
var
  sID: string;
begin
  with dmLearner do
  begin
    sID := qryLogin['LearnerID'];
    qryLogin.SQL.Clear;
    qryLogin.SQL.Add('UPDATE Learner');
    qryLogin.SQL.Add('SET LearnerPassword=' + sNewPassword);
    qryLogin.SQL.Add('WHERE LearnerID=' + sID);
    qryLogin.ExecSQL;
  end;
end;

procedure TLearner.SetLearnerUsername(sNewUsername: string);
begin

end;

end.
