object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Pessoas'
  ClientHeight = 477
  ClientWidth = 703
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PC: TPageControl
    Left = 0
    Top = 0
    Width = 703
    Height = 477
    ActivePage = TabCadastro
    Align = alClient
    Style = tsButtons
    TabOrder = 0
    object TabLista: TTabSheet
      Caption = 'Lista'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 695
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          695
          41)
        object SpeedButton1: TSpeedButton
          Left = 648
          Top = 0
          Width = 41
          Height = 35
          Anchors = [akTop, akRight]
          Flat = True
          Glyph.Data = {
            360C0000424D360C000000000000360000002800000020000000200000000100
            180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFF4F4F49E9E9EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0101010000009C9C9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF404040000000000000F0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF010101000000363636FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF41
            4141000000000000FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3E3E3
            E3E3E3E3F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF01010100
            0000363636FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B9B94848482929291414
            14141414292929484848B8B8B8FFFFFFFFFFFFFFFFFFFFFFFF41414100000000
            0000FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBDBD0000000000000000000101011414
            14141414010101000000000000000000C1C1C1FCFCFC030303000000363636FE
            FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF606060000000000000050505ADADADCFCFCFE4E4
            E4E4E4E4CFCFCFADADAD060606000000000000202020000000000000FDFDFDFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF616161000000000000B6B6B6FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFB8B8B80000000000001E1E1EFBFBFBFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFBEBEBE000000000000A5A5A5FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7A7A7000000000000C0C0C0FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF000000000000BCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEBEBE000000000000FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFBBBBBB000000050505FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF060606000000B9B9B9FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF474747000000A8A8A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAA000000464646FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            F3F3F3282828000000CDCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF010101272727F2
            F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            E4E4E4151515141414E4E4E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4141414151515E5
            E5E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            E4E4E4151515141414E4E4E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4141414151515E5
            E5E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            F3F3F3282828000000CDCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF010101272727F2
            F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF474747000000AAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAA000000454545FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFBABABA000000040404FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF060606000000B8B8B8FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF000000000000BCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEBEBE000000000000FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFBDBDBD000000000000A5A5A5FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA5A5A5000000000000BBBBBBFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF626262000000000000BEBEBEFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFC1C1C1000000000000646464FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF5F5F5F000000000000080808ACACACD0D0D0E2E2
            E2E2E2E2D0D0D0ACACAC080808000000000000636363FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBDBD0000000000000000000101011212
            12121212010101000000000000000000BCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B9B94848482929291717
            17171717292929484848B8B8B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3E6E6
            E6E6E6E6F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          OnClick = SpeedButton1Click
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 41
        Width = 695
        Height = 405
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 35
          Height = 405
          Align = alLeft
          TabOrder = 0
          object BtNovo: TSpeedButton
            Left = 4
            Top = 1
            Width = 23
            Height = 27
            Hint = 'Novo'
            Align = alCustom
            Flat = True
            Glyph.Data = {
              E6040000424DE604000000000000360000002800000014000000140000000100
              180000000000B0040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFF5F5F57777774F4F4F5252525252525252524C4C4C666666FFFFFFFFFF
              FFB2B2B2616161555555939393FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F200
              00000000001111110F0F0F0F0F0F0F0F0F000000E9E9E9FFFFFF252525000000
              050505101010000000000000D5D5D5FFFFFFFFFFFFFFFFFF5B5B5B000000EEEE
              EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D3D3D000000000000B4B4B4FF
              FFFF000000000000000000FFFFFFFFFFFFFFFFFF3030301C1C1CFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFDFDFDF000000000000000000A0A0A0F8F8F80000
              00000000000000969696FFFFFFFFFFFF3232321B1B1BFFFFFFFFFFFFF3F3F3F5
              F5F5F4F4F4FFFFFFA6A6A6000000E2E2E2F9F9F9FEFEFEFFFFFFF5F5F5FFFFFF
              111111565656FFFFFFFFFFFF3232321A1A1AFFFFFF3C3C3C0000000000000000
              00E6E6E6B8B8B80000009B9B9BA4A4A4E1E1E1FFFFFFA4A4A4B8B8B806060663
              6363FFFFFFFFFFFF3232321A1A1AFFFFFFE6E6E6A3A3A3A8A8A89F9F9FF5F5F5
              F6F6F6000000000000000000A0A0A0FCFCFC000000000000000000B3B3B3FFFF
              FFFFFFFF3232321A1A1AFFFFFFFFFFFFF9F9F9FCFCFCFBFBFBEFEFEFFFFFFF7A
              7A7A0000000000009A9A9AE9E9E9000000000000212121FFFFFFFFFFFFFFFFFF
              3232321A1A1AFFFFFF4646460000000000000000000000009D9D9DFFFFFF7676
              76000000000000000000000000363636FFFFFFFFFFFFFFFFFFFFFFFF3232321A
              1A1AFFFFFFDEDEDE9999999F9F9F9F9F9F9D9D9D969696FFFFFFFFFFFFF8F8F8
              B4B4B4A7A7A7E8E8E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3232321A1A1AFFFF
              FFFFFFFFFAFAFAFDFDFDFDFDFDFDFDFDFCFCFCF1F1F1F0F0F0F4F4F4FFFFFFFF
              FFFFC6C6C6CCCCCCFFFFFFFFFFFFFFFFFFFFFFFF3232321A1A1AFFFFFF4A4A4A
              000000000000000000000000000000000000000000000000B4B4B4F5F5F50000
              008E8E8EFFFFFFFFFFFFFFFFFFFFFFFF3232321A1A1AFFFFFFD7D7D78B8B8B91
              9191919191919191919191929292949494949494FFFFFFF7F7F7000000969696
              FFFFFFFFFFFFFFFFFFFFFFFF3232321A1A1AFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C5C5000000939393FFFFFFFF
              FFFFFFFFFFFFFFFF3232321A1A1AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF6F6F6F000000000000000000000000000000BFBFBFFFFFFFFFFFFFFFFF
              FFFFFFFF3232321A1A1AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF50
              50500000000000000000000000005A5A5AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              3030301D1D1DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5555550000
              000000000000004F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF42424200
              0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF525252000000000000
              494949FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2C2C20000002222
              228080807B7B7B7B7B7B7B7B7B7B7B7B818181030303000000535353FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2B2B2181818000000
              000000000000000000000000000000000000878787FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF}
            ParentShowHint = False
            ShowHint = True
            OnClick = BtNovoClick
          end
          object BtEditar: TSpeedButton
            Left = 6
            Top = 34
            Width = 23
            Height = 27
            Hint = 'Editar'
            Align = alCustom
            Enabled = False
            Flat = True
            Glyph.Data = {
              E6040000424DE604000000000000360000002800000014000000140000000100
              180000000000B0040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECECEC737373CDCD
              CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81818100000000
              0000000000000000000000000000000000B4B4B4FFFFFF121212626262181818
              B4B4B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8888880000003B3B3B6262625E5E
              5E5E5E5E5E5E5E5E5E5E565656A2A2A2FFFFFF5E5E5EFFFFFF5E5E5E000000C1
              C1C1FFFFFFFFFFFFFFFFFFFFFFFF050505444444FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C7C7000000000000000000000000B3B3
              B3FFFFFFFFFFFFFFFFFF0000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9D9D000000000000000000000000A8A8A8
              FFFFFFFFFFFF0000007B7B7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF949494000000000000000000AEAEAEFFFFFFFF
              FFFF0000007B7B7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF7F7F7F000000BFBFBFFCFCFC050505E7E7E70000
              007B7B7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFDEDEDEB9B9B9FFFFFFDBDBDBECECEC0000000000006D6D6D0000007B7B7B
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8
              E8000000CDCDCDFFFFFF7E7E7E000000202020FFFFFF0000007B7B7BFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEB000000
              9A9A9AFFFFFFFFFFFFC5C5C5FFFFFFFFFFFF0000007B7B7BFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEB0000009F9F9FFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000007B7B7BFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEB0000009F9F9FFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF0000007B7B7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F10000009F9F9FFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF0000007B7B7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFF6F6F6F8F8F8FFFFFFC0C0C00000009C9C9CFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF0000007B7B7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF616161000000
              000000000000000000000000C7C7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
              007B7B7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF46464600000000000000
              0000000000636363FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000007F7F7F
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4B4B4B0000000000000000005050
              50FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000004D4D4DFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF474747000000000000595959FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E7E7E0000004D4D4D7F7F7F7B7B
              7B7B7B7B7B7B7B818181000000000000595959FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F020202000000000000000000
              0000000000000101018B8B8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF}
            ParentShowHint = False
            ShowHint = True
            OnClick = BtEditarClick
          end
          object BtExcluir: TSpeedButton
            Left = 4
            Top = 67
            Width = 23
            Height = 27
            Hint = 'Excluir'
            Align = alCustom
            Enabled = False
            Flat = True
            Glyph.Data = {
              E6040000424DE604000000000000360000002800000014000000140000000100
              180000000000B0040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFF7F7F78A8A8A4F4F4F4E4E4E4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F
              4F4E4E4E575757AFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF53
              5353000000303030333333323232323232323232323232323232323232343434
              222222000000AFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000005858
              58FCFCFCFFFFFFFBFBFBF0F0F0FFFFFFFBFBFBF1F1F1FFFFFFFFFFFFD9D9D921
              21214C4C4CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000006D6D6DFFFFFF
              515151939393FFFFFF5C5C5C8F8F8FFFFFFF676767888888FFFFFF2F2F2F4040
              40FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000006B6B6BFFFFFF0000005B
              5B5BFFFFFF0A0A0A545454FFFFFF191919484848FFFFFF2E2E2E414141FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000006B6B6BFFFFFF030303616161FFFF
              FF1212125A5A5AFFFFFF2222224F4F4FFFFFFF2E2E2E414141FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF0000006B6B6BFFFFFF030303616161FFFFFF121212
              5A5A5AFFFFFF2222224F4F4FFFFFFF2E2E2E414141FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF0000006B6B6BFFFFFF030303616161FFFFFF1212125A5A5AFF
              FFFF2222224F4F4FFFFFFF2E2E2E414141FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF0000006B6B6BFFFFFF030303616161FFFFFF1212125A5A5AFFFFFF2222
              224F4F4FFFFFFF2E2E2E414141FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
              00006B6B6BFFFFFF030303616161FFFFFF1212125A5A5AFFFFFF2222224F4F4F
              FFFFFF2E2E2E414141FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000006B6B
              6BFFFFFF030303616161FFFFFF1212125A5A5AFFFFFF2222224F4F4FFFFFFF2E
              2E2E414141FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000006B6B6BFFFFFF
              000000565656FFFFFF0303034F4F4FFFFFFF131313434343FFFFFF2E2E2E4141
              41FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000006C6C6CFFFFFFA0A0A0C5
              C5C5FFFFFFA6A6A6C4C4C4FFFFFFACACACC0C0C0FDFDFD2F2F2F434343FFFFFF
              FFFFFFFFFFFFFFFFFFF9F9F9FDFDFD000000646464FFFFFFF9F9F9F5F5F5EFEF
              EFF5F5F5F3F3F3F0F0F0F7F7F7FBFBFBE3E3E32D2D2D3F3F3FFFFFFFFCFCFCFF
              FFFFFFFFFF7D7D7D000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000070707B7B7B7FFFFFFFFFF
              FFCECECE13131300000000000000000000000000000000000000000000000000
              00000000000000000000000000000000004C4C4CE8E8E8FFFFFFFFFFFFFFFFFF
              5C5C5C0000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000B3B3B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0505054D4D4DFFFFFFFFFFFFFFFFFFF0F0F0191919575757
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF505050000000626262767676777777454545000000B7B7B7FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FAFAFA5454540000000000000000000808088C8C8CFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF}
            ParentShowHint = False
            ShowHint = True
            OnClick = BtExcluirClick
          end
          object btImportar: TSpeedButton
            Left = 6
            Top = 100
            Width = 23
            Height = 22
            Hint = 'Importar'
            Flat = True
            Glyph.Data = {
              E6040000424DE604000000000000360000002800000014000000140000000100
              180000000000B0040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2B2B23535353A3A3A3A3A
              3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A
              3A3A3A3A3A353535B3B3B3FFFFFFFFFFFF000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000FFFFFFECECEC000000898989FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF898989
              000000ECECECEEEEEE0000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F000000EE
              EEEEEEEEEE0000007E7E7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6E6
              E6E6E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E7E7E000000EEEEEEEEEE
              EE0000007E7E7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFC000000000000FC
              FCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E7E7E000000EEEEEEEEEEEE000000
              7E7E7EFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6000000000000000000000000F6F6
              F6FFFFFFFFFFFFFFFFFFFFFFFF7E7E7E000000EEEEEEEEEEEE0000007E7E7EFF
              FFFFFFFFFFFFFFFFFEFEFE1A1A1A2020200000000000002020201A1A1AFEFEFE
              FFFFFFFFFFFFFFFFFF7E7E7E000000EEEEEEEEEEEE0000007E7E7EFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF131313131313FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF7E7E7E000000EEEEEEEEEEEE0000007E7E7EFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF0F0F0F0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF7E7E7E000000EEEEEEEEEEEE0000007E7E7EFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF0F0F0F0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E7E7E
              000000EEEEEEEEEEEE0000007E7E7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF0F0F0F0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E7E7E000000EE
              EEEEEEEEEE000000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0F
              0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484000000EEEEEEECEC
              EC000000555555B6B6B6ABABABABABABA6A6A6D5D5D5FFFFFF0F0F0F0F0F0FFF
              FFFFD5D5D5A6A6A6ABABABABABABB6B6B6555555000000EDEDEDFFFFFF000000
              000000000000000000000000000000696969FFFFFF000000000000FFFFFF6969
              69000000000000000000000000000000010101FFFFFFFFFFFFFFFFFFBFBFBFC1
              C1C1C1C1C1C1C1C1BDBDBDE0E0E0FFFFFFC4C4C4C4C4C4FFFFFFE0E0E0BDBDBD
              C1C1C1C1C1C1C1C1C1BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF}
            ParentShowHint = False
            ShowHint = True
          end
        end
        object DBGrid1: TDBGrid
          Left = 35
          Top = 0
          Width = 660
          Height = 405
          Align = alClient
          DataSource = DSLista
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = DBGrid1DblClick
          OnKeyDown = DBGrid1KeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'idpessoa'
              Title.Caption = 'ID'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nmprimeiro'
              Title.Caption = 'Nome'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nmsegundo'
              Title.Caption = 'Sobrenome'
              Width = 200
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'dsdocumento'
              Title.Alignment = taCenter
              Title.Caption = 'Documento'
              Width = 65
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'dtregistro'
              Title.Caption = 'Cadastrado em'
              Width = 80
              Visible = True
            end>
        end
      end
    end
    object TabCadastro: TTabSheet
      Caption = 'Cadastro'
      ImageIndex = 1
      object Label1: TLabel
        Left = 8
        Top = 16
        Width = 11
        Height = 13
        Caption = 'ID'
      end
      object Label2: TLabel
        Left = 71
        Top = 16
        Width = 27
        Height = 13
        Caption = 'Nome'
      end
      object Label3: TLabel
        Left = 207
        Top = 16
        Width = 54
        Height = 13
        Caption = 'Sobrenome'
      end
      object Label4: TLabel
        Left = 453
        Top = 16
        Width = 54
        Height = 13
        Caption = 'Documento'
      end
      object Label5: TLabel
        Left = 567
        Top = 16
        Width = 66
        Height = 13
        Caption = 'Data Registro'
      end
      object SpeedButton2: TSpeedButton
        Left = 549
        Top = 192
        Width = 108
        Height = 41
        Caption = 'Salvar'
        Flat = True
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF3333330000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000333333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF3232320000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000333333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
          0000000000000040404040404000000000000000000000000000000000000000
          0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
          00676767FFFFFFFFFFFFFFFFFFFFFFFF66666600000000000000000000000000
          0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0000000000000000000000000000000000000000000000004D4D
          4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4C4C4C00000000000000000000
          0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000000000000000000000000000000000000000000000E9E9
          E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E700000000000000000000
          0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000000000000000000000000000000000000000000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
          0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000000000000000000000000000000000000000000000FCFC
          FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB00000000000000000000
          0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0000000000000000000000000000000000000000000000009191
          91FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F00000000000000000000
          0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
          00D7D7D7FFFFFFFFFFFFFFFFFFFFFFFFD6D6D600000000000000000000000000
          0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
          00000000565656AEAEAEAEAEAE55555500000000000000000000000000000000
          0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0000000000004D4D4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
          0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0000000000004B4B4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
          0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0000000000004A4A4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
          0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0000000000004A4A4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
          0000000000000000000000DEDEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000000000515151FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
          0000000000000000E2E2E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0000000000001515155151514A4A4A4A4A4A4A4A4A4A4A4A4A4A
          4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4D4D4D00000000000000000000
          0000000000DCDCDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF3131310000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000E2E2E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF3131310000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000000DE
          DEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = SpeedButton2Click
      end
      object Label6: TLabel
        Left = 8
        Top = 72
        Width = 19
        Height = 13
        Caption = 'CEP'
      end
      object Label7: TLabel
        Left = 8
        Top = 120
        Width = 13
        Height = 13
        Caption = 'UF'
      end
      object Label8: TLabel
        Left = 71
        Top = 120
        Width = 33
        Height = 13
        Caption = 'Cidade'
      end
      object Label9: TLabel
        Left = 293
        Top = 120
        Width = 28
        Height = 13
        Caption = 'Bairro'
      end
      object Label10: TLabel
        Left = 104
        Top = 72
        Width = 45
        Height = 13
        Caption = 'Endere'#231'o'
      end
      object Label11: TLabel
        Left = 453
        Top = 72
        Width = 65
        Height = 13
        Caption = 'Complemento'
      end
      object editId: TEdit
        Left = 8
        Top = 35
        Width = 57
        Height = 21
        Color = clInactiveBorder
        ReadOnly = True
        TabOrder = 0
      end
      object editNome: TEdit
        Left = 71
        Top = 35
        Width = 130
        Height = 21
        TabOrder = 1
      end
      object editSobrenome: TEdit
        Left = 207
        Top = 35
        Width = 240
        Height = 21
        TabOrder = 2
      end
      object editDocumento: TEdit
        Left = 453
        Top = 35
        Width = 108
        Height = 21
        TabOrder = 3
      end
      object editDataRegistro: TMaskEdit
        Left = 567
        Top = 35
        Width = 90
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 4
        Text = '  /  /    '
      end
      object editCEP: TEdit
        Left = 8
        Top = 91
        Width = 90
        Height = 21
        TabOrder = 5
      end
      object editUF: TEdit
        Left = 8
        Top = 139
        Width = 57
        Height = 21
        TabOrder = 8
      end
      object editCidade: TEdit
        Left = 71
        Top = 139
        Width = 216
        Height = 21
        TabOrder = 9
      end
      object editBairro: TEdit
        Left = 293
        Top = 139
        Width = 154
        Height = 21
        TabOrder = 10
      end
      object editEndereco: TEdit
        Left = 104
        Top = 91
        Width = 343
        Height = 21
        TabOrder = 6
      end
      object editComplemento: TEdit
        Left = 453
        Top = 91
        Width = 130
        Height = 21
        TabOrder = 7
      end
    end
  end
  object mtLista: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 8
    Top = 224
  end
  object DSLista: TDataSource
    DataSet = mtLista
    Left = 8
    Top = 272
  end
end
