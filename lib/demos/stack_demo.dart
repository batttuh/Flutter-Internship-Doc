import 'package:flutter/material.dart';
import 'package:flutter_full_learn/core/random_image.dart';


class StackDemoView extends StatelessWidget {
  const StackDemoView({Key? key}) : super(key: key);
  final double imageHeight = 50;
  final double imageWidth=150;
  final String data = "Hello";
  @override
  Widget build(BuildContext context) {
    
    
    return Scaffold(
      appBar: AppBar(),
      body:Column(children:[
        Expanded(

          flex: 4

          ,child:Stack(
            alignment: Alignment.center,
            children: [
              Positioned.fill(bottom: imageHeight/2,left: 0,right: 0,child: Random50Image()),
              Positioned(

                bottom: 0,
                
                height: imageHeight,
                width: imageWidth,
                child: _cardCustom(),
              )
            ],
          ) 
        ),
        const Spacer(
          flex: 6,
        )
      ])
    );
  }

  Card _cardCustom() {
    return Card(
                color: Colors.black,
                shape: StadiumBorder(),
                child: Center(child: Text(data)),
              );
  }
}