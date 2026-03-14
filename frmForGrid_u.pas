unit frmForGrid_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, dmLearner_u, Classes_u;

type
  TForm4 = class(TForm)
    DBGrid1: TDBGrid;
    edtLearnerName: TLabeledEdit;
    edtLearnerSurname: TLabeledEdit;
    edtLearnerUsername: TLabeledEdit;
    edtLearnerPassword: TLabeledEdit;
    edtLearnerEmailAddress: TLabeledEdit;
    btnDeleteRecord: TButton;
    procedure btnDeleteRecordClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetObjectInstancce(objParameter : TLearner);
  end;

var
  frmForGrid: TForm4;
  obj : TLearner;

implementation

{$R *.dfm}

procedure TForm4.btnDeleteRecordClick(Sender: TObject);
var iID : integer;
begin
     iID := obj.GetLearnerID();
     if MessageDlg('Are you sure you want to delete the learner?'
     ,mtWarning,[mbOK,mbCancel],0) = mrOK then
     begin
       // Inside here, we must call the procedure that deletes
       obj.DeleteRecord(iID);
       ShowMessage('Record deleted successfully');
     end;

end;

procedure TForm4.SetObjectInstancce(objParameter: TLearner);
begin
   obj := objParameter;
end;

end.
