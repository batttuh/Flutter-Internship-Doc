import 'package:flutter/material.dart';

import '../core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
    body: Column(children: [
      Card(
        child: Padding(
          padding:EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: ListTile(
            leading: Icon(Icons.join_full_outlined),
            title: Random50Image(),
            subtitle: Text('This is the home page'),
            trailing: Icon(Icons.home),
            onTap: (){},
            
          ),
        ),
      )
    ]),
    );   
  }
}