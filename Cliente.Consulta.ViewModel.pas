unit Cliente.Consulta.ViewModel;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Cliente.Model, System.Actions,
  Vcl.ActnList, Cliente.Manutencao.ViewModel;

type
  TClienteConsultaViewModel = class(TDataModule)
    DataSource: TDataSource;
    ActionList: TActionList;
    ActionNovo: TAction;
    ActionEditar: TAction;
    ActionExcluir: TAction;
    ActionAbrirFechar: TAction;
    procedure DataModuleCreate(Sender: TObject);
    procedure ActionAbrirFecharExecute(Sender: TObject);
    procedure HabilitarSeNaoVazio(Sender: TObject);
    procedure ActionNovoUpdate(Sender: TObject);
    procedure ActionExcluirExecute(Sender: TObject);
    procedure ActionEditarExecute(Sender: TObject);
  private
    FModel: TClienteModel;
    FConfirmacaoExclusao: TFunc<String, Boolean>;
    FOnEditar: TProc<TClienteManutencaoViewModel>;
    FOnImprimir: TProc<TClienteModel>;
  public
    property ConfirmacaoExclusao: TFunc<String, Boolean> read FConfirmacaoExclusao write FConfirmacaoExclusao;
    property OnEditar: TProc<TClienteManutencaoViewModel> read FOnEditar write FOnEditar;
    property OnImprimir: TProc<TClienteModel> read FOnImprimir write FOnImprimir;
    procedure Imprimir;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TClienteConsultaViewModel.ActionAbrirFecharExecute(Sender: TObject);
begin
  if not FModel.cds.Active then
    FModel.cds.Open
  else
    FModel.cds.Close;
end;

procedure TClienteConsultaViewModel.HabilitarSeNaoVazio(Sender: TObject);
begin
  TAction(Sender).Enabled := not FModel.cds.IsEmpty;
end;

procedure TClienteConsultaViewModel.Imprimir;
begin
  // preparar daddos
  if Assigned(OnImprimir) then
    OnImprimir(FModel);
end;

procedure TClienteConsultaViewModel.ActionEditarExecute(Sender: TObject);
var
  VM: TClienteManutencaoViewModel;
begin
  VM := TClienteManutencaoViewModel.Create(nil);
  try
    VM.Model := FModel;
    if Assigned(OnEditar) then
      OnEditar(VM);
  finally
    VM.Free;
  end;
end;

procedure TClienteConsultaViewModel.ActionExcluirExecute(Sender: TObject);
begin
  if Assigned(ConfirmacaoExclusao) then
    if not ConfirmacaoExclusao('Confirma exclusão?') then
      Exit;

  FModel.cds.Delete;
end;

procedure TClienteConsultaViewModel.ActionNovoUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := FModel.cds.Active;
end;

procedure TClienteConsultaViewModel.DataModuleCreate(Sender: TObject);
begin
  FModel := TClienteModel.Create(Self);
  DataSource.DataSet := FModel.cds;
end;

end.
