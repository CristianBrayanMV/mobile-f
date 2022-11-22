import 'package:app_alerta/models/citizen_model.dart';
import 'package:app_alerta/services/api_service.dart';
import 'package:app_alerta/ui/general/colors.dart';
import 'package:app_alerta/ui/widgets/general_widget.dart';
import 'package:flutter/material.dart';

class CitizenPage extends StatelessWidget {
  ApiService apiService = ApiService();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                "Listado de Ciudadanos",
                style: TextStyle(
                    color: kFrontPrimaryColor.withOpacity(0.80),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
              spacing10,
              FutureBuilder(
                future: apiService.getCitizen(),
                builder: (BuildContext context, AsyncSnapshot snap) {
                  if (snap.hasData) {
                    List<CitizenModel> listData = snap.data;
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
                              listData[index].fullname,
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
                                    "Dirección: ${listData[index].address}",
                                  style: TextStyle(
                                    color: kFrontPrimaryColor.withOpacity(0.55),
                                    fontSize: 13.0,
                                  ),
                                ),
                                spacing3,
                                Text(
                                  "Teléfono: ${listData[index].phone}",
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
