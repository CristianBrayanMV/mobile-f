import 'package:app_alerta/models/user_model.dart';
import 'package:app_alerta/services/api_service.dart';
import 'package:app_alerta/ui/general/colors.dart';
import 'package:app_alerta/ui/pages/home_page.dart';
import 'package:app_alerta/ui/widgets/button_custom_widget.dart';
import 'package:app_alerta/ui/widgets/general_widget.dart';
import 'package:app_alerta/utils/assets_data.dart';
import 'package:app_alerta/utils/constance.dart';
import 'package:flutter/material.dart';

import '../widgets/textfield_custom_widget.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _dniController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  bool isLoading = false;

  Future _login(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      ApiService apiService = ApiService();
      String _dni = _dniController.text;
      String _password = _passwordController.text;
      isLoading = true;
      setState(() {});
      UserModel? usermodel = await apiService.login(_dni, _password);
      if (usermodel != null) {
        //Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
            (route) => false);
      } else {
        isLoading = false;
        setState(() {});
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14.0),
            ),
            backgroundColor: Colors.redAccent,
            content: Row(
              children: [
                Icon(
                  Icons.error_outline,
                  color: Colors.white,
                ),
                spacingWidth10,
                Text("Hubo un error, Intentelo nuevamente"),
              ],
            ),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: !isLoading
          ? SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        spacing30,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              AssetData.logo,
                              height: 20.0,
                            ),
                            spacingWidth6,
                            Text(
                              "Alerta App",
                              style: TextStyle(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold,
                                  color: kFrontPrimaryColor,
                                  letterSpacing: 0.05),
                            ),
                          ],
                        ),
                        Text(
                          "Lorem Ipsum is simply dummy",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                            color: kFrontPrimaryColor.withOpacity(0.75),
                          ),
                        ),
                        spacing30,
                        TextFieldCustomWidget(
                          controller: _dniController,
                          label: "Tú número de DNI",
                          hintText: "Ingresa tu DNI",
                          inputTypeEnum: InputTypeEnum.dni,
                        ),
                        spacing30,
                        TextFieldCustomPasswordWidget(
                            controller: _passwordController),
                        spacing30,
                        ButtonCustomWidget(
                          text: "Iniciar Sesión",
                          onTap: (){
                            _login(context);
                          },
                        ),
                        spacing30,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Aún no esta registrado",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.normal,
                                color: kFrontPrimaryColor.withOpacity(0.75),
                              ),
                            ),
                            spacingWidth6,
                            Text(
                              "Registrate",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: kFrontPrimaryColor.withOpacity(0.75),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          : Center(
              child: SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2.3,
                ),
              ),
            ),
    );
  }
}
