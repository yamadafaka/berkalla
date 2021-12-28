import 'package:flutter/material.dart';
import 'package:twentytwo_project/root.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Twenty Two Project Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF0F3460),
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context)
            .textTheme
            .apply(bodyColor: Colors.white70, displayColor: Colors.white70),
      ),
      home: const RootPage(),
    );
  }
}
