import 'package:flutter/material.dart';
import 'package:interface_b/pages/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        //scaffoldBackgroundColor: Colors.black, 
        // canvasColor: Colors.black,
        // appBarTheme: AppBarTheme(
        //   color: Colors.black,
        //   foregroundColor: Colors.white,
        // )
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

