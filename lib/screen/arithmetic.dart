import 'package:flutter/material.dart';

import '../model/arithmetic.dart';

class ArithemticScreen extends StatefulWidget {
  const ArithemticScreen({Key? key}) : super(key: key);

  @override
  State<ArithemticScreen> createState() => _MyAppState();
}

class _MyAppState extends State<ArithemticScreen> {
  // Declare a variables to hold the value of the two text fields
  int? first, second;
  int? result = 0;
  Arithmetic? arithmetic;
  _addNumbers() {
    arithmetic = Arithmetic(
      first: first,
      second: second,
    );
    setState(() {
      result = arithmetic!.add();
    });
    // Navigate to another screen and pass the result as an argument
    // Navigator.pushNamed(context, '/arithmeticOutput', arguments: result);
  }

  _subtractNumbers() {
    setState(() {
      result = first! - second!;
    });
    // Navigate to another screen and pass the result as an argument
    // Navigator.pushNamed(context, '/arithmeticOutput', arguments: result);
  }

  final _firstController = TextEditingController();
  final _secondController = TextEditingController();

  //A key that is unique across the entire app.
  final _formGlobalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Arithmetic Operations',
        ),
        centerTitle: true,
      ),
      body: Form(
        key: _formGlobalKey,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  key: const Key('txtFirst'),
                  keyboardType: TextInputType.number,
                  controller: _firstController,
                  onChanged: (value) {
                    setState(() {
                      //Store the value of the text field in the first variable
                      first = int.parse(value);
                    });
                  },
                  decoration: const InputDecoration(
                    hintText: 'Enter first number',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter first number';
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  key: const ValueKey('txtSecond'),
                  keyboardType: TextInputType.number,
                  controller: _secondController,
                  onChanged: (value) {
                    setState(() {
                      //Store the value of the text field in the second variable
                      second = int.parse(value);
                    });
                  },
                  decoration: const InputDecoration(
                    hintText: 'Enter second number',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter second number';
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    key: const ValueKey('btnAdd'),
                    onPressed: () {
                      if (_formGlobalKey.currentState!.validate()) {
                        _addNumbers();
                      }
                    },
                    child: const Text('Add'),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  key: const Key('btnSubtract'),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formGlobalKey.currentState!.validate()) {
                        _subtractNumbers();
                        //Navigator.pushNamed(context, 'arithmeticOutput');
                      }
                    },
                    child: const Text('Subtract'),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Colors.yellow,
                  ),
                  child: Center(
                    child: Text(
                      'Result : $result',
                      // result.toString(),
                      key: const ValueKey('lblResult'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
