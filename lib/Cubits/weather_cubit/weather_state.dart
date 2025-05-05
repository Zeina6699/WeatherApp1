
import 'package:weather/Models/Weather_Model.dart';

abstract class WeatherState {}

class WeatherInitial extends WeatherState{}
class WeatherLoading extends WeatherState{}
class WeatherSuccess extends WeatherState{
  WeatherModel weatherModel;
  WeatherSuccess({required this.weatherModel});
}
class WeatherFailure extends WeatherState{}