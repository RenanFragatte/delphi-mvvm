unit MVVM.Edit.ViewModel.Tests;

interface

uses
  TestFramework, System.Classes, Data.DB, System.SysUtils,
  MVVM.Edit.ViewModel, Test.Model;

type
  TEditViewModelTests = class(TTestCase)
  strict private
    FSUT: TEditViewModel;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure Edit;
    procedure Save;
  end;

implementation

procedure TEditViewModelTests.Edit;
begin
  CheckFalse(FSUT.Editing);
  FSUT.Edit;
  CheckTrue(FSUT.Editing);
end;

procedure TEditViewModelTests.Save;
begin
  FSUT.Edit;
  FSUT.Save;
  CheckFalse(FSUT.Editing);
end;

procedure TEditViewModelTests.SetUp;
begin
  FSUT := TEditViewModel.Create(nil);
  FSUT.Model := TTestModel.Create(FSUT);
end;

procedure TEditViewModelTests.TearDown;
begin
  FSUT.Free;
end;

initialization
  RegisterTest(TEditViewModelTests.Suite);

end.

