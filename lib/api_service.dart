import 'dart:convert';

import 'package:flutter_crud_app/post.dart';
import 'package:http/http.dart' as http;

class ApiService{

  final String baseUrl ='https://jsonplaceholder.typicode.com';

  Future<List<Post>> fetchposts() async{
    final response = await http.get(Uri.parse('$baseUrl/posts'));

    if(response.statusCode==200){
      List<dynamic> data =jsonDecode(response.body);
      return data.map((item) => Post.fromJson(item)).toList();
    }else{
      throw Exception('Error occured');
    }

  }
}