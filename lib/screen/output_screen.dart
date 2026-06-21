import 'package:flutter/material.dart';

class ArithmeticOutputScreen extends StatefulWidget {
  const ArithmeticOutputScreen({super.key, this.result});

  final int? result;

  @override
  State<ArithmeticOutputScreen> createState() => _ArithmeticOutputScreenState();
}

class _ArithmeticOutputScreenState extends State<ArithmeticOutputScreen> {
  @override
  Widget build(BuildContext context) {
    final value = widget.result;
    return Scaffold(
      appBar: AppBar(title: const Text('Output')),
      body: Center(
        child: Text('Result : $value', style: const TextStyle(fontSize: 25)),
      ),
    );
  }
}
