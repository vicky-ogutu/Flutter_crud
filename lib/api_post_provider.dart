

import 'package:flutter_crud_app/api_service.dart';
import 'package:flutter_crud_app/post.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final api_provider =Provider<ApiService>((ref) {
  return ApiService();
}
);

final post_listLprovider =FutureProvider<List<Post>>((ref){
  return ref.watch(api_provider).fetchposts();
});