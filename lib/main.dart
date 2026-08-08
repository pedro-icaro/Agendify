import 'package:agendify/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color.fromARGB(255, 28, 39, 44),

        appBarTheme: AppBarTheme(
          backgroundColor: const Color.fromARGB(255, 28, 39, 44),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      
    );
  }
}
