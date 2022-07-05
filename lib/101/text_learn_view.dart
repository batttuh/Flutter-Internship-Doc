import 'package:flutter/material.dart';

class Text_Learn_View extends StatelessWidget {
  const Text_Learn_View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            ("Text Control" * 10),
            style: const TextStyle(
                letterSpacing: 3,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w600),
            textAlign: TextAlign.start,
          ),
          Text(
            "2. cumle",
            style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: MainColor.color,
                ),
          )
        ],
      ),
    ));
  }
}

class MainColor {
  static Color color = Colors.blue;
}
