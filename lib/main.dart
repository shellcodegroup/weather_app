import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/theme_provider.dart';
import 'package:weather_app/weather_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).themeData,
      title: 'Weather App',
      home: const WeatherScreen(),
    );
  }
}
