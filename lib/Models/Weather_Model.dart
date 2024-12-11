import 'package:flutter/material.dart';

class WeatherModel{
   String date;
   double temp;
   double maxTemp;
   double minTemp;
   String weatherStateName;

  WeatherModel({required this.date, required this.temp, required this.maxTemp, required this.minTemp, required this.weatherStateName});
  
  factory WeatherModel.fromJson(dynamic data){
  var json=data['forecast']['forecastday'][0]['day'];

  return WeatherModel(
  date: data['location']['localtime'], 
  temp: json['avgtemp_c'],
  maxTemp:  json['maxtemp_c'],
  minTemp:json['mintemp_c'],
  weatherStateName:json['condition']['text']);


   /* var json=data['forecast']['forecastday'][0]['day'];
    date:data['location']['localtime'];
     temp=json['avgtemp_c'];
     maxTemp: json['maxtemp_c'];
     minTemp: json['mintemp_c'];
     weatherStateName:json['condition']['text'];*/
    }

@override
  String toString() {
    // TODO: implement toString
    return "Mintemp=$minTemp   maxtemp=$maxTemp    date=$date";
  }
  String getImage(){
  
if(weatherStateName=="Partly cloudy"||weatherStateName=='Cloudy'||weatherStateName=='Overcast'||weatherStateName=='Heavy Cloud') 
  return "assets/images/cloudy.png";
 else if(weatherStateName=='Mist'||weatherStateName=='Freezing fog'||weatherStateName=='Fog') return "assets/images/ccc.jpg"; 
else if(weatherStateName=='Moderate or heavy showers of ice pellets'||weatherStateName=='Light showers of ice pellets'||
weatherStateName=='Light snow showers'||weatherStateName=='Moderate rain'||weatherStateName=='Moderate or heavy snow showers'||weatherStateName=='Blowing snow'||weatherStateName=='Moderate or heavy snow with thunder'||weatherStateName=='Patchy light snow with thunder'||weatherStateName=='Ice pellets'||weatherStateName=='Patchy sleet possible'||weatherStateName=='Light snow'||weatherStateName=='Light sleet'||weatherStateName=='Moderate or heavy sleet'||weatherStateName=='Patchy moderate snow'||weatherStateName=='Moderate snow'||weatherStateName=='Patchy heavy snow'||weatherStateName=='Patchy light snow'||weatherStateName=='Patchy snow possible'||weatherStateName=='Heavy snow'||weatherStateName=='Blizzard')
return "assets/images/snow.png"; 
else if(weatherStateName=='Light drizzle'||weatherStateName=="Patchy rain nearby"||weatherStateName=='Light Rain'||weatherStateName=='Patchy light rain'||weatherStateName=='Moderate or heavy freezing rain'||
weatherStateName=='Patchy light rain with thunder'||weatherStateName=='Heavy Rain '||weatherStateName=='Moderate or heavy rain with thunder'||
weatherStateName=='Light rain shower'||weatherStateName=='Moderate or heavy rain shower'||weatherStateName=='Torrential rain shower'||weatherStateName=='Light sleet showers'||weatherStateName=='Patchy rain possible'||weatherStateName=='Moderate or heavy sleet showers' ||weatherStateName=='Light sleet showers'
||weatherStateName=='Light freezing rain'||weatherStateName=='Heavy rain at times'||weatherStateName=='Heavy rain'||weatherStateName=='Moderate rain at times'||weatherStateName=='Light rain'||weatherStateName== 'Patchy light drizzle'
||weatherStateName=='Heavy freezing drizzle'||weatherStateName=='Freezing drizzle'||weatherStateName=='Light drizzle')return "assets/images/rainy.png"; 
else if(weatherStateName=='Clear'||weatherStateName=='Light Cloud'||weatherStateName=="Sunny")return  "assets/images/clear.png";
else return "assets/images/thunderstorm.png";  
}


Color getThemeColor(){
if(weatherStateName=="Partly cloudy"||weatherStateName=='Cloudy'||weatherStateName=='Overcast'||weatherStateName=='Heavy Cloud') 
  return Colors.blueGrey;
 else if(weatherStateName=='Mist'||weatherStateName=='Freezing fog'||weatherStateName=='Fog')
  return Colors.blueGrey;
else if(weatherStateName=='Moderate or heavy showers of ice pellets'||weatherStateName=='Light showers of ice pellets'||
weatherStateName=='Light snow showers'||weatherStateName=='Moderate rain'||weatherStateName=='Moderate or heavy snow showers'||weatherStateName=='Blowing snow'||weatherStateName=='Moderate or heavy snow with thunder'||weatherStateName=='Patchy light snow with thunder'||weatherStateName=='Ice pellets'||weatherStateName=='Patchy sleet possible'||weatherStateName=='Light snow'||weatherStateName=='Light sleet'||weatherStateName=='Moderate or heavy sleet'||weatherStateName=='Patchy moderate snow'||weatherStateName=='Moderate snow'||weatherStateName=='Patchy heavy snow'||weatherStateName=='Patchy light snow'||weatherStateName=='Patchy snow possible'||weatherStateName=='Heavy snow'||weatherStateName=='Blizzard')
return const Color.fromARGB(255, 33, 243, 191);
else if(weatherStateName=='Light Rain'||weatherStateName=='Patchy light rain'||weatherStateName=='Moderate or heavy freezing rain'||
weatherStateName=='Patchy light rain with thunder'||weatherStateName=='Heavy Rain '||weatherStateName=='Moderate or heavy rain with thunder'||
weatherStateName=='Light rain shower'||weatherStateName=='Moderate or heavy rain shower'||weatherStateName=='Torrential rain shower'||weatherStateName=='Light sleet showers'||weatherStateName=='Patchy rain possible'||weatherStateName=='Moderate or heavy sleet showers' ||weatherStateName=='Light sleet showers'
||weatherStateName=='Light freezing rain'||weatherStateName=='Heavy rain at times'||weatherStateName=='Heavy rain'||weatherStateName=='Moderate rain at times'||weatherStateName=='Light rain'||weatherStateName== 'Patchy light drizzle'
||weatherStateName=='Heavy freezing drizzle'||weatherStateName=='Freezing drizzle'||weatherStateName=='Light drizzle'||weatherStateName=="Patchy rain nearby")
  return Colors.blue;
else if(weatherStateName=='Clear'||weatherStateName=='Light Cloud'||weatherStateName=="Sunny")
return  Colors.yellow;
else return Colors.blueGrey;  
}
    }
