

import 'package:shoe_store/data/local/app_provider.dart';
import 'package:shoe_store/data/remote/auth_api.dart';
import 'package:shoe_store/models/user.dart';

class AuthRepository {
  final AuthApi authApi;
  final AppProvider appProvider;

  AuthRepository(this.authApi, this.appProvider);

  Future<User> login(Map<String, dynamic> params) async {
    final response = await authApi.login(params);
    print('AuthRepository: login response: $response');
   
    print('AuthRepository: login response: ${response['user']}');
    await updateToken(response);
    return User.fromJson(response['user']);
  }

  Future<User> register(Map<String, dynamic> params) async {
    final response = await authApi.register(params);
    return User.fromJson(response);
  }

  bool get hasAccessToken => appProvider.hasAccessToken;

  String? get refreshToken => appProvider.refreshToken;

  Future<void> updateToken(Map<String, dynamic> response) async {
    await appProvider.setAccessToken(response['accessToken']);
    await appProvider.setRefreshToken(response['refreshToken']);
  }

Future<User> authToken() async {
  final resp = await authApi.authToken(refreshToken!);

  print('AuthRepository: authToken response: $resp');

  // resp đã là data cuối cùng rồi
  await updateToken(resp);

  return User.fromJson(resp['user']);
}


  Future<void> logout() async {
    await appProvider.setAccessToken(null);
    await appProvider.setRefreshToken(null);
  }
}
