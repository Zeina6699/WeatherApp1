import 'package:weather/Cubits/weather_cubit/weather_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/Models/Weather_Model.dart';
import 'package:weather/Services/Weather_Services.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit(this.weatherService) : super(WeatherInitial());

  WeatherService weatherService;
  WeatherModel? weatherModel;
  String? cityName;

  Future<void> getWeather({required String cityName}) async {
    emit(WeatherLoading());
    try {
    WeatherModel  weatherModel = await weatherService.getWeather(cityName: cityName);
      emit(WeatherSuccess(weatherModel: weatherModel));
    } on Exception catch (e) {
      emit(WeatherFailure());
    }
  }
}
