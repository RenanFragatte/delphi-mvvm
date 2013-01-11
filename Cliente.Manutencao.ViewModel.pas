unit Cliente.Manutencao.ViewModel;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Cliente.Model;

type
  TClienteManutencaoViewModel = class(TDataModule)
    DataSource: TDataSource;
  private
    FModel: TClienteModel;
    procedure SetModel(const Value: TClienteModel);
  public
    property Model: TClienteModel read FModel write SetModel;
    procedure Salvar;
    procedure Cancelar;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TClienteManutencaoViewModel }

procedure TClienteManutencaoViewModel.Cancelar;
begin
  FModel.cds.Cancel;
end;

procedure TClienteManutencaoViewModel.Salvar;
begin
  FModel.cds.Post;
end;

procedure TClienteManutencaoViewModel.SetModel(const Value: TClienteModel);
begin
  FModel := Value;
  DataSource.DataSet := Value.cds;
end;

end.
