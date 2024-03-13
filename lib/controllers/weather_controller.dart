import 'package:rxdart/rxdart.dart';

import '../models/weather_response/weather_response.dart';
import '../resources/repositories/repository.dart';

class WeatherController {
  static WeatherController? _instance;

  static WeatherController get instance {
    _instance ??= WeatherController._internal();
    return _instance!;
  }

  WeatherController._internal() {
    _weatherResponse = BehaviorSubject<WeatherResponse>();
  }

  BehaviorSubject<WeatherResponse>? _weatherResponse;

  ValueStream<WeatherResponse> get weather => _weatherResponse!.stream;

  getFocast() async {
    final response = await Repository.instance.getForcast();
    if (response.isSucceed) {
      _weatherResponse?.sink.add(response.data!);
    } else {
      _weatherResponse?.sink.addError(response.error!);
    }
  }
}
