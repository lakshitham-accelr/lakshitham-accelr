import 'package:get_it/get_it.dart';
import 'package:eimsky_dns_app/configs/app_configs.dart';

final locator = GetIt.I;

void setupLocator() {
  locator.registerSingleton<AppConfig>(AppConfig());
}
