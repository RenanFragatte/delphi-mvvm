unit Test.Model;

interface

uses
  System.SysUtils, System.Classes, MVVM.Model, Data.DB, Datasnap.DBClient, Test.Model.Detail;

type
  TTestModel = class(TModel)
    cds: TClientDataSet;
    cdsDESCRICAO: TStringField;
    cdsID: TIntegerField;
  public
    constructor Create(AOwner: TComponent); override;
  end;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

constructor TTestModel.Create(AOwner: TComponent);
begin
  inherited;
  cds.CreateDataSet;
  AddDetail(TTestModelDetail.Create(Self));
end;

end.

