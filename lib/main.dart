import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:outfitr/onboardings/Onboarding2.dart';
import 'package:outfitr/onboardings/onboarding.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // debugShowMaterialGrid: true,
debugShowCheckedModeBanner: false,
      title: 'Outfitr',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Onboarding(),
    );
  }
}