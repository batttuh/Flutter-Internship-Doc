
import 'dart:io';

import 'package:dio/dio.dart';
import "package:flutter/material.dart";
import 'package:flutter_full_learn/202/service/post_model.dart';
import 'package:flutter_full_learn/product/languages/languages_item.dart';

class ServiceLearn extends StatefulWidget {
  const ServiceLearn({Key? key}) : super(key: key);

  @override
  State<ServiceLearn> createState() => _ServiceLearnState();
}

class _ServiceLearnState extends State<ServiceLearn> {
  List<PostModel>? _items;
  bool _isLoading=false;
  late final _dio;
  final _baseUrl="https://jsonplaceholder.typicode.com/";
  
  Future<void> fetchPostItems() async {
    changeLoading();

    final response=await _dio.get("posts");
    
    if(response.statusCode==HttpStatus.ok){
      
      final _datas=response.data;
      if(_datas is List){
        setState(() {
        _items= _datas.map((e)=>PostModel.fromJson(e)).toList();
          
        });
      }
    }
    changeLoading();
  }

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
    fetchPostItems();
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
      body:ListView.builder(itemBuilder: (context,index){
        return Card(
          margin: EdgeInsets.only(bottom: 10,left: 10,right: 10),
          child: ListTile(
            title:listTileWidgets(index,_items?[index].title),
            subtitle: listTileWidgets(index,_items?[index].body)
          ),
        );
      },
      itemCount: _items?.length ?? 0,
      )
    );
  }

  Padding listTileWidgets(int index,String? text) => Padding(padding: EdgeInsets.symmetric(horizontal: 10),child: Text(text?? ""));
}