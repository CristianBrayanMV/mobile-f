

import 'dart:convert';

import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:practica_weatherapp/models/clima.dart';

class ClimaService {

  Future<List<Clima>>getLocation() async{
    List<Clima> clim = [];
    Position position = await Geolocator.getCurrentPosition();
    Uri _url = Uri.parse("https://api.openweathermap.org/data/2.5/weather?lat=${position.latitude}&lon=${position.longitude}&appid=43a986e26b08f6bd8d7effeaa7f4dc00");
    http.Response response = await http.get(_url);
    if(response.statusCode == 200){
      Map<String,dynamic> myMap = json.decode(response.body);
      Clima clima = Clima.fromJson(myMap);
      clim.add(clima);
      return clim;
    }
    return clim;
  }


}