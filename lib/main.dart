import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player_app/AppRoutes.dart';
import 'package:video_player_app/VideoBinding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter GetX Video Player',
      initialBinding: VideoBinding(),
      initialRoute: '/',
      getPages: AppRoutes.routes,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
    );
  }
}
