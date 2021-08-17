import 'dart:convert';
import 'package:flutter/services.dart';

class AppConfig {
  late bool devModeEnabled;
  late String userApiUrl;
  late String restApiUrl;
  
  AppConfig() {
    forEnvironment();
  }

  Future<void> forEnvironment({String? env}) async {
    env = env ?? 'dev';

    final contents = await rootBundle.loadString(
      'assets/config/$env.json',
    );

    final json = jsonDecode(contents);

    devModeEnabled = json['DEV_MODE_ENABLED'];
    userApiUrl = json['USER_API_URL'];
    restApiUrl = json['REST_API_URL'];
  }
}
