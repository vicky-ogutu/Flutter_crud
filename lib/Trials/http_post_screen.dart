
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart'as http;

class PostData extends StatefulWidget {
  const PostData({super.key});

  @override
  State<PostData> createState() => _PostDataState();
}

class _PostDataState extends State<PostData> {
  TextEditingController title =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
