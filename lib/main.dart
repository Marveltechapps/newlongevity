import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:longevity_life/Public/constant.dart';
import 'package:longevity_life/Route/binding.dart';

import 'package:longevity_life/Route/route_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    TextScaler textScaler = MediaQuery.of(context).textScaler;
    return GetMaterialApp(
      title: 'Longevity Life',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0XFFFCFCFC),
        appBarTheme: const AppBarTheme(backgroundColor: Color(0XFFFCFCFC)),
        colorScheme:
            ColorScheme.fromSeed(seedColor: const Color(0xFFCD800D), primary: const Color(0xFFCD800D), secondary: Colors.white, surfaceTint: Colors.white),
        textTheme: TextTheme(
            titleSmall: TextStyle(color: const Color(0xFF444444), fontSize: textScaler.scale(18), fontWeight: FontWeight.bold, fontFamily: "Lato"),
            titleMedium: TextStyle(color: const Color(0xFF444444), fontSize: textScaler.scale(18), fontWeight: FontWeight.bold, fontFamily: "Playfair Display"),
            titleLarge: TextStyle(color: const Color(0xFF444444), fontSize: textScaler.scale(18), fontWeight: FontWeight.bold, fontFamily: "Roboto"),
            bodySmall: TextStyle(color: const Color(0xFF444444), fontSize: textScaler.scale(16), fontWeight: FontWeight.bold, fontFamily: "Lato"),
            bodyMedium: TextStyle(color: const Color(0xFF444444), fontSize: textScaler.scale(16), fontWeight: FontWeight.bold, fontFamily: "Playfair Display"),
            bodyLarge: TextStyle(color: const Color(0xFF444444), fontSize: textScaler.scale(16), fontFamily: "Roboto"),
            displaySmall: TextStyle(color: const Color(0xFF444444), fontSize: textScaler.scale(14), fontFamily: "Roboto")),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: const MaterialStatePropertyAll(kBlue),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
          ),
        ),
      ),
      initialRoute: specialScreen,
      initialBinding: InitialBinding(),
      onGenerateRoute: routeService.generateRoute,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 500),
    );
  }
}
