import 'package:eimsky_dns_app/commons/theme.dart';
import 'package:eimsky_dns_app/utils/page_routes.dart';
import 'package:eimsky_dns_app/utils/route_generator.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(EimskyDNSApp());
}

class EimskyDNSApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eimsky DNS App',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      initialRoute: PageRoutes.entryScreen,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
