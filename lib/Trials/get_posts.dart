import 'dart:convert';
import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud_app/post.dart';
import 'package:http/http.dart' as http;

class Getposts extends StatefulWidget {
  const Getposts({super.key});

  @override
  State<Getposts> createState() => _GetpostsState();
}

class _GetpostsState extends State<Getposts> {

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  Future<List<Post>> getPosts() async{
    final String baseURL ="https://jsonplaceholder.typicode.com/posts";

      final response = await http.get(Uri.parse(baseURL));
      if(response.statusCode==200) {
        List<dynamic> jsonPosts = jsonDecode(response.body);
        return jsonPosts.map((json) => Post.fromJson(json)).toList();
      }else{
      throw Exception("Cannot fetch posts");
      //ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Netork error: $Error")));

    }

  }
}
