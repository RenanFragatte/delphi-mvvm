unit Test.Model.Detail;

interface

uses
  System.SysUtils, System.Classes, MVVM.Model, Data.DB, Datasnap.DBClient;

type
  TTestModelDetail = class(TModel)
    cds: TClientDataSet;
    cdsMasterID: TIntegerField;
    cdsID: TIntegerField;
  public
    constructor Create(AOwner: TComponent); override;
  end;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

constructor TTestModelDetail.Create(AOwner: TComponent);
begin
  inherited;
  cds.CreateDataSet;
end;

end.
