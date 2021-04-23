import 'dart:io';
import 'package:dio/dio.dart';
import 'package:furniture_app/feature/model/post_model.dart';
import 'package:mobx/mobx.dart';
part 'post_view_model.g.dart';

class PostViewModel = _PostViewModelBase with _$PostViewModel;

abstract class _PostViewModelBase with Store {
  @observable
  List<Post> posts = [];
  final url = "https://fakestoreapi.com/products";
  @observable
  bool isServiceRequestLoading = true;
  @observable
  int item = 0;
  @observable
  int sayi = 0;

  @action
  Future<void> fetchData() async {
    dataChanged();
    final response = await Dio().get(url);
    if (response.statusCode == HttpStatus.ok) {
      final responseData = response.data as List;
      posts = responseData.map((e) => Post.fromMap(e)).toList();
      print(posts);
    }
    dataChanged();
  }

  @action
  increment() {
    item++;
  }

  @action
  inc() {
    sayi++;
  }

  @action
  decrement() {
    item--;
  }

  @action
  dataChanged() {
    isServiceRequestLoading = !isServiceRequestLoading;
  }
}
