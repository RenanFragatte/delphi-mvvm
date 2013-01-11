object ClienteModel: TClienteModel
  OldCreateOrder = False
  Height = 150
  Width = 215
  object cds: TClientDataSet
    Aggregates = <>
    FileName = 
      'C:\Users\Public\Documents\RAD Studio\10.0\Samples\Data\clients.c' +
      'ds'
    Params = <>
    Left = 88
    Top = 56
    object cdsLAST_NAME: TStringField
      FieldName = 'LAST_NAME'
    end
    object cdsFIRST_NAME: TStringField
      FieldName = 'FIRST_NAME'
    end
    object cdsACCT_NBR: TFloatField
      FieldName = 'ACCT_NBR'
    end
    object cdsADDRESS_1: TStringField
      FieldName = 'ADDRESS_1'
    end
    object cdsCITY: TStringField
      FieldName = 'CITY'
    end
    object cdsSTATE: TStringField
      FieldName = 'STATE'
      Size = 2
    end
    object cdsZIP: TStringField
      FieldName = 'ZIP'
      Size = 5
    end
    object cdsTELEPHONE: TStringField
      FieldName = 'TELEPHONE'
      Size = 12
    end
    object cdsDATE_OPEN: TDateField
      FieldName = 'DATE_OPEN'
    end
    object cdsSS_NUMBER: TFloatField
      FieldName = 'SS_NUMBER'
    end
    object cdsPICTURE: TStringField
      FieldName = 'PICTURE'
      Size = 15
    end
    object cdsBIRTH_DATE: TDateField
      FieldName = 'BIRTH_DATE'
    end
    object cdsRISK_LEVEL: TStringField
      FieldName = 'RISK_LEVEL'
      Size = 8
    end
    object cdsOCCUPATION: TStringField
      FieldName = 'OCCUPATION'
    end
    object cdsOBJECTIVES: TStringField
      FieldName = 'OBJECTIVES'
      Size = 10
    end
    object cdsINTERESTS: TStringField
      FieldName = 'INTERESTS'
      Size = 120
    end
    object cdsIMAGE: TBlobField
      FieldName = 'IMAGE'
      BlobType = ftTypedBinary
      Size = 1
    end
  end
end
