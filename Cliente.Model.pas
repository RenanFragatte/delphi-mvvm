unit Cliente.Model;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient;

type
  TClienteModel = class(TDataModule)
    cds: TClientDataSet;
    cdsLAST_NAME: TStringField;
    cdsFIRST_NAME: TStringField;
    cdsACCT_NBR: TFloatField;
    cdsADDRESS_1: TStringField;
    cdsCITY: TStringField;
    cdsSTATE: TStringField;
    cdsZIP: TStringField;
    cdsTELEPHONE: TStringField;
    cdsDATE_OPEN: TDateField;
    cdsSS_NUMBER: TFloatField;
    cdsPICTURE: TStringField;
    cdsBIRTH_DATE: TDateField;
    cdsRISK_LEVEL: TStringField;
    cdsOCCUPATION: TStringField;
    cdsOBJECTIVES: TStringField;
    cdsINTERESTS: TStringField;
    cdsIMAGE: TBlobField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
