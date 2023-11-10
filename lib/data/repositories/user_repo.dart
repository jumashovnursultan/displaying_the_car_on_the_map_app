import 'package:nursultan_app/data/client/client.dart';
import 'package:nursultan_app/data/model/api_reponse.dart';
import 'package:nursultan_app/data/model/taxi_drivers_model.dart';
import 'package:nursultan_app/data/model/token.dart';

abstract class UserRepo {
  Future<ApiResponse<Token>> login(String phone, String password);
  Future<ApiResponse<List<TaxiDriversModel>>> fetchDrivers();
  Future<ApiResponse> sendLocation();
}

class UserAPIRepo implements UserRepo {
  const UserAPIRepo({required ApiClient client}) : _client = client;

  final ApiClient _client;

  @override
  Future<ApiResponse<Token>> login(String phone, String password) {
    return _client.post(
      '/auth/login/',
      data: {
        'phone': phone,
        'password': password,
      },
      decoder: (data) => Token.fromMap(data['tokens']),
    );
  }

  @override
  Future<ApiResponse<List<TaxiDriversModel>>> fetchDrivers() {
    return _client.post(
      '/auth/login/',
      decoder: (data) => List.from(
        data['results'].map((e) => TaxiDriversModel.fromJson(e)),
      ),
    );
  }

  @override
  Future<ApiResponse> sendLocation() {
    return _client.post('/auth/login/', data: {
      'latitude': '43.222',
      'longitude': '76.222',
    });
  }
}
