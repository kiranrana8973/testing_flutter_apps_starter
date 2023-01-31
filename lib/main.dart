import 'package:flutter/material.dart';
import 'package:testing_flutter_apps/screen/arithmetic.dart';

import 'screen/output_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: true,
      initialRoute: '/',
      routes: {
        '/': (context) => const ArithemticScreen(),
        '/arithmeticOutput': (context) => const ArithmeticOutputScreen(),
      },
    ),
  );
}
