unit Unit13;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.Buttons, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP;

type
  TForm13 = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    mmResultados: TMemo;
    mmLista: TMemo;
    edSaida: TEdit;
    Label1: TLabel;
    cbSite: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    btBuscar: TBitBtn;
    Label4: TLabel;
    Edit1: TEdit;
    chJPG: TCheckBox;
    chBMP: TCheckBox;
    chGIF: TCheckBox;
    chMP4: TCheckBox;
    Requisicao: TIdHTTP;
    procedure btBuscarClick(Sender: TObject);
    //function ListaImagens;
  private
    { Private declarations }
  public
    { Public declarations }
  posicao : integer;
  retorno : tstringlist;
  identificador, pagina : string;
  end;

var
  Form13: TForm13;  

implementation

{$R *.dfm}

procedure TForm13.btBuscarClick(Sender: TObject);
var
i: integer;
retListaImagens: tstringList;
begin
  retListaImagens := tstringlist.Create;

  if cbSite.ItemIndex = 0 then begin
    // Instagram
  end else if cbSite.ItemIndex = 1  then begin
    // XVideos
    identificador:= '';
    for i := 0 to mmLista.Lines.Count do begin
        pagina := mmLista.lines[i];
        retorno := tstringlist.Create;
        retorno.Text := Requisicao.Get(pagina);


        retorno.Destroy;
    end;

  end else if cbSite.ItemIndex = 2  then begin
    // Tumblr
  end else if cbSite.ItemIndex = 3  then begin
    // Facebook
  end;
  retListaImagens.Destroy;
end;

end.
