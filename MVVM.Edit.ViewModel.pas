unit MVVM.Edit.ViewModel;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MVVM.ViewModel, MVVM.Model;

type
  TEditViewModel = class(TViewModel)
  private
    FModel: TModel;
    function GetEditing: Boolean;
  public
    property Editing: Boolean read GetEditing;
    property Model: TModel read FModel write FModel;
    procedure Edit;
    procedure Save;
  end;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

procedure TEditViewModel.Edit;
begin
  FModel.Edit;
end;

function TEditViewModel.GetEditing: Boolean;
begin
  Result := FModel.DataSet.State in [dsEdit, dsInsert];
end;

procedure TEditViewModel.Save;
begin
  FModel.Save;
end;

end.
