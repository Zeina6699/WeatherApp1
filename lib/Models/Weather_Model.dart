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


}