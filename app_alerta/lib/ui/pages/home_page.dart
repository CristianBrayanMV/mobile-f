import 'package:app_alerta/ui/general/colors.dart';
import 'package:app_alerta/ui/pages/citizen_page.dart';
import 'package:app_alerta/ui/pages/incident_page.dart';
import 'package:app_alerta/ui/pages/incident_type_page.dart';
import 'package:app_alerta/ui/pages/login_page.dart';
import 'package:app_alerta/ui/pages/news_page.dart';
import 'package:app_alerta/ui/pages/reports_page.dart';
import 'package:app_alerta/ui/widgets/general_widget.dart';
import 'package:app_alerta/ui/widgets/item_menu_widget.dart';
import 'package:app_alerta/utils/sp_global.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  SPGlobal _preference = SPGlobal();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Centro de Ayuda",
          style: TextStyle(
            color: Colors.indigoAccent,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          InkWell(
            onTap: () {
              _preference.token = "";
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
                (route) => false,
              );
            },
            child: Container(
              margin: EdgeInsets.only(
                right: 10.0,
              ),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              child: Icon(
                Icons.exit_to_app,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Bienvenido ${_preference.fullName}",
                style: TextStyle(
                    color: kFrontPrimaryColor.withOpacity(0.80),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
              spacing10,
              Text(
                "Aquí podrá ver, informarce y registrar algunas noticias o incidentes",
                style: TextStyle(
                  color: kFrontPrimaryColor.withOpacity(0.65),
                  fontSize: 15.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
              spacing14,
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 1.2,
                  crossAxisSpacing: 14.0,
                  mainAxisSpacing: 14.0,
                  children: [
                    ItemMenuWidget(
                      color: Color(0xfff72585),
                      text: "Ciudadano",
                      icon: Icons.people,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CitizenPage()));
                      },
                    ),
                    ItemMenuWidget(
                      color: Color(0xffffb088),
                      text: "Incidentes",
                      icon: Icons.add_alert,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IncidentPage()));
                      },
                    ),
                    ItemMenuWidget(
                      color: Color(0xff00509d),
                      text: "Noticias",
                      icon: Icons.newspaper,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NewsPage()));
                      },
                    ),
                    ItemMenuWidget(
                      color: Color(0xff02c39a),
                      text: "Reportes",
                      icon: Icons.bar_chart,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ReportsPage()));
                      },
                    ),
                    ItemMenuWidget(
                      color: Color(0xff7b2cbf),
                      text: "Tipos Incidentes",
                      icon: Icons.warning,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IncidentTypePage()));
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
