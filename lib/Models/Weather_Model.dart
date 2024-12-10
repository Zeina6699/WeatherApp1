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
    switch(weatherStateName){
case 'Partly cloudy' : return "assets/images/cloudy.png";
case 'Cloudy' : return "assets/images/clody.png";
case 'Overcast' : return "assets/images/clody.png";
case 'Mist' : return "assets/images/ccc.jpg";
case 'Freezing fog' : return "assets/images/ccc.jpg";
case 'Fog' : return "assets/images/ccc.jpg";
case 'Freezing fog' : return "assets/images/ccc.jpg";
case 'Patchy rain possible' : return "assets/images/rainy.png";
case 'Patchy snow possible' : return "assets/images/snow.png";
case 'Blizzard' : return "assets/images/snow.png";
case 'Heavy snow' : return "assets/images/snow.png";
case 'Patchy heavy snow' : return "assets/images/snow.png";
case 'Moderate snow' : return "assets/images/snow.png";
case 'Patchy moderate snow' : return "assets/images/snow.png";
case 'Patchy light snow' : return "assets/images/snow.png";
case 'Moderate or heavy sleet' : return "assets/images/snow.png";
case 'Light sleet' : return "assets/images/snow.png";
case 'Light snow' : return "assets/images/snow.png";
case 'Patchy sleet possible' : return "assets/images/snow.png";
case 'Ice pellets' : return "assets/images/snow.png";
case 'Patchy light snow with thunder' : return "assets/images/snow.png";
case 'Moderate or heavy snow with thunder' :return "assets/images/snow.png";
case 'Blowing snow' :return "assets/images/snow.png";
case 'Moderate or heavy snow showers' :return "assets/images/snow.png";
case 'Light snow showers' :return "assets/images/snow.png";
case 'Moderate or heavy sleet showers' :return "assets/images/rainy.png";
case 'Light sleet showers' :return "assets/images/rainy.png";
case 'Torrential rain shower' :return "assets/images/rainy.png";
case 'Moderate or heavy rain shower' :return "assets/images/rainy.png";
case 'Light rain shower' :return "assets/images/rainy.png";
case 'Thundery outbreaks possible' : return "assets/images/thunderstorm.png";
case 'Clear' :return "assets/images/clear.png";
case 'Sunny' :return "assets/images/clear.png";
case 'Light Cloud' :return "assets/images/clear.png" ;
case 'Light freezing rain' :return "assets/images/rainy.png";
case 'Heavy rain at times' :return "assets/images/rainy.png";
case 'Heavy rain' :return "assets/images/rainy.png";
case 'Light rain' :return "assets/images/rainy.png";
case 'Moderate rain at times' :return "assets/images/rainy.png";
case 'Patchy light drizzle' :return "assets/images/rainy.png";
case 'Light drizzle' :return "assets/images/rainy.png";
case 'Freezing drizzle' :return "assets/images/rainy.png";
case 'Heavy freezing drizzle' :return "assets/images/rainy.png";
case 'Patchy light rain' :return "assets/images/rainy.png";
case 'Moderate rain' :return "assets/images/rainy.png";
case 'Moderate or heavy freezing rain' :return "assets/images/rainy.png";
case 'Moderate or heavy showers of ice pellets' :return "assets/images/snow.png";
case 'Light showers of ice pellets' :return"assets/images/snow.png";
case 'Heavy Cloud' :return "assets/images/cloudy.png";
case 'Light Rain' :return "'assets/images/rainy.png";
case 'Moderate or heavy rain with thunder' :return "'assets/images/rainy.png";
case 'Heavy Rain ' :return "assets/images/rainy.png";
case 'Patchy light rain with thunder' :return "assets/images/rainy.png";
default:return "assets/images/clear.png";





    }
   
    }
  }

