program MVVMTests;

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  DUnitTestRunner,
  MVVM.Model in '..\MVVM.Model.pas' {Model: TDataModule},
  MVVM.Model.Tests in 'MVVM.Model.Tests.pas',
  Test.Model in 'Test.Model.pas' {TestModel: TDataModule},
  MVVM.Edit.ViewModel in '..\MVVM.Edit.ViewModel.pas' {EditViewModel: TDataModule},
  MVVM.Edit.ViewModel.Tests in 'MVVM.Edit.ViewModel.Tests.pas',
  MVVM.ViewModel in '..\MVVM.ViewModel.pas' {ViewModel: TDataModule},
  Test.Model.Detail in 'Test.Model.Detail.pas' {TestModelDetail: TDataModule};

{$R *.RES}

begin
  DUnitTestRunner.RunRegisteredTests;
end.

