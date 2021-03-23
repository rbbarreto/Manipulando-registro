object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'FDMemTable'
  ClientHeight = 452
  ClientWidth = 711
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 21
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 711
    Height = 89
    Align = alTop
    Caption = 'FDMemTable'
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 89
    Width = 711
    Height = 363
    Align = alClient
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object FDMemTable1: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 464
    Top = 128
    object FDMemTable1ID: TAutoIncField
      FieldName = 'ID'
    end
    object FDMemTable1NOME: TStringField
      FieldName = 'NOME'
    end
    object FDMemTable1ENDERECO: TStringField
      FieldName = 'ENDERECO'
    end
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 464
    Top = 176
  end
end
