import "package:flutter/material.dart";
import 'package:flutter_full_learn/product/counter_hello_button.dart';
import 'package:flutter_full_learn/product/languages/languages_item.dart';


class StatefullLearn extends StatefulWidget {
  const StatefullLearn({Key? key}) : super(key: key);
  //it's work like stateless in here
  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  //we can change the variable in here and make a LifeCycle
  int _countValue=0;
    // void incrementValue(){
    //   setState(() {
    //               _countValue++;
        
    //   });

    // }
    // void deincrementValue(){
    //   setState(() {
    //   _countValue--;
        
    //   });
    //we can update counter just one function
    void _updateCounter(bool isIncrement){
      if(isIncrement){
         _countValue++;
      }else{
        _countValue--;
      }
      setState(() {
        
      });
    }
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title:const Text(LanguageItem.helloWorld)),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _incrementMethod(),
          _deincrementMethod(),
        ],
      ),
      body:ListView(
        children: [Column(
          
          children: [
            Center(child: Text(_countValue.toString(),style: Theme.of(context).textTheme.headline2)),
            const Placeholder(),
            const CounterButton(),
          ],
        )],
      ),
    );
  }

  FloatingActionButton _deincrementMethod() {
    return FloatingActionButton(onPressed: (){
        
        _updateCounter(false);
        },
        child:Icon(Icons.remove));
  }

  FloatingActionButton _incrementMethod() {
    return FloatingActionButton(onPressed: (){
      _updateCounter(true);
        },
        child:Icon(Icons.add));
  }
}