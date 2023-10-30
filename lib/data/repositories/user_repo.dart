import 'package:nursultan_app/data/client/client.dart';
import 'package:nursultan_app/data/model/api_reponse.dart';
import 'package:nursultan_app/data/model/token.dart';

abstract class UserRepo {
  Future<ApiResponse<Token>> login(String phone, String password);
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
}
