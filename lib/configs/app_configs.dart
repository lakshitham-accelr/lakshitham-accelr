import 'dart:convert';
import 'package:flutter/services.dart';

class AppConfig {
  late bool devModeEnabled;
  late String surveyServiceApiUrl;
  late String templateServiceApiUrl;
  late String blobStorageServiceApiUrl;
  
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
    surveyServiceApiUrl = json['SURVEY_SERVICE_API_URL'];
    templateServiceApiUrl = json['TEMPLATE_SERVICE_API_URL'];
    blobStorageServiceApiUrl = json['BLOB_STORAGE_SERVICE_API_URL'];
  }
}
