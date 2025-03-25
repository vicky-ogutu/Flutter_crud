
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart'as http;

class PostData extends StatefulWidget {
  const PostData({super.key});

  @override
  State<PostData> createState() => _PostDataState();
}

class _PostDataState extends State<PostData> {
  TextEditingController title =TextEditingController();
  TextEditingController body =TextEditingController();

  Future<void> postUser()async {
    String baseUrl ="https://jsonplaceholder.typicode.com/posts";
    Map<String, dynamic> post_data={
      "title": title.text,
      "body": body.text
    };
    try{
       final response =await http.post(Uri.parse(baseUrl),
       headers: {"Content-Type":"application/json"},
       body: jsonEncode(post_data)  
       );



    }catch(Error){
      print(Error.toString());

    }
   // return;
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
