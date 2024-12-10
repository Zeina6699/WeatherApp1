import 'package:flutter/material.dart';
import 'package:weather/Models/Weather_Model.dart';
import 'package:weather/Providers/Weather_Provider.dart';
import 'package:weather/Services/Weather_Services.dart';
import 'package:provider/provider.dart';

class SearchPage extends StatelessWidget {
   SearchPage({super.key,this.updateUi});
VoidCallback? updateUi;
String? cityName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  
        title:const Text("Search For a City"),),
        body:Center(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
               
                decoration: const InputDecoration(
                  label: Text("Search"),
                  hintText: "Enter A City",
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.search),
                  contentPadding: EdgeInsets.symmetric(vertical:25,horizontal: 20)
              
              
                ),
              /*   onSubmitted: (data) async{
                  cityName=data;
                  WeatherService service= WeatherService();
                  WeatherModel weather=await service.getWeather(cityName: cityName!); 
                  Provider.of<WeatherProvider>(context).weatherData=weather;
                  Navigator.pop(context);
                  //weatherData=weather;
                 // updateUi!();
                 

                //  Navigator.of(context).pop();
                  //print(weather);
                  //اخذنا غرض من الصف لنستدعي طريقته
                 },
                 
              ),
            ),
          )
        );
       
}}
//WeatherModel? weatherData;*/
onSubmitted: (data) async {
  if (data.isNotEmpty) {
 //   try {
      WeatherService service = WeatherService();
      WeatherModel weather = await service.getWeather(cityName: data);
      Provider.of<WeatherProvider>(context, listen: false).weatherData = weather;

      // العودة للصفحة السابقة
      Navigator.pop(context);
  //  } catch (e) {
      // التعامل مع الأخطاء هنا
    /*  ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error fetching weather: $e")),
      );*/
    }
//  } else {
   // ScaffoldMessenger.of(context).showSnackBar(
    //  SnackBar(content: Text("Please enter a city name")),
  //  );
//  }*/
}))));}}