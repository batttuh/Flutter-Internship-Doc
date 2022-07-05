import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(color: Colors.white, height: 100, width: 200)),
          Container(color: Colors.white, height: 100, width: 200),
        ],
      ),
    );
  }
}
