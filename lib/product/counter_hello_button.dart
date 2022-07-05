import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_full_learn/product/languages/languages_item.dart';

class CounterButton extends StatefulWidget {
  const CounterButton({Key? key}) : super(key: key);

  @override
  State<CounterButton> createState() => _CounterButtonState();
}

class _CounterButtonState extends State<CounterButton> {
  String _text=LanguageItem.helloWorld;
  int _customerCount=0;
  void _updateCounter(){
    setState(() {
      _customerCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: _updateCounter, child: Text("$_text $_customerCount"));
  }
}