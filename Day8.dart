// import 'dart:async';

// class Weather {
//   final String condition;
//   final double temperature;

//   Weather(this.condition, this.temperature);
// }

// class WeatherService {
//   final _weatherController = StreamController<Weather>();

//   Stream<Weather> get onWeatherUpdate => _weatherController.stream;

//   void simulateWeatherUpdates() {
  
//     _weatherController.add(Weather('Sunny', 25.0));
//     _weatherController.add(Weather('Cloudy', 20.0));
//     _weatherController.add(Weather('Rainy', 15.0));
//     _weatherController.add(Weather('Snowy', 0.0));
//     _weatherController.close();
//   }
// }

// void main() {
//   final weatherService = WeatherService();

//   // ignore: unused_local_variable
//   final weatherSubscription = weatherService.onWeatherUpdate.listen(
//     (weather) =>
//         print('Weather Update: ${weather.condition}, ${weather.temperature}oC'),
//     onDone: () => print('No more updates'),
//   );

//   weatherService.simulateWeatherUpdates();

//   // weatherSubscription.cancel();
// }

