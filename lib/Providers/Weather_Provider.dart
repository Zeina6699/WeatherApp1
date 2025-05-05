import 'package:flutter/material.dart';
import 'package:weather/Models/Weather_Model.dart';

class WeatherProvider extends ChangeNotifier{
  
  WeatherModel? weatherData;
  String? cityName;



  set setWeatherData(WeatherModel? weather){
    weatherData!=weather;
    notifyListeners();
  }

WeatherModel? get getWeatherData=>weatherData!; 
}
