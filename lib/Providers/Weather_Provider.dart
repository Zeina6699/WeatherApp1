import 'package:flutter/material.dart';
import 'package:weather/Models/Weather_Model.dart';
import 'package:provider/provider.dart';

class WeatherProvider extends ChangeNotifier{
  WeatherModel? weatherData;
  String? cityName;


  set setWeatherData(WeatherModel? weather){
    weatherData=weather;
  }

WeatherModel? get getWeatherData=>weatherData!;



void notifyListeners();
   
}
