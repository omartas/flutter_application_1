class PostModel1 {
  final int userId;
  final int id;
  final String title;
  final String body;
  PostModel1(this.userId, this.id, this.title, this.body);
}

class PostModel2 {
  int? userId;
  int? id;
  String? title;
  String? body;
}

class PostModel3 {
   int userId;
   int id;
   String title;
   String body;
   PostModel3(this.userId,this.body,this.id,this.title);
}
class PostModel4 {
  final int userId;
  final int id;
  final String title;
  final String body;
  PostModel4({required this.userId,required this.id,required this.title,required this.body});
}

class PostModel5 {
  final int _userId;
  final int _id;
  final String _title;
  final String _body;
  PostModel5(  {
    required int userId,required int id,required String title,required String body}): _userId=userId,_id=id, _title=title,_body=body;
}

