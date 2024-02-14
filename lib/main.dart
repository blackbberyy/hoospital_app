import 'package:flutter/material.dart';
import 'package:hoospital/screens/home_screen.dart';
import 'package:hoospital/screens/login_screen.dart';
import 'package:hoospital/screens/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hoospital',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xff111111),
          primarySwatch: Colors.blue,
          appBarTheme: const AppBarTheme(
              color: Colors.black, centerTitle: true, elevation: 0),
          sliderTheme: const SliderThemeData(
              showValueIndicator: ShowValueIndicator.always)),
      routes: <String, WidgetBuilder>{
        '/': (_) => StartScreen(),
        '/login': (_) => LoginScreen(),
        '/home': (_) => HomeScreen(),
      },
      initialRoute: '/',
    );
  }
}
