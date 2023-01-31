import 'package:flutter/material.dart';

class ArithmeticOutputScreen extends StatefulWidget {
  const ArithmeticOutputScreen({Key? key}) : super(key: key);

  @override
  State<ArithmeticOutputScreen> createState() => _ArithmeticOutputScreenState();
}

class _ArithmeticOutputScreenState extends State<ArithmeticOutputScreen> {
  @override
  Widget build(BuildContext context) {
    final value = ModalRoute.of(context)!.settings.arguments as int?;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Output'),
      ),
      body: Center(
        child: Text(
          'Result : $value',
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
