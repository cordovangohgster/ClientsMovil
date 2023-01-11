unit UMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.Objects, FMX.Controls.Presentation, FMX.StdCtrls, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView, FMX.Edit;

type
  TfrmPrincipal = class(TForm)
    tbMain: TTabControl;
    TabLista: TTabItem;
    TabRegistro: TTabItem;
    Rectangle1: TRectangle;
    Label1: TLabel;
    imgAdd: TImage;
    lvClientes: TListView;
    recToolbar: TRectangle;
    lblTitulo: TLabel;
    Label2: TLabel;
    edtNome: TEdit;
    Label3: TLabel;
    edtEmail: TEdit;
    Label4: TLabel;
    edtFone: TEdit;
    imgExcluir: TImage;
    imgVoltar: TImage;
    imgSalvar: TImage;
    procedure imgAddClick(Sender: TObject);
    procedure imgVoltarClick(Sender: TObject);
    procedure imgSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure AddClienteLV(id_cliente: integer; nome, email, fone: String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

procedure TfrmPrincipal.AddClienteLV(id_cliente: integer; nome, email, fone: String);
begin
  with lvClientes.items.Add do begin
    Height := 50;
    tag := id_cliente;
    TListItemText(Objects.FindDrawable('TxtNome')).Text := nome;
    TListItemText(Objects.FindDrawable('TxtEmail')).Text := email;
    TlistItemText(Objects.FindDrawable('TxtFone')).Text := fone;
  end;

end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  tbMain.ActiveTab := tabLista;
end;

procedure TfrmPrincipal.imgAddClick(Sender: TObject);
begin
  TbMain.GotoVisibleTab(1);
end;

procedure TfrmPrincipal.imgSalvarClick(Sender: TObject);
begin
  tbMain.GotoVisibleTab(0)
end;

procedure TfrmPrincipal.imgVoltarClick(Sender: TObject);
begin
  tbMain.GotoVisibleTab(0)
end;

end.
