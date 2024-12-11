import 'package:flutter/material.dart';
import 'package:weather/Models/Weather_Model.dart';
import 'package:weather/Providers/Weather_Provider.dart';
import 'package:weather/Screens/Home_Page.dart';
import 'package:provider/provider.dart';
void main() {
//  Provider.debugCheckInvalidValueType=null;
  runApp(ChangeNotifierProvider(create:(context){
        return WeatherProvider();},
        child: WeatherApp(),
        ));
}

class WeatherApp extends StatelessWidget {
  
  const WeatherApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        
        debugShowCheckedModeBanner: false,
        home: HomePage()
    );}}