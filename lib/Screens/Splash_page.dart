
import 'package:flutter/material.dart';
import 'package:weather/Screens/Home_Page.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // الانتقال إلى الصفحة الرئيسية بعد ثانيتين
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });

    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/pp.jpg', // استبدل هذا بمسار الصورة الخاصة بك
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}