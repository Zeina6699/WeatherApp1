import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      backgroundColor: Color.fromARGB(255, 204, 201, 201),
        body:  Center(
          child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("There is no weather 😞",style: TextStyle(fontSize:30,color: Colors.red,fontWeight: FontWeight.bold),),
            Text("Start searching now 🔎",style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 53, 153, 235),fontWeight: FontWeight.bold)
              )    ],
                ),
        ),
    );
  }
}