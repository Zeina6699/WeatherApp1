import 'dart:ui';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:weather/Cubits/weather_cubit/weather_cubit.dart';
import 'package:weather/Models/Weather_Model.dart';
import 'package:weather/Providers/Weather_Provider.dart';
import 'package:weather/Services/Weather_Services.dart';
import 'package:provider/provider.dart';

class SearchPage extends StatelessWidget {
   SearchPage({super.key,/*this.updateUi*/});
//VoidCallback? updateUi;
String? cityName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(  
        title: Text("Search For a City"),),
        body:Container(
           decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/pp.jpg'), // استبدل بمسار الصورة الخاصة بك
            fit: BoxFit.cover,
          ),
        ),
       
          child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                 
                  decoration:  InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                    ),
                    label: Text("Search"),
                    labelStyle: TextStyle(color: Colors.black),
                    hintText: "Enter A City",
                    hintStyle: TextStyle(color: Colors.black),
                  
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black
                      )
                    ),
                    suffixIcon: GestureDetector(
                      onTap: ()async{
                          if (cityName != null && cityName!.isNotEmpty) {
                      // استدعاء الدالة عند الضغط على الأيقونة
                      BlocProvider.of<WeatherCubit>(context).getWeather(cityName: cityName!);
                      Navigator.pop(context);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Please enter a city name")),
                      );}
                      }
                  //      WeatherService service = WeatherService();
                //WeatherModel? weather = await service.getWeather(cityName:cityName!);
            //    Provider.of<WeatherProvider>(context, listen: false).weatherData = weather;
             //   Provider.of<WeatherProvider>(context, listen: false).cityName = cityName!;
              //  // العودة للصفحة السابقة
             //   Navigator.pop(context); 
                //updateUi!();
                
                      
                ,      child: Icon(Icons.search,color: Colors.black,)),
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
          ;*/
          onChanged: (data){
           cityName=data;
          },
          onSubmitted: (data) async {
               if (cityName != null && cityName!.isNotEmpty) {
                cityName=data;
               BlocProvider.of<WeatherCubit>(context).getWeather(cityName: cityName!);
               BlocProvider.of<WeatherCubit>(context).cityName=cityName;
          Navigator.pop(context);      
               }
          else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Please enter a city name")),
                      );}}
             //   updateUi!();}
            //  } catch (e) {
                // التعامل مع الأخطاء هنا
              /*  ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Error fetching weather: $e")),
                );*/
              
          //  } else {
             // ScaffoldMessenger.of(context).showSnackBar(
              //  SnackBar(content: Text("Please enter a city name")),
            //  );
          //  }*/
          ))),
        ));}}
        //WeatherModel? weatherData;