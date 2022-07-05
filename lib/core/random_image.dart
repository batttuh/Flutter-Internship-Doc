import "package:flutter/material.dart";

class Random50Image extends StatelessWidget {
  const Random50Image({Key? key, this.heigh=50}) : super(key: key);
  final double heigh; 
  final String imageUrl = "https://picsum.photos/200/300";
  @override
  Widget build(BuildContext context) {
    return Image.network(imageUrl,height: heigh,fit: BoxFit.fill,);
  }
}