
import 'dart:io';

import 'package:dio/dio.dart';
import "package:flutter/material.dart";
import 'package:flutter_full_learn/202/service/post_model.dart';
import 'package:flutter_full_learn/product/languages/languages_item.dart';

class ServiceLearnState extends StatefulWidget {
  const ServiceLearnState({Key? key}) : super(key: key);

  @override
  State<ServiceLearnState> createState() => _ServiceLearnState();
}

class _ServiceLearnState extends State<ServiceLearnState> {
  bool _isLoading=false;
  late final _dio;
  final _baseUrl="https://jsonplaceholder.typicode.com/";
  


  void changeLoading() {
    setState(() {
      _isLoading=!_isLoading;
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _dio=Dio(BaseOptions(baseUrl: _baseUrl));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(LanguageItem.helloWorld),
        actions: [
         _isLoading? Center(child: const CircularProgressIndicator()):const SizedBox.shrink(),
        ],
      ),
      body:Column(children: [
        TextField(
          decoration: InputDecoration(
            labelText: "Title",
          ),
        ),
        TextField(decoration: InputDecoration(
            labelText: "Body",
          ),),
        TextField(keyboardType: TextInputType.number,decoration: InputDecoration(
            labelText: "UserId",
            
          ),),
      ],)
    );
  }

  Padding listTileWidgets(int index,String? text) => Padding(padding: EdgeInsets.symmetric(horizontal: 10),child: Text(text?? ""));
}