import 'package:flutter/material.dart';

class stateless_learn extends StatelessWidget {
  const stateless_learn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StatelessWidget'),
      ),
      body: Column(
        children: [
          const TitleTextWidget(title:"batu"),
            const _CustomContainer(),
            emptyBox(),
        ]
      ),  
    );
  }

  SizedBox emptyBox() {
    return const SizedBox(
            height: 20,
          );
  }
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
      ),
      );
  }
}
class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({Key? key,required this.title}) : super(key: key);
  final String? title;
  @override
  Widget build(BuildContext context) {
    return Text(
      'StatelessWidget',
      style: Theme.of(context).textTheme.headline4,
    );
  }
}