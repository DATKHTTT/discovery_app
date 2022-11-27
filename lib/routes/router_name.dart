import 'package:discovery_app/pages/navpages/main_page.dart';
import 'package:discovery_app/routes/routers.dart';
import 'package:flutter/material.dart';

import '../pages/landing_pages.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouterName.landingPage:
        {
          return MaterialPageRoute(builder: (_) => LandingPage());
        }
      case RouterName.mainPage:
        {
          return MaterialPageRoute(builder: (_) => MainPage());
        }
      default:
        {
          return MaterialPageRoute(builder: (context) {
            return Scaffold(
                body: Center(
              child: Text("No routes match"),
            ));
          });
        }
    }
  }
}