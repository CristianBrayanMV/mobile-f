import 'dart:io';

import 'package:app_alerta/models/news_model.dart';
import 'package:app_alerta/services/api_service.dart';
import 'package:app_alerta/ui/general/colors.dart';
import 'package:app_alerta/ui/widgets/button_custom_widget.dart';
import 'package:app_alerta/ui/widgets/general_widget.dart';
import 'package:app_alerta/ui/widgets/textfield_custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class NewsRegisterPage extends StatefulWidget {
  @override
  State<NewsRegisterPage> createState() => _NewsRegisterPageState();
}

class _NewsRegisterPageState extends State<NewsRegisterPage> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _linkController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  final ImagePicker _imagePicker = ImagePicker();

  XFile? _imageFile;

  getImageCamera() async {
    _imageFile = await _imagePicker.pickImage(
      source: ImageSource.camera,
    );
    if (_imageFile != null) {
      setState(() {});
    }
  }

  getImageGallery() async {
    _imageFile = await _imagePicker.pickImage(
      source: ImageSource.gallery,
    );
    if (_imageFile != null) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: kFrontPrimaryColor),
        title: Text(
          "Registrar Noticia",
          style: TextStyle(color: kFrontPrimaryColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFieldCustomWidget(
                  controller: _titleController,
                  hintText: "Ingresa un titulo",
                  label: "Titulo",
                ),
                spacing14,
                TextFieldCustomWidget(
                  controller: _linkController,
                  hintText: "Ingresa un Link",
                  label: "Link",
                ),
                spacing14,
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {
                          getImageCamera();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.indigo,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        icon: Icon(Icons.camera),
                        label: Text("Camara"),
                      ),
                    ),
                    spacingWidth14,
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {
                          getImageGallery();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        icon: Icon(Icons.image),
                        label: Text("Galería"),
                      ),
                    ),
                  ],
                ),
                spacing14,
                _imageFile != null
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(14.0),
                        child: Image(
                          height: 200,
                          width: 200,
                          fit: BoxFit.cover,
                          image: FileImage(
                            File(
                              _imageFile!.path,
                            ),
                          ),
                        ),
                      )
                    : SizedBox(),
                spacing14,
                ButtonCustomWidget(
                  text: "Registrar Noticia",
                  onTap: () {

                    if (_formKey.currentState!.validate()) {
                      if (_imageFile != null) {
                        ApiService apiService = ApiService();
                        NewsModel model = NewsModel(
                          link: _linkController.text,
                          titulo: _titleController.text,
                          fecha: DateTime.now(),
                          imagen: _imageFile!.path,
                        );
                        apiService.registerNews(model).then((value){
                          Alert(
                            context: context,
                            type: AlertType.success,
                            title: "Registro Exitoso",
                            desc: "La noticia se envio con exito",
                            style: AlertStyle(
                                animationDuration: Duration(milliseconds: 400)
                            ),
                            buttons: [
                              DialogButton(
                                child: Text(
                                  "Aceptar",
                                  style: TextStyle(color: Colors.white, fontSize: 20),
                                ),
                                onPressed: () => Navigator.pop(context),
                                color: Color.fromRGBO(0, 179, 134, 1.0),
                                radius: BorderRadius.circular(10.0),
                              ),
                            ],
                          ).show();
                          _titleController.text= "";
                          _linkController.text="";
                          _imageFile = null;
                          setState(() {

                          });

                        });
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.red,
                            behavior: SnackBarBehavior.floating,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                10.0,
                              ),
                            ),
                            content: Row(
                              children: [
                                Icon(
                                  Icons.warning,
                                  color: Colors.white,
                                ),
                                spacingWidth10,
                                Text(
                                  "Aún no a seleccionado ninguna imagen",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        );
                      }
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
