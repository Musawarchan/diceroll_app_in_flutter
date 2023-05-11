import 'package:flutter/material.dart';

import 'package:first_app/gradient_conatiner.dart';

void main() {
  runApp(const MyApp());
  {}
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          //solution 1
          body: GradientContainer(
        Color.fromARGB(252, 29, 3, 74),
        Color.fromARGB(125, 49, 11, 120),
      ) //solution2
          // GradientContainer(
          //   colors: [
          //     Colors.blue,
          //     Colors.black,
          //     Colors.white,
          //   ],
          // ),
          ),
    );
  }
}
