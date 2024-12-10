import 'package:flutter/material.dart';
import 'package:weather/Models/Weather_Model.dart';
import 'package:weather/Providers/Weather_Provider.dart';
import 'package:weather/Screens/Search_Page.dart';
import 'package:provider/provider.dart';
class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void updateUi(){
    setState(() {
      
    });
  }
 // WeatherModel? weatherData;
WeatherModel? weatherData;
  @override
  Widget build(BuildContext context) {
    weatherData=Provider.of<WeatherProvider>(context).weatherData;
    return Scaffold(
      appBar: AppBar(
        
        title:const Text("Weather App"),
        actions: [
        IconButton(
          onPressed:(){Navigator.of(context).push(MaterialPageRoute(
            builder:(context){return SearchPage(//updateUi: updateUi,
            );}));}, 
          icon:const Icon( Icons.search))],)
     
        ,body:
       weatherData==null?
          Container(
      
          decoration:const BoxDecoration(
            gradient: LinearGradient(
              colors: [
              Colors.grey,
              Colors.white
              ])),
          child:const Center(
            child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("There is no weather! 😞",style: TextStyle(fontSize:26,color: Colors.red,fontWeight: FontWeight.bold),),
              Text("Start searching now 🔎",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)
                )    ],
                  ),
          ),
        ):
         Container(
          color: const Color.fromARGB(255, 253, 181, 72),
          child: Center(
            child: Column(
             
              children: [
                   SizedBox(height: 220),
              Text(Provider.of<WeatherProvider>(context).cityName!
              ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),),
              SizedBox(height:25),
              Text("updated : ${weatherData!.date.toString()}",style: const TextStyle(fontSize: 25,fontWeight:FontWeight.w700)),
              SizedBox(height:40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Image.asset(weatherData!.getImage()),
                Text("${weatherData!.temp.toInt()}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),),
                Column(children: [
                  Text("Min: ${weatherData!.minTemp.toInt()}",style:TextStyle(fontSize: 20,fontWeight:FontWeight.w500)),
                  Text("Max: ${weatherData!.maxTemp.toInt()}",style:TextStyle(fontSize: 20,fontWeight:FontWeight.w500))]),
                ]),
                SizedBox(height: 40),
                Text(weatherData!.weatherStateName
                   ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35))

                ],)
                
            
            
          
          ),
        )
    );
  }
}
