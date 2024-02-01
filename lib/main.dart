import 'package:Friend_Ledger/screens/splash_screen/splash_screen.dart';
import 'package:Friend_Ledger/utils/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Friend Ledger',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(

            primary: Colore.BLACK, seedColor: Colore.BLACK, error: Colore.RED),
        useMaterial3: true,
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
