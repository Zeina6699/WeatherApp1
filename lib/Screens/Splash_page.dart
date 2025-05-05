
import 'package:flutter/material.dart';
import 'package:weather/Screens/Home_Page.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // الانتقال إلى الصفحة الرئيسية بعد ثانيتين
    Future.delayed(Duration(seconds:8), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });

    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
          color: const Color.fromARGB(255, 143, 198, 243),// استبدل بمسار الصورة الخاصة بك
        
          
        ),
        child: Center(
          child: Image.asset(
            width: 200,
            'assets/images/k.gif', // استبدل هذا بمسار الصورة الخاصة بك
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}