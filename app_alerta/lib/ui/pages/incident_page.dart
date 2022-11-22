import 'dart:io';
import 'dart:typed_data';

import 'package:app_alerta/models/incident_model.dart';
import 'package:app_alerta/models/incident_type_model.dart';
import 'package:app_alerta/services/api_service.dart';
import 'package:app_alerta/ui/general/colors.dart';
import 'package:app_alerta/ui/pages/incident_map_page.dart';
import 'package:app_alerta/ui/pages/modals/register_incident_modal.dart';
import 'package:app_alerta/ui/widgets/general_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class IncidentPage extends StatefulWidget {
  @override
  State<IncidentPage> createState() => _IncidentPageState();
}

class _IncidentPageState extends State<IncidentPage>
    with TickerProviderStateMixin {
  List<IncidentTypeModel> incidentTypeList = [];
  ApiService apiService = ApiService();
  List<IncidentModel> listData = [];

  @override
  initState() {
    super.initState();
    getData();
  }

  Future<void> getData() async {
    incidentTypeList = await apiService.getIncidentType();
  }

  showAddIncidentModal(BuildContext context) {
    showModalBottomSheet(
      transitionAnimationController: AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 350),
      ),
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return RegisterIncidentModal(
          incidentTypeList: incidentTypeList,
        );
      },
    ).then((value) {
      setState(() {});
    });
  }

  buildPDF() async {
    ByteData byteData = await rootBundle.load("assets/images/hoja.png");
    Uint8List imageBytes = byteData.buffer.asUint8List();
    final iconUser = await rootBundle.loadString("assets/icons/user_pdf.svg");
    final iconHour = await rootBundle.loadString("assets/icons/hour.svg");
    final iconUPhone= await rootBundle.loadString("assets/icons/phone.svg");
    final iconCalendar = await rootBundle.loadString("assets/icons/calendar.svg");

    pw.Document pdf = pw.Document();
    pdf.addPage(
      pw.MultiPage(
          pageFormat: PdfPageFormat.a4,
          build: (pw.Context context) {
            return [
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Image(pw.MemoryImage(imageBytes), height: 50.0),
                  pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.end,
                    children: [
                      pw.Text(
                        "Centro de ayuda al ciudadano",
                        style: pw.TextStyle(
                          fontSize: 20.0,
                          color: PdfColor.fromHex("00509d"),
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                      pw.SizedBox(
                        height: 10.0,
                      ),
                      pw.Text(
                        "Descargado por: Cristian Muñoz",
                        style: pw.TextStyle(
                          fontSize: 18.0,
                          color: PdfColor.fromHex("005080"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              pw.Divider(
                color: PdfColor.fromHex("C9BBCF"),
              ),
              pw.SizedBox(
                height: 10.0,
              ),
              pw.Text(
                "Resporte de Incidentes",
                style: pw.TextStyle(
                  fontSize: 18.0,
                  color: PdfColor.fromHex("005080"),
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.SizedBox(
                height: 10.0,
              ),
              pw.ListView.builder(
                  itemCount: listData.length,
                  itemBuilder: (pw.Context context, int index) {
                    return pw.Container(
                      padding: pw.EdgeInsets.all(10.0),
                      margin: pw.EdgeInsets.only(bottom: 20.0),
                      decoration: pw.BoxDecoration(
                        border: pw.Border.all(
                          width: 0.2,
                          color: PdfColors.blueAccent,
                        ),
                      ),
                      child: pw.Row(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                pw.Row(
                                    children: [
                                      pw.Text(
                                        "Nombres Completos:",
                                        style: pw.TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: pw.FontWeight.bold,
                                        ),
                                      ),
                                      pw.SizedBox(
                                        width: 10.0,
                                      ),
                                      pw.Text(
                                        listData[index].datosCiudadano.nombres,
                                        style: pw.TextStyle(
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ]
                                ),
                                pw.SizedBox(
                                  height: 5.0,
                                ),
                                pw.Row(
                                    children: [
                                      pw.Text(
                                        "Incidente:",
                                        style: pw.TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: pw.FontWeight.bold,
                                        ),
                                      ),

                                      pw.SizedBox(
                                        width: 10.0,
                                      ),
                                      pw.Text(
                                        listData[index].tipoIncidente.title,
                                        style: pw.TextStyle(
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ]
                                ),
                                pw.SizedBox(
                                  height: 5.0,
                                ),
                                pw.Row(
                                    children: [
                                      pw.Text(
                                        "DNI:",
                                        style: pw.TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: pw.FontWeight.bold,
                                        ),
                                      ),
                                      pw.SizedBox(
                                        width: 10.0,
                                      ),
                                      pw.Text(
                                        listData[index].datosCiudadano.dni,
                                        style: pw.TextStyle(
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ]
                                ),
                                pw.Row(
                                    children: [
                                      pw.SvgImage(
                                        svg: iconUPhone,
                                        height: 30.0,
                                        width: 30.0,
                                      ),

                                      pw.SizedBox(
                                        width: 10.0,
                                      ),
                                      pw.Text(
                                        listData[index].datosCiudadano.telefono,
                                        style: pw.TextStyle(
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ]
                                ),
                                pw.Row(
                                    children: [
                                      pw.SvgImage(
                                        svg: iconCalendar,
                                        height: 30.0,
                                        width: 30.0,
                                      ),

                                      pw.SizedBox(
                                        width: 10.0,
                                      ),
                                      pw.Text(
                                        listData[index].fecha,
                                        style: pw.TextStyle(
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ]
                                ),
                                pw.Row(
                                    children: [
                                      pw.SvgImage(
                                        svg: iconHour,
                                        height: 30.0,
                                        width: 30.0,
                                      ),

                                      pw.SizedBox(
                                        width: 10.0,
                                      ),
                                      pw.Text(
                                        listData[index].hora,
                                        style: pw.TextStyle(
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ]
                                ),
                              ]
                          ),
                          pw.SvgImage(
                            svg: iconUser,
                            height: 50.0,
                            width: 40.0,
                          ),

                        ],
                      ),
                    );
                  }),
            ];
          }),
    );
    Uint8List bytes = await pdf.save();
    Directory directory = await getTemporaryDirectory();
    File archivo = File("${directory.path}/alerta.pdf");
    archivo.writeAsBytes(bytes);
    OpenFilex.open(archivo.path);
  }

  @override
  Widget build(BuildContext context) {
    apiService.getIncident();
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            onTap: () {
              buildPDF();
            },
            child: Container(
              padding: EdgeInsets.all(14.0),
              decoration: BoxDecoration(
                color: Colors.indigo,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.picture_as_pdf,
                color: Colors.white,
              ),
            ),
          ),
          spacing10,
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => IncidentMapPage(
                            incidentList: listData,
                          )));
            },
            child: Container(
              padding: EdgeInsets.all(14.0),
              decoration: BoxDecoration(
                color: kFrontPrimaryColor,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.map,
                color: Colors.white,
              ),
            ),
          ),
          spacing10,
          FloatingActionButton(
            onPressed: () {
              showAddIncidentModal(context);
            },
            backgroundColor: kBrandPrimaryColor,
            child: Icon(
              Icons.add,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                "Listado de Incidentes",
                style: TextStyle(
                    color: kFrontPrimaryColor.withOpacity(0.80),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
              spacing10,
              FutureBuilder(
                future: apiService.getIncident(),
                builder: (BuildContext context, AsyncSnapshot snap) {
                  if (snap.hasData) {
                    listData = snap.data;
                    return Expanded(
                      child: ListView.separated(
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(
                              listData[index].tipoIncidente.title,
                              style: TextStyle(
                                color: kFrontPrimaryColor.withOpacity(0.80),
                                fontSize: 15.0,
                              ),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                spacing3,
                                Text(
                                  "Ciudadano: ${listData[index].datosCiudadano.nombres}",
                                  style: TextStyle(
                                    color: kFrontPrimaryColor.withOpacity(0.55),
                                    fontSize: 13.0,
                                  ),
                                ),
                                spacing3,
                                Text(
                                  "Teléfono: ${listData[index].datosCiudadano.telefono}",
                                  style: TextStyle(
                                    color: kFrontPrimaryColor.withOpacity(0.55),
                                    fontSize: 13.0,
                                  ),
                                ),
                              ],
                            ),
                            trailing: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                spacing3,
                                Text(
                                  "${listData[index].hora}",
                                  style: TextStyle(
                                    color: kFrontPrimaryColor.withOpacity(0.55),
                                    fontSize: 13.0,
                                  ),
                                ),
                                spacing3,
                                Text(
                                  "${listData[index].fecha}",
                                  style: TextStyle(
                                    color: kFrontPrimaryColor.withOpacity(0.55),
                                    fontSize: 13.0,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => const Divider(),
                        itemCount: listData.length,
                      ),
                    );
                  }
                  return Expanded(
                    child: Center(child: CircularProgressIndicator()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
