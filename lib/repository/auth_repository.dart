import 'package:smart_home/data/local/app_provider.dart';
import 'package:smart_home/data/remote/auth_api.dart';
import 'package:smart_home/models/user.dart';

class AuthRepository {
  final AuthApi authApi;
  final AppProvider appProvider;

  AuthRepository(this.authApi, this.appProvider);

  // Future<User> login (Map<String, dynamic> params) async {
  //   final response = await authApi.login(params);
  //   await updateToken(response);
  //   return User.fromJson(response['user']);
  // }

  // Future<User> register(Map<String, dynamic> params) async {
  //   print("repository params: $params");
  //   final response = await authApi.register(params);
  //   return User.fromJson(response['user']);
  // }

  Future<User> login(Map<String, dynamic> params) async {
    try {
      final response = await authApi.login(params);
      await updateToken(response);
      return User.fromJson(response['user']);
    } catch (e) {
      print('Login error: $e');
      rethrow; // Hoặc throw Exception("Login failed") nếu muốn custom message
    }
  }

  Future<User> register(Map<String, dynamic> params) async {
    try {
      print("repository params: $params");
      final response = await authApi.register(params);
      return User.fromJson(response);
    } catch (e) {
      print('Register error: $e');
      rethrow; // Hoặc throw Exception("Register failed")
    }
  }

  bool get hasAccessToken => appProvider.hasAccessToken;

  String? get refreshToken => appProvider.refreshToken;

  Future<void> updateToken(Map<String, dynamic> response) async {
    await appProvider.setAccessToken(response['accessToken']);
    await appProvider.setRefreshToken(response['refreshToken']);
  }

  Future<User> authToken() async {
    final resp = await authApi.authToken(refreshToken!);
    await updateToken(resp);
    return User.fromJson(resp['user']);
  }

  Future<void> logout() async {
    await appProvider.setAccessToken(null);
    await appProvider.setRefreshToken(null);
  }
}
