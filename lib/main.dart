import 'package:flutter/material.dart';
import 'package:weather/Cubits/weather_cubit/weather_cubit.dart';
import 'package:weather/Models/Weather_Model.dart';
import 'package:weather/Providers/Weather_Provider.dart';
import 'package:weather/Screens/Home_Page.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/Screens/Splash_page.dart';
import 'package:weather/Services/Weather_Services.dart';
void main() {
  //Provider.debugCheckInvalidValueType=null;
  runApp(BlocProvider(
    //ChangeNotifierProvider(
    create:(context){
      return WeatherCubit(WeatherService());},
       child:  WeatherApp(),
        //return WeatherProvider();},
       
        ));
}

class WeatherApp extends StatelessWidget {
  
  const WeatherApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        primarySwatch: BlocProvider.of<WeatherCubit>(context).weatherModel==null?Colors.blue:BlocProvider.of<WeatherCubit>(context).weatherModel!.getThemeColor())
      ,
        debugShowCheckedModeBanner: false,
        home:SplashScreen()
    );}}