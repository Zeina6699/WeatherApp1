import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
     
        body:  Container(
      
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
              Colors.grey,
                             

                // اللون الأول
                    // اللون الثاني
                Colors.white  // اللون الثالث
              ])),
          child: Center(
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