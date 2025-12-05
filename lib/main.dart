import 'package:fitness_coaching_app/binding/home_binding.dart';
import 'package:fitness_coaching_app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(
        MediaQuery.of(context).size.width,
        MediaQuery.of(context).size.height,
      ),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            appBarTheme: AppBarTheme(backgroundColor: Color(0xff060615)),
            scaffoldBackgroundColor: Color(0xff060615),
          ),
          initialRoute: RoutePages.splashScreen,
          getPages: pages,
          initialBinding: HomeBinding(),
        );
      },
    );
  }
}
