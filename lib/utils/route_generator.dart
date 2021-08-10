import 'package:eimsky_dns_app/screens/entry_screen.dart';
import 'package:eimsky_dns_app/utils/page_routes.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case PageRoutes.login:
        return MaterialPageRoute(builder: (_) => EntryScreen());
    }
  }
}
