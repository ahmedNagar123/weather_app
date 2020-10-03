import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 100.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 60.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
);

const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
);
const kTextFieldInputDecoration = InputDecoration(
    filled: true,
    fillColor: Colors.white,
    border:
        OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
    icon: Icon(
      Icons.location_city,
      color: Colors.white,
    ),
    hintText: 'Enter City Name',
    hintStyle: TextStyle(color: Colors.green));

const String kApiKey = '41cf9969de10289a770c43aa38b5180f';
const String kOpenWeatherMapUrl =
    'https://api.openweathermap.org/data/2.5/weather';
