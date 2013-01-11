program ClientesVCL;

uses
  Vcl.Forms,
  Cliente.Consulta.View in 'Cliente.Consulta.View.pas' {ViewConsulta},
  Cliente.Model in 'Cliente.Model.pas' {ClienteModel: TDataModule},
  Cliente.Consulta.ViewModel in 'Cliente.Consulta.ViewModel.pas' {ClienteConsultaViewModel: TDataModule},
  Cliente.Manutencao.ViewModel in 'Cliente.Manutencao.ViewModel.pas' {ClienteManutencaoViewModel: TDataModule},
  Cliente.Manutencao.View in 'Cliente.Manutencao.View.pas' {ClienteManutencaoView};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewConsulta, ViewConsulta);
  Application.Run;
end.
