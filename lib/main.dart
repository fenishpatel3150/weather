import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/screen/controller/WeatherController.dart';
import 'package:weather/screen/view/home/HomeScreen.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => WeatherProvider(),)
    ],
      child: const MyApp(),
    )


  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: HomeScreen(weatherProvider: WeatherProvider,),
    );
  }
}
