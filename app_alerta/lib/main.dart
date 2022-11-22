
import 'package:app_alerta/ui/pages/home_page.dart';
import 'package:app_alerta/ui/pages/login_page.dart';
import 'package:app_alerta/utils/sp_global.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SPGlobal _prefs = SPGlobal();
  await _prefs.initSharedPreferences();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Alerta App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.workSansTextTheme(),
      ),
      home: PreInit(),
    );
  }
}

class PreInit extends StatelessWidget {

  final SPGlobal _prefs = SPGlobal();

  @override
  Widget build(BuildContext context) {
    return _prefs.token.isEmpty? LoginPage(): HomePage();
  }
}

