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
  final String? body;
PostModel5(this.userId,this.id,this.title,this.body);
  
}

