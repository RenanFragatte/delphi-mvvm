unit MVVM.Model;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Generics.Collections;

type
  TModel = class(TDataModule)
  private
    FDataSet: TDataSet;
    FDetails: TList<TModel>;
    procedure SetDataSet;
  protected
    procedure AddDetail(Detail: TModel);
  public
    constructor Create(AOwner: TComponent); override;
    procedure Edit; virtual;
    procedure Save; virtual;
    property Details: TList<TModel> read FDetails;
    property DataSet: TDataSet read FDataSet write FDataSet;
  end;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

procedure TModel.AddDetail(Detail: TModel);
begin
  FDetails.Add(Detail);
end;

constructor TModel.Create(AOwner: TComponent);
begin
  inherited;
  SetDataSet;
  FDetails := TList<TModel>.Create;
end;

procedure TModel.Edit;
var
  Detail: TModel;
begin
  DataSet.Edit;
  for Detail in FDetails do
    Detail.Edit;
end;

procedure TModel.Save;
var
  Detail: TModel;
begin
  DataSet.Post;
  for Detail in FDetails do
    Detail.Save;
end;

procedure TModel.SetDataSet;
var
  Component: TComponent;
begin
  for Component in Self do
    if Component is TDataSet then
    begin
      Assert(DataSet = nil);
      DataSet := TDataSet(Component);
    end;
end;

end.
