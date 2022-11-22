import 'dart:convert';
import 'dart:io';

import 'package:app_alerta/models/citizen_model.dart';
import 'package:app_alerta/models/incident_model.dart';
import 'package:app_alerta/models/incident_register_model.dart';
import 'package:app_alerta/models/incident_type_model.dart';
import 'package:app_alerta/models/news_model.dart';
import 'package:app_alerta/models/user_model.dart';
import 'package:app_alerta/utils/constance.dart';
import 'package:app_alerta/utils/sp_global.dart';
import 'package:http/http.dart' as http;
import 'package:mime_type/mime_type.dart';
import 'package:http_parser/http_parser.dart';

class ApiService {

  final SPGlobal _prefs = SPGlobal();

  Future<UserModel?> login(String dni, String password) async {
    Uri _url = Uri.parse("$pathProduction/login/");
    http.Response response = await http.post(
      _url,
      headers: {
        "Content-Type": "application/json",
      },
      body: json.encode(
        {
          "username": dni,
          "password": password,
        },
      ),
    );
    if (response.statusCode == 200) {
      String dataUtf = utf8.decode(response.bodyBytes);
      Map<String, dynamic> myMap = json.decode(dataUtf);
      UserModel usermodel = UserModel.fromJson(myMap["user"]);
      _prefs.token = myMap['access'];
      _prefs.fullName = usermodel.fullName;
      return usermodel;
    }
    return null;
  }

  Future<List<CitizenModel>> getCitizen() async {
    Uri _url = Uri.parse("$pathProduction/ciudadanos/");
    http.Response response = await http.get(_url);
    if (response.statusCode == 200) {
      String dataUtf = utf8.decode(response.bodyBytes);
      Map<String, dynamic> myMap = json.decode(dataUtf);
      List list = myMap['data'];
      List<CitizenModel> citizenList =
          list.map((e) => CitizenModel.fromJson(e)).toList();
      return citizenList;
    }
    return [];
  }

  Future<List<IncidentTypeModel>> getIncidentType() async {
    Uri _url = Uri.parse("$pathProduction/incidentes/tipos/");
    http.Response response = await http.get(_url);
    if (response.statusCode == 200) {
      String dataUtf = utf8.decode(response.bodyBytes);
      List myList = json.decode(dataUtf);
      List<IncidentTypeModel> incidentList =
          myList.map((e) => IncidentTypeModel.fromJson(e)).toList();
      return incidentList;
    }
    return [];
  }

  Future<List<IncidentModel>> getIncident() async {
    Uri _url = Uri.parse("$pathProduction/incidentes/");
    http.Response response = await http.get(_url);
    if (response.statusCode == 200) {
      String dataUtf = utf8.decode(response.bodyBytes);
      List listData = json.decode(dataUtf);
      List<IncidentModel> incidentList =
          listData.map((e) => IncidentModel.fromJson(e)).toList();
      return incidentList;
    }
    return [];
  }

  Future<bool> registerIncident(IncidentRegisterModel model) async {
    Uri _url = Uri.parse("$pathProduction/incidentes/crear/");
    http.Response response = await http.post(
      _url,
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Token ${_prefs.token}",
      },
      body: json.encode({
        "latitud": model.longitude,
        "longitud": model.longitude,
        "tipoIncidente": model.incidenTypeId,
        "estado": model.status,
      }),
    );

    return response.statusCode == 201;
  }

  Future<NewsModel?> registerNews(NewsModel model) async{
    Uri _url = Uri.parse("$pathProduction/noticias/");
    http.MultipartRequest request = http.MultipartRequest("POST", _url);

    List<String> mimeType = mime(model.imagen)!.split("/");

    http.MultipartFile file = await http.MultipartFile.fromPath(
      "imagen",
      model.imagen,
      contentType: MediaType(mimeType[0],mimeType[1])
    );

    request.fields['titulo'] = model.titulo;
    request.fields['link'] = model.link;
    request.fields['fecha'] = "2022-11-18";
    request.files.add(file);

    http.StreamedResponse streamedResponse = await request.send();
    http.Response response = await http.Response.fromStream(streamedResponse);
    if(response.statusCode == 201){
      Map<String,dynamic> myMap = json.decode(response.body);
      NewsModel newsModel = NewsModel.fromJson(myMap);
      return newsModel;
    }

    return null;

  }

  Future<List<NewsModel?>> getNews() async{
    Uri _url = Uri.parse("$pathProduction/noticias/");
    http.Response response = await http.get(_url);
    if(response.statusCode == 200){
      String dataUtf = utf8.decode(response.bodyBytes);
      List listData = json.decode(dataUtf);
      List<NewsModel> newsList = listData.map((e) => NewsModel.fromJson(e)).toList();
      return newsList;
    }
    return [];
  }
}
