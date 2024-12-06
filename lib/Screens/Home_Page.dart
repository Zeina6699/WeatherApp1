import 'package:flutter/material.dart';
import 'package:weather/Screens/Search_Page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
     
        ,body:  Container(
      
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
        ),
    );
  }
}