import 'package:app_alerta/models/incident_type_model.dart';
import 'package:app_alerta/services/api_service.dart';
import 'package:app_alerta/ui/general/colors.dart';
import 'package:app_alerta/ui/widgets/general_widget.dart';
import 'package:flutter/material.dart';

class IncidentTypePage extends StatelessWidget {
  ApiService apiService = ApiService();

  @override
  Widget build(BuildContext context) {
    apiService.getIncidentType();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                "Listado de Tipos de Incidentes",
                style: TextStyle(
                  color: kFrontPrimaryColor.withOpacity(0.80),
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              spacing10,
              FutureBuilder(
                future: apiService.getIncidentType(),
                builder: (BuildContext context, AsyncSnapshot snap) {
                  if (snap.hasData) {
                    List<IncidentTypeModel> listData = snap.data;
                    return Expanded(
                      child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        itemCount: listData.length,
                        separatorBuilder: (context, index) => Divider(
                          indent: 12.0,
                          endIndent: 12.0,
                        ),
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(
                              listData[index].title,
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
                                  "Area: ${listData[index].area}",
                                  style: TextStyle(
                                    color: kFrontPrimaryColor.withOpacity(0.55),
                                    fontSize: 13.0,
                                  ),
                                ),
                                spacing3,
                                Text(
                                  "Nivel: ${listData[index].level}",
                                  style: TextStyle(
                                    color: kFrontPrimaryColor.withOpacity(0.55),
                                    fontSize: 13.0,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    );
                  }else{
                    return Expanded(child: Center(child: CircularProgressIndicator()));
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
