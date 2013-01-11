unit MVVM.Model.Tests;

interface

uses
  TestFramework, System.Classes, System.SysUtils, MVVM.Model, Test.Model;

type
  TestTModel = class(TTestCase)
  strict private
    FSUT: TTestModel;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure Edit;
    procedure Save;
  end;

implementation

uses
  Data.DB;

procedure TestTModel.Edit;
begin
  FSUT.Edit;
  CheckTrue(FSUT.DataSet.State = dsInsert);
  CheckTrue(FSUT.Details[0].DataSet.State = dsInsert);
end;

procedure TestTModel.Save;
begin
  FSUT.Edit;
  FSUT.Save;
  CheckTrue(FSUT.DataSet.State = dsBrowse);
  CheckTrue(FSUT.Details[0].DataSet.State = dsBrowse);
end;

procedure TestTModel.SetUp;
begin
  FSUT := TTestModel.Create(nil);
end;

procedure TestTModel.TearDown;
begin
  FSUT.Free;
end;

initialization
  RegisterTest(TestTModel.Suite);

end.

