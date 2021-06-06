import 'package:get/get.dart';
import 'package:movilaj/src/seguimiento/controllers/seguimientoTramiteController.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:movilaj/src/utils/estilos.dart' as estiloTexto;
import 'package:movilaj/src/utils/colores.dart' as colores;
import 'package:movilaj/src/widgets/circularProgress_widget.dart';

class TramiteFisicoDetalleView extends StatefulWidget {
  @override
  _TramiteFisicoDetalleViewState createState() =>
      _TramiteFisicoDetalleViewState();
}

class _TramiteFisicoDetalleViewState extends State<TramiteFisicoDetalleView> {
  final seguimientoTramiteController = Get.find<SeguimientoTramiteController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Column(children: [
            Text(
              "Búsqueda",
              style: estiloTexto.estiloTextoBar,
            ),
            Text("Seguimiento por Hoja de Ruta",
                style:
                    TextStyle(fontSize: 10, color: colores.blue_grey_lighten_4))
          ]),
        ),
        body: _crearDatosTramiteFisico());
  }

  Widget _crearDatosTramiteFisico() {
    return Obx(() => (seguimientoTramiteController
                .lstSeguimientoTramiteFisico.length >
            0)
        ? ListView.builder(
            itemCount:
                seguimientoTramiteController.lstSeguimientoTramiteFisico.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text("N° Trámite: ",
                                style: estiloTexto.estiloSubTitulo),
                            Text(
                              '${seguimientoTramiteController.lstSeguimientoTramiteFisico[index].tramiteId}',
                              style: estiloTexto.estiloTexto13,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Hoja de Ruta: ",
                                style: estiloTexto.estiloSubTitulo),
                            Text(
                              '${seguimientoTramiteController.lstSeguimientoTramiteFisico[index].numeroHojaRuta}',
                              style: estiloTexto.estiloTexto13,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Text("Gestión: ",
                                style: estiloTexto.estiloSubTitulo),
                            Text(
                              seguimientoTramiteController
                                  .lstSeguimientoTramiteFisico[index].gestion,
                              style: estiloTexto.estiloTexto13,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Tipo de Trámite: ",
                              style: estiloTexto.estiloSubTitulo,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.65,
                              child: Text(
                                seguimientoTramiteController
                                    .lstSeguimientoTramiteFisico[index]
                                    .tipoTramiteDescripcion,
                                style: estiloTexto.estiloTexto13,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "Cite: ",
                              style: estiloTexto.estiloSubTitulo,
                            ),
                            Text(
                              seguimientoTramiteController
                                  .lstSeguimientoTramiteFisico[index].cite,
                              style: estiloTexto.estiloTexto13,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Referencia",
                          style: estiloTexto.estiloSubTitulo,
                        ),
                        Text(
                          seguimientoTramiteController
                              .lstSeguimientoTramiteFisico[index].referencia,
                          style: estiloTexto.estiloTexto13,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "Entregado por: ",
                              style: estiloTexto.estiloSubTitulo,
                            ),
                            Text(
                              seguimientoTramiteController
                                  .lstSeguimientoTramiteFisico[index]
                                  .entregadoPor,
                              style: estiloTexto.estiloTexto13,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "Origen: ",
                              style: estiloTexto.estiloSubTitulo,
                            ),
                            Text(
                              seguimientoTramiteController
                                  .lstSeguimientoTramiteFisico[index].origen,
                              style: estiloTexto.estiloTexto13,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "Fecha recepción: ",
                              style: estiloTexto.estiloSubTitulo,
                            ),
                            Text(
                              '${DateFormat('dd/MM/yyyy').format(seguimientoTramiteController.lstSeguimientoTramiteFisico[index].fechaRecepcion!)}',
                              style: estiloTexto.estiloTexto13,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "Fecha inicio: ",
                              style: estiloTexto.estiloSubTitulo,
                            ),
                            Text(
                              '${DateFormat('dd/MM/yyyy').format(seguimientoTramiteController.lstSeguimientoTramiteFisico[index].fechaInicio!)}',
                              style: estiloTexto.estiloTexto13,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "Fecha fin: ",
                              style: estiloTexto.estiloSubTitulo,
                            ),
                            Text(
                              //'${(seguimientosTramites[index].fechaFin == null) ? 'En proceso' : DateFormat('dd/MM/yyyy').format(seguimientosTramites[index].fechaFin)}',
                              '${(seguimientoTramiteController.lstSeguimientoTramiteFisico[index].fechaFin == null) ? 'En proceso' : DateFormat('dd/MM/yyyy').format(DateTime.parse(seguimientoTramiteController.lstSeguimientoTramiteFisico[index].fechaFin))}',
                              style: estiloTexto.estiloTexto13,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ));
            })
        : ((seguimientoTramiteController
                    .descargandoSeguimientoTramiteFisico.value ==
                true)
            ? Card(
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: Center(child: CircularProgressWidget()))
            : Center(
                child: Text("No se pudo descargar tramite físico"),
              )));
  }
}