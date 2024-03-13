import '../../models/base_response/base_response.dart';
import '../../models/weather_response/weather_response.dart';
import '../rest_client/rest_client.dart';
import 'base_repo.dart';

class Repository extends BaseRepository {
  static Repository? _instance;

  RestClient? _restClient;

  Repository._internal() {
    _restClient = RestClient(getDioInstance(),
        baseUrl: 'https://api.openweathermap.org/data/2.5/');
  }

  static Repository get instance {
    _instance ??= Repository._internal();
    return _instance!;
  }

  Future<BaseResponse<WeatherResponse>> getForcast() async {
    return await _restClient!
        .getForcast()
        .then((value) => BaseResponse<WeatherResponse>(
            isSucceed: true, data: value, error: null))
        .catchError((e) {
      return BaseResponse<WeatherResponse>(
          isSucceed: false, data: null, error: e);
    });

//     try {
//       final response = await _restClient!.getForcast();
//  return BaseResponse<WeatherResponse>(isSucceed: true, data: response, error: null);

//     } catch (e) {
//  return BaseResponse<WeatherResponse>(isSucceed: false, data: null, error: e);

//     }
  }
}
