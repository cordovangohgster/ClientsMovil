program ClientsMovil;

uses
  System.StartUpCopy,
  FMX.Forms,
  UMain in 'UMain.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
