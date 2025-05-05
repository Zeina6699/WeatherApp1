import 'package:flutter/material.dart';
import 'package:weather/Cubits/weather_cubit/weather_cubit.dart';
import 'package:weather/Cubits/weather_cubit/weather_state.dart';
import 'package:weather/Models/Weather_Model.dart';
import 'package:weather/Providers/Weather_Provider.dart';
import 'package:weather/Screens/Search_Page.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class HomePage extends StatelessWidget {
  //WeatherModel? weatherData;
 HomePage({super.key});

 /* void updateUi(){
    setState(() {
      
    });*/
WeatherModel? weatherData;

  @override
  Widget build(BuildContext context) {
   // weatherData=Provider.of<WeatherProvider>(context,listen:true).weatherData;
   
    return Scaffold(
      appBar: AppBar(
        
        title:const Text("Weather App"),
        actions: [
        IconButton(
          onPressed:(){Navigator.of(context).push(MaterialPageRoute(
            builder:(context){return SearchPage(
             // updateUi: updateUi,
            );}));}, 
          icon:const Icon( Icons.search))],)
        
        ,body: BlocBuilder<WeatherCubit,WeatherState>(
          builder: (context, state) {
          if(state is WeatherLoading){return Center(child:CircularProgressIndicator());}
          else if(state is WeatherSuccess){
       //   weatherData=  BlocProvider.of<WeatherCubit>(context).weatherModel;
            return SuccessBody(weatherData: state.weatherModel);}
          else if(state is WeatherFailure) {return FailureBody();}
          else{return DefaultBody();}}));}}

class FailureBody extends StatelessWidget {
  const FailureBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/pp.jpg'), // استبدل بمسار الصورة الخاصة بك
            fit: BoxFit.cover,
          ),
        ),
      child:     Center(child: Text('SomeThing went wrong please try again',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),))
    );
  }
}

class DefaultBody extends StatelessWidget {
  const DefaultBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/pp.jpg'), // استبدل بمسار الصورة الخاصة بك
            fit: BoxFit.cover,
          ),
        ),
        child:const Center(
          child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("There is no weather! 😞",style: TextStyle(fontSize:26,fontWeight: FontWeight.bold),),
            Text("Start searching now 🔎",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)
    )    ],
      ),
        ),
      );
  }
}

class SuccessBody extends StatelessWidget {
  const SuccessBody({
    super.key,
    required this.weatherData,
  });

  final WeatherModel? weatherData;

  @override
  Widget build(BuildContext context) {
    return Container(
             decoration: BoxDecoration(
    gradient: LinearGradient
    (
      begin:Alignment.topCenter,
      end:Alignment.bottomCenter,
      colors: [
             weatherData?.getThemeColor()??Colors.blue,
             Colors.white 
    ])),
    child: Center(
      child: Column(
       
        children: [
        const     SizedBox(height: 220),
        Text(
      BlocProvider.of<WeatherCubit>(context).cityName!
          //Provider.of<WeatherProvider>(context).cityName!
        ,style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 35),),
       const SizedBox(height:25),
        Text("updated at: ${weatherData!.date.hour.toString()} : ${weatherData!.date.minute.toString()}",
        style: const TextStyle(fontSize: 25,fontWeight:FontWeight.w700)),
      const  SizedBox(height:40),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Image.asset(weatherData!.getImage()),
          Text("${weatherData!.temp.toInt()}",style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 35),),
          Column(children: [
            Text("Min: ${weatherData!.minTemp.toInt()}",style:const TextStyle(fontSize: 20,fontWeight:FontWeight.w500)),
            Text("Max: ${weatherData!.maxTemp.toInt()}",style:const TextStyle(fontSize: 20,fontWeight:FontWeight.w500))]),
          ]),
         const SizedBox(height: 40),
          Text(weatherData!.weatherStateName
             ,style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 35))
    
          ]))
          );
  }
}
     
     /*   
       weatherData==null?
        const  OffLineHome():
         

class OffLineHome extends StatelessWidget {
  const OffLineHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    */