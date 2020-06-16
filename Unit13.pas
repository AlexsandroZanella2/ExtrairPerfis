unit Unit13;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ExtCtrls,
  Vcl.Buttons, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  System.Net.URLClient, System.Net.HttpClient, System.Net.HttpClientComponent,
  WinINet, GR32_Image;

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
    BitBtn1: TBitBtn;
    btSalvar: TButton;
    procedure btBuscarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure PesquisaXvideos;
    procedure btSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    posicao: integer;
    retorno: tstringlist;
    identificador, finalizador, finalizador2, pagina: string;
  end;

var
  Form13: TForm13;

implementation

{$R *.dfm}
// Exemplo de pesquisa de Perfis Xvideos:
//
//
//
// P2:
// view-source:https://www.xvideos.com/profile-search/?keywords=&sex=Woman&country=BR&verified=1&p=1
//
// P3:
// view-source:https://www.xvideos.com/profile-search/?keywords=&sex=Woman&country=BR&verified=1&p=2
//
//
//
function CriaSubDir(const NomeSubDir, Local: string): boolean;
var
  Caminho: string;
begin
  Caminho := Local + NomeSubDir;//Substitua 'C:\Fotos' pelo caminho que a subpasta deve ser criada
  if DirectoryExists(Caminho) then
    Result := true
  else
    Result := CreateDir(Caminho);
end;


procedure DownImage(AURL: string; Local: string);
var
  HttpClient: THttpClient;
  HttpResponse: IHttpResponse;
  Strm: TMemoryStream;
  caminhoOrd:string;
  localTest:string;
begin
  HttpClient := THttpClient.Create;
  Strm := TMemoryStream.Create;

  caminhoOrd := copy(AURL,62);
  //showmessage(caminhoOrd);
  caminhoOrd := StringReplace(caminhoOrd,'/','\',[rfReplaceAll, rfIgnoreCase]);
  caminhoOrd := copy(caminhoOrd,pos('\', caminhoOrd)+1);
  caminhoOrd := copy(caminhoOrd,pos('\', caminhoOrd)+1);
  showmessage(caminhoOrd);
  localTest := copy(caminhoOrd,1, pos('\', caminhoOrd));
  CriaSubDir(localTest, Local);
  //showmessage(caminhoOrd);
  try
    HttpResponse := HttpClient.Get(AURL);
    Strm.LoadFromStream(HttpResponse.ContentStream);
    if (Strm.Size > 0) then
    begin
      Strm.Position := 0;
      Strm.SaveToFile(Local+CaminhoOrd);
    end;
  finally
    Strm.Free;
    HttpClient.Free;
  end;
end;

function GetURL(const AURL: string): string;
var
  HttpClient: THttpClient;
  HttpResponse: IHttpResponse;
begin
  HttpClient := THttpClient.Create;
  try
    HttpResponse := HttpClient.Get(AURL);
    Result := HttpResponse.ContentAsString();
  finally
    HttpClient.Free;
  end;
end;

procedure TForm13.PesquisaXvideos;
var
  i, k, l: integer;
  retListaPerfis: tstringlist;
  check: string;
begin
  retListaPerfis := tstringlist.Create;
  //
  identificador :=
    '" class="thumb-block thumb-block-profile  no-rotate"><div class="thumb-inside"><div class="thumb"><a href="';
  finalizador := '"';
  retorno := tstringlist.Create;

  try
    for i := 0 to 12 do
    begin
      pagina := 'https://www.xvideos.com/profile-search/?keywords=&sex=Woman&country=BR&verified=1&p='
        + inttostr(i);

      retorno.Text := GetURL(pagina);

      while retorno.Text.Contains(identificador) do
      begin
        posicao := Pos(identificador, retorno.Text) + length(identificador);
        retorno.Text := copy(retorno.Text, posicao);

        retListaPerfis.Add('https://www.xvideos.com' + copy(retorno.Text, 1,
          Pos('"', retorno.Text) - 1));

      end;
    end;
  finally
    ShowMessage('Busca de Perfis concluída!' + 'Perfis encontrados: ' +
      inttostr(retListaPerfis.Count));
  end;

  mmLista.lines.Text := retListaPerfis.Text;
  retorno.Destroy;
  retListaPerfis.Destroy;
end;

procedure TForm13.BitBtn1Click(Sender: TObject);
begin
  if cbSite.ItemIndex = 1 then
  begin
    PesquisaXvideos;

  end;
end;

procedure TForm13.btBuscarClick(Sender: TObject);
var
  i: integer;
  retListaImagens: tstringlist;
begin
  retorno := tstringlist.Create;
  retListaImagens := tstringlist.Create;
  finalizador := '"';

  if cbSite.ItemIndex = 0 then
  begin
    // Instagram
  end
  else if cbSite.ItemIndex = 1 then
  begin
    // XVideos
    identificador := '';
    for i := 0 to mmLista.lines.Count - 1 do
    begin
      pagina := mmLista.lines[i];
      identificador := copy(mmLista.lines[i],
        length('https://www.xvideos.com') + 1);

      retorno.Text := GetURL(pagina);
      if retorno.Text.Contains('href="' + identificador) then
      begin

        posicao := Pos('href="' + identificador, retorno.Text);
        retorno.Text := copy(retorno.Text, posicao);
        retorno.Text := copy(retorno.Text, 7);
        retorno.Text := copy(retorno.Text, 1, Pos('"', retorno.Text) - 1);

        retorno.Text := GetURL('https://www.xvideos.com' + retorno.Text);

        identificador :=
          '<a class="embed-responsive-item" href="https://img-hw.xvideos.com/videos/profiles/galleries/';

        while retorno.Text.Contains(identificador) do
        begin
          posicao := Pos(identificador, retorno.Text);
          retorno.Text := copy(retorno.Text, posicao);
          // showmessage(retorno.Text);
          retorno.Text := copy(retorno.Text, 40);
          // showmessage(retorno.Text);
          retListaImagens.Add(copy(retorno.Text, 1, Pos('"', retorno.Text)-1));
          // 34
          // showmessage(retorno.Text);
          // break;
        end;
      end;
    end;

  end
  else if cbSite.ItemIndex = 2 then
  begin
    // Tumblr
  end
  else if cbSite.ItemIndex = 3 then
  begin
    // Facebook
  end;
  mmResultados.lines.Text := retListaImagens.Text;
  retListaImagens.Destroy;
  retorno.Destroy;
end;

procedure TForm13.btSalvarClick(Sender: TObject);
var
i: integer;
begin
    for i := 0 to mmResultados.Lines.Count do begin
      //
      DownImage(mmResultados.Lines[i], edSaida.Text);
    end;

end;

end.
