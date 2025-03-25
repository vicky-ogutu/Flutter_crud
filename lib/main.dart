import 'package:flutter/material.dart';
import 'package:flutter_crud_app/Trials/http_post_screen.dart';
import 'package:flutter_crud_app/api_post_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: post_screen(),
      home: PostData(),
    );
  }
}

class post_screen  extends ConsumerWidget {
  //const PostScreen ({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final post_list =ref.watch(post_listLprovider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts List'),
      ),

      body: post_list.when(data: (Posts){

        return ListView.builder(
            itemCount: Posts.length,
            itemBuilder: (context, index){
             final user =Posts[index];
              return ListTile(
               title: Text(user.title),
                subtitle: Text(user.body),
              );

            });
      },
          error: (error, stackTrace)=> Text(error.toString()),
          loading:()=> const CircularProgressIndicator()) ,

    );
  }
}


