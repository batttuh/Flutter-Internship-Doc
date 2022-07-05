import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text('data',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(color: Theme.of(context).errorColor)),
        ],
      ),
    );
  }
}

class ColorsItems {
  static Color porchase = const Color(0xffEDBF61);
  static Color sulu = const Color.fromRGBO(198, 237, 97, 1);
}
