object Form8: TForm8
  Left = 0
  Top = 0
  Caption = 'Form8'
  ClientHeight = 274
  ClientWidth = 549
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 454
    Top = 67
    Width = 75
    Height = 25
    Caption = 'Kirim'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 56
    Top = 216
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 1
    TextHint = 'OTP'
  end
  object Edit2: TEdit
    Left = 56
    Top = 69
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '6281399869977'
  end
  object Edit3: TEdit
    Left = 56
    Top = 136
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 3
    TextHint = 'Status'
  end
  object Edit4: TEdit
    Left = 56
    Top = 163
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 4
    TextHint = 'Text1'
  end
  object Edit5: TEdit
    Left = 56
    Top = 189
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 5
    TextHint = 'Text2'
  end
  object Edit6: TEdit
    Left = 200
    Top = 69
    Width = 121
    Height = 21
    TabOrder = 6
    TextHint = 'Kalimat 1'
  end
  object Edit7: TEdit
    Left = 327
    Top = 69
    Width = 121
    Height = 21
    TabOrder = 7
    TextHint = 'Kalimat 1'
  end
  object DBGrid1: TDBGrid
    Left = 200
    Top = 136
    Width = 248
    Height = 101
    DataSource = DataSource1
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object RESTClient1: TRESTClient
    Authenticator = HTTPBasicAuthenticator1
    Params = <>
    Left = 16
  end
  object RESTRequest1: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    Left = 64
    Top = 8
  end
  object RESTResponse1: TRESTResponse
    Left = 168
    Top = 8
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Dataset = FDMemTable1
    FieldDefs = <>
    Response = RESTResponse1
    TypesMode = JSONOnly
    Left = 232
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    Left = 320
    Top = 8
  end
  object HTTPBasicAuthenticator1: THTTPBasicAuthenticator
    Username = 'User'
    Password = 'User'
    Left = 112
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 376
    Top = 16
  end
end
