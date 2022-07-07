# Flutter Doc

<h2>Lifecycle</h2>

- ChangeDependencies: It just works like initState but it works after the initState before the drawing when we change the state, for example when we change the data which is coming from super class it works(oldWidget)
- dispose: when we down the page it works.
- didUpdateWidget: we can access oldWidget and compare it with the newWidget
- inspect : we can see variables prop
- mixin is work like interface we can inherit it using with
<h2>TextField</h2>

- ~ it makes integer the number== a~*b
- buildCounter: it is in the right bottom we can make widget and we need to return, 
- Animated Container : it is like container but we need to duration
- keyboardType: It is important to use to change the keyboard type
- autoFillHints: we use like array [AutoFillHints.email]
- inputFormatter: we compare the oldvalue and new value
- focusNode and textInputAction are using for clicking the next in keyboard
- in theme we can define inputDecorationTheme
- FocusNode class is basically an object that can be used to obtain keyboard focus and to handle keyboard events.
- obscuringCharacter change the password seen
- suffix can write right side to the textField
- In decoration we can make border
- using obscureText can change the visibility password
- AnimatedCrossFade make animation our icon
<h2> ListView</h2>

- we have not problem with height
- scrollDirection: we can change the direction
- ListView has padding 
- ListView.builder has itemBuilder and it returns widget this prop makes recurrent widgets
- ListView.separated has separatorBuilder
- we can define the itemCount
<h2>Navigator</h2>

- Navigator.of(context).push(MaterialPageRoute(builder:(context){return page})) : push method 
- fullscreenDialog: screen coming from bottom
- settings: we can transfer the data
- Navigator.of(context).pop()
- if we want to take data which is coming from settings we need to take in didChangeDependencies using ModelRoute.of(context).settings.arguments
<h2>Tabbar</h2>

- Firstly we need to use DefaultTabController
- In the body TabBarView, DefaultTabController's child is Scaffold
- In the appBar we can control widget using, bottom: TabBar(tabs: ...)
- In the bottom, bottomNavigationBar:BottomAppBar(child: TabBar(tabs:...))
- In the BottomAppBar we can use notchMargin and shape: CircularNotchedRectangle(),in the scaffold extendBody can make our floating action bar's shape's cool.
- For using tabController we need to use TickerProviderStateMixin and in the vsync we need to define this
- we can define tabBarTheme

<h2> HttpPostModels</h2>

```Dart

class PostModel{
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModel(this.userId, this.id, this.body, this.title);
}
class PostModel1{
   int? userId;
   int? id;
   String? title;
   String? body;

  
}
//For Local
class PostModel2{
   int userId;
   int id;
   String title;
   String body;

  PostModel2(this.userId, this.id, this.body, this.title);
}

class PostModel3{
   final int userId;
   final int id;
   final String title;
   final String body;

  PostModel3({required this.userId,required this.id,required this.body,required this.title});
}

class PostModel4{
   final int _userId;
   final int _id;
   final String _title;
   final String _body;

  PostModel4({
   required int userId,
   required int id,
   required String title,
   required String body}):_userId=userId,_id=id,_title=title,_body=body;
   
}
//For service
class PostModel5{
  final int? userId;
  final int? id;
  final String? title;
  String? body;
PostModel5(this.userId,this.id,this.title,this.body);
 void updateBody(String? data){
  if(data!=null&&data.isNotEmpty){
    body=title;
    }
  }
}
```
We can use copyWith for updating
<h2>Services</h2>

- https://pub.dev/packages/http
- https://pub.dev/packages/dio
- https://javiercbk.github.io/json_to_dart/ 

```Dart
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'comment_model.dart';
import 'post_model.dart';

abstract class IPostService {
  Future<bool> addItemToService(PostModel postModel);
  Future<bool> putItemToService(PostModel postModel, int id);
  Future<bool> deleteItemToService(int id);
  Future<List<PostModel>?> fetchPostItemsAdvance();
  Future<List<CommentModel>?> fetchRelatedCommentsWithPostId(int postId);
}

class PostService implements IPostService {
  final Dio _dio;
  PostService() : _dio = Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/'));

  @override
  Future<bool> addItemToService(PostModel postModel) async {
    try {
      final response = await _dio.post(_PostServicePaths.posts.name, data: postModel);

      return response.statusCode == HttpStatus.created;
    } on DioError catch (error) {
      _ShowDebug.showDioError(error, this);
    }
    return false;
  }

  @override
  Future<bool> putItemToService(PostModel postModel, int id) async {
    try {
      final response = await _dio.put('${_PostServicePaths.posts.name}/$id', data: postModel);

      return response.statusCode == HttpStatus.ok;
    } on DioError catch (error) {
      _ShowDebug.showDioError(error, this);
    }
    return false;
  }

  @override
  Future<bool> deleteItemToService(int id) async {
    try {
      final response = await _dio.delete('${_PostServicePaths.posts.name}/$id');

      return response.statusCode == HttpStatus.ok;
    } on DioError catch (error) {
      _ShowDebug.showDioError(error, this);
    }
    return false;
  }

  @override
  Future<List<PostModel>?> fetchPostItemsAdvance() async {
    try {
      final response = await _dio.get(_PostServicePaths.posts.name);

      if (response.statusCode == HttpStatus.ok) {
        final _datas = response.data;

        if (_datas is List) {
          return _datas.map((e) => PostModel.fromJson(e)).toList();
        }
      }
    } on DioError catch (exception) {
      _ShowDebug.showDioError(exception, this);
    }
    return null;
  }

  @override
  Future<List<CommentModel>?> fetchRelatedCommentsWithPostId(int postId) async {
    try {
      final response =
          await _dio.get(_PostServicePaths.comments.name, queryParameters: {_PostQueryPaths.postId.name: postId});

      if (response.statusCode == HttpStatus.ok) {
        final _datas = response.data;

        if (_datas is List) {
          return _datas.map((e) => CommentModel.fromJson(e)).toList();
        }
      }
    } on DioError catch (exception) {
      _ShowDebug.showDioError(exception, this);
    }
    return null;
  }
}

enum _PostServicePaths { posts, comments }
enum _PostQueryPaths { postId }

class _ShowDebug {
  static void showDioError<T>(DioError error, T type) {
    if (kDebugMode) {
      print(error.message);
      print(type);
      print('-----');
    }
  }
}
```
<h2>Color generator</h2> 

- https://colornamer.robertcooper.me/

<h2> OOP </h2>

- on : can make special class it determines which class can be use this class
- enum and extension can be used for clean code

<h2> Animation </h2>

- AnimatedCrossFade 
- animatedOpacity
- animatedDefaultTextStyle
- AnimatedIcon
- AnimatedContainer
- AnimatedList
- 
