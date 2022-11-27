import 'package:discovery_app/pages/landing_pages.dart';
import 'package:discovery_app/routes/router_name.dart';
import 'package:discovery_app/routes/routers.dart';
import 'package:discovery_app/utils/logger/logger_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  initRootLogger();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // IPhone 11 Pro Max
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: Colors.blue,
          ),
          home: child,
          initialRoute: RouterName.landingPage,
          onGenerateRoute: AppRouter.onGenerateRoute,
          // initialBinding: InitialBindings(),
        );
      },
      child: const LandingPage(),
    );
  }
}
