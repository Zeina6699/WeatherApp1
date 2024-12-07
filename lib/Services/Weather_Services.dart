import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather/Models/Weather_Model.dart';
class WeatherService{

  String baseUrl='http://api.weatherapi.com/v1';

  String apiKey='5a29ffb9e0d946c5be9211241241703';

  Future<WeatherModel> getWeather({required String cityName})async{
    Uri url=Uri.parse('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=7');
  http.Response response=await http.get(url);
  Map<String,dynamic> data =jsonDecode(response.body);
  var jsonData=data['forecast']['forecastday'][0]['day'];
  WeatherModel weather=WeatherModel(date:data['location']['localtime'], temp:jsonData['avgtemp_c'],maxTemp: jsonData['maxtemp_c'], minTemp: jsonData['mintemp_c'],
   weatherStateName:jsonData['condition']['text']);
   return weather;
 // print(data);

  }

}