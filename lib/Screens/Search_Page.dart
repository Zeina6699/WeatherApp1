import 'package:flutter/material.dart';
import 'package:weather/Models/Weather_Model.dart';
import 'package:weather/Services/Weather_Services.dart';

class SearchPage extends StatelessWidget {
   SearchPage({super.key});
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
                 onSubmitted: (data) async{
                  cityName=data;
                  WeatherService service= WeatherService();
                  WeatherModel weather=await service.getWeather(cityName: cityName!); 
                  print(weather);
                  //اخذنا غرض من الصف لنستدعي طريقته
                 },
              ),
            ),
          )
        );
       
}}