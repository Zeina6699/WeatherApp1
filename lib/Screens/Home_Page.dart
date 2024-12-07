import 'package:flutter/material.dart';
import 'package:weather/Models/Weather_Model.dart';
import 'package:weather/Screens/Search_Page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  WeatherModel? weatherData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title:const Text("Weather App"),
        actions: [
        IconButton(
          onPressed:(){Navigator.of(context).push(MaterialPageRoute(
            builder:(context){return SearchPage();}));}, 
          icon:const Icon( Icons.search))],)
     
        ,body:weatherData!=null?
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
        ): Container(
          color: const Color.fromARGB(255, 253, 181, 72),
          child: Center(
            child: Column(
             
              children: [
                   SizedBox(height: 220),
              Text("Cairo",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),),
              Text("updated: 24-6-2001",style: TextStyle(fontSize: 25)),
              SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Image.asset('assets/images/clear.png'),
                Text("30",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),),
                Column(children: [
                  Text("Min:20"),
                  Text("Max:30")]),
                ]),
                SizedBox(height: 5),
                Text("Sunny",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35))

                ],)
                
            
            
          
          ),
        )
    );
  }
}