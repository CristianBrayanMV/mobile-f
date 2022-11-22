

import 'package:flutter/material.dart';

const String pathProduction = "http://alertahunter.herokuapp.com/API";
const String token = "ecd5d94e78dc9600dfe88946ade05fed60fcbff1";
const String tokenMap = "AIzaSyDXE8XP1ZNw1A-v4Wo8VZTy3Xq9eH0xD6s";
enum InputTypeEnum {
  text,
  dni,
  telefono,
}

Map<InputTypeEnum, TextInputType>  inputTypeMap = {
  InputTypeEnum.text: TextInputType.text,
  InputTypeEnum.dni: TextInputType.number,
  InputTypeEnum.telefono: TextInputType.phone,
};