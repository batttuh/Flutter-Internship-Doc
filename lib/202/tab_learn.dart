import "package:flutter/material.dart";
import 'package:flutter_full_learn/101/icon_leaern.dart';
import 'package:flutter_full_learn/101/stateful_learn.dart';
import 'package:flutter_full_learn/101/stateless_learn.dart';
import 'package:flutter_full_learn/101/textfield_learn.dart';


class TabLearn extends StatefulWidget {
  const TabLearn({Key? key}) : super(key: key);

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabController;
  final notchedValue=10;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController=TabController(length: _MyTabViews.values.length, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _MyTabViews.values.length,
      child: Scaffold(
        extendBody: true,
        floatingActionButton: FloatingActionButton(onPressed: (){
          _tabController.animateTo(_MyTabViews.home.index);
        }),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        appBar: AppBar(
          bottom: TabBarViewMethod(),
        ),
          body:TabBarView(physics: NeverScrollableScrollPhysics(),controller: _tabController,children: [
            SafeArea(child: const StatefullLearn()),
            const stateless_learn(),
            IconLearnView(),
            TextFieldLearn(),

          ]),
          bottomNavigationBar: BottomAppBar(
            
            notchMargin: notchedValue.toDouble(),
            
            child: TabBarViewMethod()),
      ),
    );
  }

  TabBar TabBarViewMethod() => TabBar(controller: _tabController,tabs:_MyTabViews.values.map((e) => Tab(text: "${e.name.toString()}")).toList());
}

enum _MyTabViews{
  home,settings,favorite,profile
}

extension _MyTabViewExtension on _MyTabViews{
  // void name (){

  // }
}