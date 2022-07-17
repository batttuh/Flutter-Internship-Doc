import "package:flutter/material.dart";

class SheedView extends StatefulWidget {
  const SheedView({Key? key}) : super(key: key);

  @override
  State<SheedView> createState() => _SheedViewState();
}

class _SheedViewState extends State<SheedView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        showModalBottomSheet(context: context, builder: (context){
          return Text("22");
        });
      },
      child:Icon(Icons.shutter_speed_outlined),
    )
    );
  }
}