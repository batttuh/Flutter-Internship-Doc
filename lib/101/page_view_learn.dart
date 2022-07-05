import "package:flutter/material.dart";
import 'package:flutter_full_learn/101/icon_leaern.dart';
import 'package:flutter_full_learn/101/stack_learn.dart';
import 'package:flutter_full_learn/101/stateful_learn.dart';


class PageViewLearn extends StatefulWidget {
  const PageViewLearn({Key? key}) : super(key: key);

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController=PageController(viewportFraction: 0.7);
  int _currentPage=0;
  void updatePage(int index){
    
    setState(() {
      _currentPage=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(_currentPage.toString()),
          ),
          Spacer(),
          FloatingActionButton(onPressed: (){
                         _pageController.previousPage(duration: _DurationUtility.lowDuration, curve: Curves.slowMiddle);

          },child: Icon(Icons.chevron_left_outlined,)),
          FloatingActionButton(onPressed: (){
                        _pageController.nextPage(duration: _DurationUtility.lowDuration, curve: Curves.slowMiddle);
          },child: Icon(Icons.chevron_right_outlined,)),
        ],
      ),
      body: PageView(
        padEnds: false, // it starts at between the left side
        controller: _pageController, //screen's size
        onPageChanged: updatePage,
        children: [
          IconLearnView(),
          StackLearn(),
          StatefullLearn()
        ],
      ),
    )   ;
  }
}
class _DurationUtility{
  static const lowDuration=Duration(seconds: 1);
}