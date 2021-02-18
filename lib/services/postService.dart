import 'package:app1/models/posts.dart';
import 'package:dio/dio.dart';

class PostService {
  String url = "http://jsonplaceholder.typicode.com/posts";
  Future<List<Posts>> getPosts() async {
    List<Posts> post = new List();
    Response response;
    Dio dio = new Dio();
    response = await dio.get(url);
    var data = response.data;
    print(data);
    data.forEach((item) {
      post.add(Posts.fromJson(item));
    });
    return post;
// Optionally the request above could also be done as
    // response = await dio.get("/test", queryParameters: {"id": 12, "name": "wendu"});
    // print(response.data.toString());
  }
}
