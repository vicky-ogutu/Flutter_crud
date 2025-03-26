import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud_app/post.dart';

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

  Future<List<Post>> getPosts(){
    final String baseURL ="https://jsonplaceholder.typicode.com/posts";
    try{

    }catch(Error){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Netork error: $Error")));

    }

  }
}
