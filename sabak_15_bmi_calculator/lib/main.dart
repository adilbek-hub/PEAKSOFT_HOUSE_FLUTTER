import 'package:flutter/material.dart';
import 'package:sabak_15_bmi_calculator/features/presentation/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: const Color(0xff221935),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff221935),
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
