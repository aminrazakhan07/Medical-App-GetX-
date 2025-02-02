import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:medical_getx_app/LocalNotific/NotifiSercise.dart';
import 'package:medical_getx_app/Screens/HomeScr.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  //// init notifications
  NotifiService().initNotification();

//
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 1, 120, 248),
        ),
        useMaterial3: true,
      ),
      home: HomescrMedi(),
    );
  }
}
