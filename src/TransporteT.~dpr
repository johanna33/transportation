program TransporteT;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {fPrincipal},
  uMenuOper in 'uMenuOper.pas' {fMenuOper},
  uMant in 'uMant.pas' {fMant},
  uOrdenServicio in 'uOrdenServicio.pas' {fOrdenServicio},
  uMenuProcesos in 'uMenuProcesos.pas' {fMenuProcesos},
  uMenuFacturacion in 'uMenuFacturacion.pas' {fMenuFacturacion},
  uMenuReportes in 'uMenuReportes.pas' {fMenuReportes},
  uLogIn in 'uLogIn.pas' {fLogIn},
  uConsultaOrden in 'uConsultaOrden.pas' {dlgConsultaOrden},
  uClientes in 'uClientes.pas' {fClientes},
  uEquipos in 'uEquipos.pas' {fEquipos},
  uChoferes in 'uChoferes.pas' {fChoferes},
  uRegistroM in 'uRegistroM.pas' {fRegistroM},
  uTarifas in 'uTarifas.pas' {fTarifas},
  uSuplidores in 'uSuplidores.pas' {fSuplidores},
  uRListaClientes in 'uRListaClientes.pas' {fRListaCliente},
  uReporteOpe in 'uReporteOpe.pas' {fReporteOpe},
  uRopeGeneral in 'uRopeGeneral.pas' {fRopeGeneral},
  uRListaEquipos in 'uRListaEquipos.pas' {fRListaEquipos},
  uRListaChofer in 'uRListaChofer.pas' {fRListaChofer},
  uRListaSupli in 'uRListaSupli.pas' {fRListaSupli},
  uRprintOrden in 'uRprintOrden.pas' {fRprintOrden},
  uImprimirOrden in 'uImprimirOrden.pas' {fImprimirOrden},
  uBuscarTarifa in 'uBuscarTarifa.pas' {dlgBuscarTarifa},
  uRTarifa in 'uRTarifa.pas' {fRTarifa},
  uRprintPata in 'uRprintPata.pas' {fRprintPata},
  uRelacionS in 'uRelacionS.pas' {fRelacionS},
  uRelacionSupli in 'uRelacionSupli.pas' {fRelacionSupli},
  uRelacionBonos in 'uRelacionBonos.pas' {fRelacionBonos},
  uRrelacionB in 'uRrelacionB.pas' {fRrelacionB},
  uFacturacion in 'uFacturacion.pas' {fFacturacion},
  uModuloF in 'uModuloF.pas' {fModuloF},
  uFactA in 'uFactA.pas' {fFactA},
  uConsultaFact in 'uConsultaFact.pas' {dlgConsultaFact},
  uImprimirFact in 'uImprimirFact.pas' {fImpFact},
  uRimpFact1 in 'uRimpFact1.pas' {fFactImprimir},
  uRimpFact2 in 'uRimpFact2.pas' {fFactImprimir2},
  uRelacionFact in 'uRelacionFact.pas' {fRelacionFact},
  uRelaFact in 'uRelaFact.pas' {fRelaFact},
  uProdEquipo in 'uProdEquipo.pas' {fProdEquipo},
  uProduccionE in 'uProduccionE.pas' {fProduccionE},
  uRGastosM in 'uRGastosM.pas' {fRGastosM},
  uRrelaChofer in 'uRrelaChofer.pas' {fRelaChofer},
  uRelacionChofer in 'uRelacionChofer.pas' {fRelacionChofer},
  uUsuarios in 'uUsuarios.pas' {fUsuarios},
  uDiarioOpe in 'uDiarioOpe.pas' {fDiarioOpe},
  uCombustible in 'uCombustible.pas' {fCombustible},
  uRGastosComb in 'uRGastosComb.pas' {fRGastoComb},
  uRDiario in 'uRDiario.pas' {fRDiario},
  uInventario in 'uInventario.pas' {fInventario},
  uRinven in 'uRinven.pas' {fRinven},
  UReporteIven in 'UReporteIven.pas' {fReporteIven},
  uRrelaChofer1 in 'uRrelaChofer1.pas' {fRelaChofer1},
  uRrelaChofer2 in 'uRrelaChofer2.pas' {fRelaChofer2},
  uRListaTarifa in 'uRListaTarifa.pas' {fRListaTarifa},
  uRelacionChoferMod in 'uRelacionChoferMod.pas' {fRelaChofModi},
  uConsultaChofer in 'uConsultaChofer.pas' {dlgConsultaChofer},
  uConsultaEquipo in 'uConsultaEquipo.pas' {dlgConsultaEquipo},
  uConsultaCliente in 'uConsultaCliente.pas' {dlgConsultaCliente},
  uConsultaSuplidor in 'uConsultaSuplidor.pas' {dlgConsultaSuplidor},
  uConsultaRegistro in 'uConsultaRegistro.pas' {dlgConsultaRegistro},
  uConsultaCombustible in 'uConsultaCombustible.pas' {dlgConsultaCombustible},
  uConsultaInventario in 'uConsultaInventario.pas' {dlgConsultaInventario};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Transporte';
  Application.CreateForm(TfLogIn, fLogIn);
  Application.CreateForm(TfPrincipal, fPrincipal);
  Application.CreateForm(TfMenuOper, fMenuOper);
  Application.CreateForm(TfMant, fMant);
  Application.CreateForm(TfOrdenServicio, fOrdenServicio);
  Application.CreateForm(TfMenuProcesos, fMenuProcesos);
  Application.CreateForm(TfMenuFacturacion, fMenuFacturacion);
  Application.CreateForm(TfMenuReportes, fMenuReportes);
  Application.CreateForm(TdlgConsultaOrden, dlgConsultaOrden);
  Application.CreateForm(TfClientes, fClientes);
  Application.CreateForm(TfEquipos, fEquipos);
  Application.CreateForm(TfChoferes, fChoferes);
  Application.CreateForm(TfRegistroM, fRegistroM);
  Application.CreateForm(TfTarifas, fTarifas);
  Application.CreateForm(TfSuplidores, fSuplidores);
  Application.CreateForm(TfRListaCliente, fRListaCliente);
  Application.CreateForm(TfReporteOpe, fReporteOpe);
  Application.CreateForm(TfRopeGeneral, fRopeGeneral);
  Application.CreateForm(TfRListaEquipos, fRListaEquipos);
  Application.CreateForm(TfRListaChofer, fRListaChofer);
  Application.CreateForm(TfRListaSupli, fRListaSupli);
  Application.CreateForm(TfRprintOrden, fRprintOrden);
  Application.CreateForm(TfImprimirOrden, fImprimirOrden);
  Application.CreateForm(TdlgBuscarTarifa, dlgBuscarTarifa);
  Application.CreateForm(TfRTarifa, fRTarifa);
  Application.CreateForm(TfRprintPata, fRprintPata);
  Application.CreateForm(TfRelacionS, fRelacionS);
  Application.CreateForm(TfRelacionSupli, fRelacionSupli);
  Application.CreateForm(TfRelacionBonos, fRelacionBonos);
  Application.CreateForm(TfRrelacionB, fRrelacionB);
  Application.CreateForm(TfFacturacion, fFacturacion);
  Application.CreateForm(TfModuloF, fModuloF);
  Application.CreateForm(TfFactA, fFactA);
  Application.CreateForm(TdlgConsultaFact, dlgConsultaFact);
  Application.CreateForm(TfImpFact, fImpFact);
  Application.CreateForm(TfFactImprimir, fFactImprimir);
  Application.CreateForm(TfFactImprimir2, fFactImprimir2);
  Application.CreateForm(TfRelacionFact, fRelacionFact);
  Application.CreateForm(TfRelaFact, fRelaFact);
  Application.CreateForm(TfProdEquipo, fProdEquipo);
  Application.CreateForm(TfProduccionE, fProduccionE);
  Application.CreateForm(TfRGastosM, fRGastosM);
  Application.CreateForm(TfRelaChofer, fRelaChofer);
  Application.CreateForm(TfRelacionChofer, fRelacionChofer);
  Application.CreateForm(TfUsuarios, fUsuarios);
  Application.CreateForm(TfDiarioOpe, fDiarioOpe);
  Application.CreateForm(TfCombustible, fCombustible);
  Application.CreateForm(TfRGastoComb, fRGastoComb);
  Application.CreateForm(TfRDiario, fRDiario);
  Application.CreateForm(TfInventario, fInventario);
  Application.CreateForm(TfRinven, fRinven);
  Application.CreateForm(TfReporteIven, fReporteIven);
  Application.CreateForm(TfRelaChofer1, fRelaChofer1);
  Application.CreateForm(TfRelaChofer2, fRelaChofer2);
  Application.CreateForm(TfRListaTarifa, fRListaTarifa);
  Application.CreateForm(TfRelaChofModi, fRelaChofModi);
  Application.CreateForm(TdlgConsultaChofer, dlgConsultaChofer);
  Application.CreateForm(TdlgConsultaEquipo, dlgConsultaEquipo);
  Application.CreateForm(TdlgConsultaCliente, dlgConsultaCliente);
  Application.CreateForm(TdlgConsultaSuplidor, dlgConsultaSuplidor);
  Application.CreateForm(TdlgConsultaRegistro, dlgConsultaRegistro);
  Application.CreateForm(TdlgConsultaCombustible, dlgConsultaCombustible);
  Application.CreateForm(TdlgConsultaInventario, dlgConsultaInventario);
  Application.Run;
end.
