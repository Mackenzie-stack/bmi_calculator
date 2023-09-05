import 'package:bmi_calculator/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:math';

import 'screens/home_page.dart';

void main()async{

  runApp(
    // Providers is provided here
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => BmiCalculator()),
        ],
        child: const MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  HomePage(),
    );
  }
}


