import 'package:flutter/material.dart';


class LifeCycleLearn extends StatefulWidget {
  const LifeCycleLearn({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  State<LifeCycleLearn> createState() => _LifeCycleLearnState();
}

class _LifeCycleLearnState extends State<LifeCycleLearn> {
  String _sentence="";
  late final bool isOdd;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _sentence=widget.text;
    isOdd=widget.text.length.isOdd;
    oddOrEven();
  }

  void oddOrEven() {
    if(isOdd){
      _sentence+=" Odd";
    }else{
      _sentence+=" Even";
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text(_sentence)),
      body: Column(),
    );
  }
}