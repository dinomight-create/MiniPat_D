object DataModule1: TDataModule1
  Height = 350
  Width = 483
  object connLearner: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Z:\2023\IT 2023 - G' +
      'RADE 12\PAT MINI EXAMPLE\LearnerDatabase.mdb;Persist Security In' +
      'fo=False'
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 72
    Top = 56
  end
  object qryLogin: TADOQuery
    Connection = connLearner
    Parameters = <>
    Left = 208
    Top = 56
  end
  object dscLogin: TDataSource
    DataSet = qryLogin
    Left = 336
    Top = 64
  end
  object qryForGrid: TADOQuery
    Active = True
    Connection = connLearner
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Learner')
    Left = 216
    Top = 200
  end
  object dscForGrid: TDataSource
    DataSet = qryForGrid
    Left = 336
    Top = 208
  end
end
