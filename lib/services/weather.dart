import 'package:clima/services/networking.dart';
import 'package:clima/utilities/constants.dart';

import 'location.dart';

class WeatherModel {
  Future<dynamic> getCityLocation(String typeName) async {
    NetworkingHelper networkingHelper = NetworkingHelper(
        url: '$kOpenWeatherMapUrl?q=$typeName&appid=$kApiKey&units=metric');
    var weatherData = await networkingHelper.getData();
    return weatherData;
  }

  Future<dynamic> getDataLocation() async {
    LocationInput location = LocationInput();
    await location.getCurrentLocation();

    NetworkingHelper networkingHelper = NetworkingHelper(
        url:
            '$kOpenWeatherMapUrl?lat=${location.latitude}&lon=${location.longitude}&appid=$kApiKey&units=metric');
    var weatherData = await networkingHelper.getData();
    return weatherData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
