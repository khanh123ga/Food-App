import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Cart_screen.dart';
import 'package:flutter_application_1/Screens/Favorites_screen.dart';
import 'package:flutter_application_1/Screens/Home_Screen.dart';
import 'package:flutter_application_1/Screens/OrderCfscreen.dart';
import 'package:flutter_application_1/Screens/OrderSuccess_Sc.dart';
import 'package:flutter_application_1/Screens/Payment_screen.dart';
import 'package:flutter_application_1/Screens/Porfile_screen.dart';
import 'package:flutter_application_1/Screens/Products_screen.dart';
import 'package:flutter_application_1/Screens/Shoppingadd_screen.dart';
import 'package:flutter_application_1/Screens/SplashScreen.dart';
import 'package:flutter_application_1/Screens/forgotpass_screen.dart';
import 'package:flutter_application_1/Screens/login_screen.dart';
import 'package:flutter_application_1/Screens/navigation_screen.dart';
import 'package:flutter_application_1/Screens/recovery_screen.dart';
import 'package:flutter_application_1/Screens/signup_screen.dart';
import 'package:hive_flutter/adapters.dart';

Future<void> main() async {
  await Hive.initFlutter();

  await Hive.openBox("Favorites");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Panda Shop",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.orange),
      home: SplashScreen(),
    );
  }
}
