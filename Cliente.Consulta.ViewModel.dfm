object ClienteConsultaViewModel: TClienteConsultaViewModel
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 150
  Width = 215
  object DataSource: TDataSource
    DataSet = ClienteModel.cds
    Left = 64
    Top = 72
  end
  object ActionList: TActionList
    Left = 136
    Top = 32
    object ActionNovo: TAction
      Caption = 'Novo'
      OnUpdate = ActionNovoUpdate
    end
    object ActionEditar: TAction
      Caption = 'Editar'
      OnExecute = ActionEditarExecute
      OnUpdate = HabilitarSeNaoVazio
    end
    object ActionExcluir: TAction
      Caption = 'Excluir'
      OnExecute = ActionExcluirExecute
      OnUpdate = HabilitarSeNaoVazio
    end
    object ActionAbrirFechar: TAction
      Caption = 'Abrir / Fechar'
      OnExecute = ActionAbrirFecharExecute
    end
  end
end
