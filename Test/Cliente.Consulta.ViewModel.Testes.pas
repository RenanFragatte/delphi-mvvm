unit Cliente.Consulta.ViewModel.Testes;

interface

uses
  TestFramework, System.SysUtils, Vcl.ActnList, Cliente.Consulta.ViewModel,
  System.Actions, Cliente.Model, Data.DB, System.Classes;

type
  TestTClienteConsultaViewModel = class(TTestCase)
  strict private
    FClienteConsultaViewModel: TClienteConsultaViewModel;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure NaoExcluirQuandoVazio;
  end;

implementation

procedure TestTClienteConsultaViewModel.NaoExcluirQuandoVazio;
begin
  FClienteConsultaViewModel.Model.cds.Open;
  FClienteConsultaViewModel.Model.cds.EmptyDataSet;
  FClienteConsultaViewModel.ActionExcluir.Update;
  CheckFalse(FClienteConsultaViewModel.ActionExcluir.Enabled);
end;

procedure TestTClienteConsultaViewModel.SetUp;
begin
  FClienteConsultaViewModel := TClienteConsultaViewModel.Create(nil);
end;

procedure TestTClienteConsultaViewModel.TearDown;
begin
  FClienteConsultaViewModel.Free;
  FClienteConsultaViewModel := nil;
end;

initialization
  // Register any test cases with the test runner
  RegisterTest(TestTClienteConsultaViewModel.Suite);
end.

