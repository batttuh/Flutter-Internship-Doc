import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Column(children: [
        // Expanded(child: Text("Hello")),
        // Expanded(child: Text("Hello")),
        // Expanded(child: Text("Hello")),
        // Expanded(child: Text("Hello")),
        //we can divide like 4 piece for using expanded
        //expanded can be used in column and row
        //flex can be used divide manually
        //Expanded(flex: 2,child: Text("Hello"))
        ])
    );
  }
}