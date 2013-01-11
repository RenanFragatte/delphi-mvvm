unit Cliente.Manutencao.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Cliente.Manutencao.ViewModel,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TClienteManutencaoView = class(TForm)
    DBEdit1: TDBEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FViewModel: TClienteManutencaoViewModel;
    procedure SetViewModel(const Value: TClienteManutencaoViewModel);
  public
    property ViewModel: TClienteManutencaoViewModel read FViewModel write SetViewModel;
  end;

implementation

{$R *.dfm}

{ TClienteManutencaoView }

procedure TClienteManutencaoView.Button1Click(Sender: TObject);
begin
  FViewModel.Salvar;
  ModalResult := mrOk;
end;

procedure TClienteManutencaoView.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if ModalResult <> mrOk then
    FViewModel.Cancelar;
end;

procedure TClienteManutencaoView.SetViewModel(
  const Value: TClienteManutencaoViewModel);
begin
  FViewModel := Value;
end;

end.
