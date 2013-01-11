unit Cliente.Consulta.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.ExtCtrls, Cliente.Consulta.ViewModel, Cliente.Manutencao.ViewModel,
  Cliente.Model;

type
  TViewConsulta = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button5Click(Sender: TObject);
  private
    FViewModel: TClienteConsultaViewModel;
    function ConfirmarExclusao(Msg: string): Boolean;
    procedure OnEditar(ViewModel: TClienteManutencaoViewModel);
    procedure OnImprimir(Model: TClienteModel);
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  ViewConsulta: TViewConsulta;

implementation

{$R *.dfm}

uses Cliente.Manutencao.View;

{ TViewConsulta }

procedure TViewConsulta.Button5Click(Sender: TObject);
begin
  FViewModel.Imprimir;
end;

function TViewConsulta.ConfirmarExclusao(Msg: string): Boolean;
begin
  Result := MessageDlg(Msg, mtConfirmation, [mbYes, mbNo], 0) = mrYes;
end;

constructor TViewConsulta.Create(AOwner: TComponent);
begin
  inherited;
  FViewModel := TClienteConsultaViewModel.Create(Self);
  DBGrid1.DataSource := FViewModel.DataSource;
  Button1.Action := FViewModel.ActionAbrirFechar;
  Button2.Action := FViewModel.ActionNovo;
  Button3.Action := FViewModel.ActionEditar;
  Button4.Action := FViewModel.ActionExcluir;
  FViewModel.ConfirmacaoExclusao := ConfirmarExclusao;
  FViewModel.OnEditar := OnEditar;
  FViewModel.OnImprimir := OnImprimir;
end;

procedure TViewConsulta.OnEditar(ViewModel: TClienteManutencaoViewModel);
var
  View: TClienteManutencaoView;
begin
  View := TClienteManutencaoView.Create(nil);
  try
    View.ViewModel := ViewModel;
    View.ShowModal;
  finally
    View.Free;
  end;
end;

procedure TViewConsulta.OnImprimir(Mçodel: TClienteModel);
begin
  // instancia Fast Report, etc.. ajskljsldkjksjdks
  ShowMessage(Model.cdsFIRST_NAME.AsString);
end;

end.
