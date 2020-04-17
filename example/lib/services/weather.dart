
import 'location.dart';
import 'networking.dart';


class WeatherModel {
  dynamic locationData;
  Future <String>  getLocationWeather() async {
    Location location = Location();
    await location.getPosition();

    NetworkData networkData =NetworkData(location.latitude,location.longitude);
    var locationData = await networkData.returnInfo();
    print(locationData['main']['temp']);
    var temperatureOutput = locationData['main']['temp'].toInt();
    return temperatureOutput.toString();

  }
  String getTemperature(locationData){
    double temp=locationData['main']['temp'];
    var forIcon=locationData['weather'][0]['id'];


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
