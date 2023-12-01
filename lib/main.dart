import 'package:adapiconnect/Screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:camera/camera.dart';

List<CameraDescription>? cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(const MaterialApp(
        title: "AdaptiConnetct",
        home: SplashScreen(),
        debugShowCheckedModeBanner: false,
      )));
  runApp(const MaterialApp(
    title: "AdaptiConnetct",
    home: SplashScreen(),
    debugShowCheckedModeBanner: false,
  ));
}
