unit dmLearner_u;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModule1 = class(TDataModule)
    connLearner: TADOConnection;
    qryLogin: TADOQuery;
    dscLogin: TDataSource;
    qryForGrid: TADOQuery;
    dscForGrid: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmLearner: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
