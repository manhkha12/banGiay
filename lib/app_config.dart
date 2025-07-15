class AppConfig {
  static const String appName = 'My Flutter App';
  static const String version = '1.0.0';
  String get baseApiUrl => 'http://10.0.2.2:5000/api';
  String get baseModuleApiUrl => 'http://192.168.4.1';
  String get baseWebSocketUrl => 'wss://ws.example.com';
  // Add more configuration constants as needed
}