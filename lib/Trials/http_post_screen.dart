
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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

       if(response.statusCode==201){
         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("posted succesful")));
       }

    }catch(Error){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Cannot post data"))
      );

      //print(Error.toString());

    }
   // return;
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
