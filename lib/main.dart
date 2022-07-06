import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/101/column_row_learn.dart';
import 'package:flutter_full_learn/101/custom_widget_learn.dart';
import 'package:flutter_full_learn/101/indicator_learn.dart';
import 'package:flutter_full_learn/101/stack_learn.dart';
import 'package:flutter_full_learn/101/stateful_learn.dart';
import 'package:flutter_full_learn/101/statefull_lifecycle.dart';
import 'package:flutter_full_learn/101/stateless_learn.dart';
import 'package:flutter_full_learn/101/textfield_learn.dart';
import 'package:flutter_full_learn/202/tab_learn.dart';
import 'package:flutter_full_learn/demos/stack_demo.dart';

import '101/color_learn.dart';
import '101/list_tile.dart';
import '101/padding_learn.dart';
import '101/page_view_learn.dart';
import 'demos/demo.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        tabBarTheme: TabBarTheme(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.red,
          
        ),
        bottomAppBarTheme: BottomAppBarTheme(
          shape: CircularNotchedRectangle(),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
          )
        ),
        listTileTheme: const ListTileThemeData(
          dense: true,
          contentPadding: EdgeInsets.zero,
        )
        ,
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: Colors.white),
          errorColor: ColorsItems.sulu,
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            backgroundColor: Colors.transparent,
            elevation: 0,
          )),
      home: TabLearn(),
    );
  }
}
