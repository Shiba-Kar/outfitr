import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:outfitr/screens/onboardings/onboarding.dart';

import 'screens/category_product/OutFitIdeas.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
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
          canvasColor: Colors.white,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: OutfitIdeas() //Onboarding(),
        );
  }
}
