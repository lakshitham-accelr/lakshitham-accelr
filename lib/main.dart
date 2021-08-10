import 'package:eimsky_dns_app/commons/theme.dart';
import 'package:eimsky_dns_app/utils/page_routes.dart';
import 'package:eimsky_dns_app/utils/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MultiProvider(
    providers: [],
    child: EimskyDNSApp(),
  ));
}

class EimskyDNSApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Soar App',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      initialRoute: PageRoutes.adLogin,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
