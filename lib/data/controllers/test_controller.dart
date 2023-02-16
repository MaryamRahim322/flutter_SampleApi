// ignore_for_file: avoid_print

import 'package:get/get.dart';
import 'package:test_app/data/models/postresponse.dart';
import 'package:test_app/data/models/todos_response.dart';
import 'package:test_app/data/services/todos_service.dart';

import '../services/postservices.dart';

class TestController extends GetxController {
  RxBool loading = false.obs;
  RxString error = ''.obs;
  List<TodosResponse> todos = [];
  List<PropertieseResponser> posts = [];

  @override
  void onInit() {
    getTodos();
    getPosts();
    super.onInit();
  }

  void getTodos() async {
    loading.value = true;
    error.value = '';

    var res = await TodosService.getTodos();
    loading.value = false;

    if (res is List<TodosResponse>) {
      todos = res;
      loading.value = false;
      print(res);
    } else {
      loading.value = false;
      error.value = res.toString();
    }
  }

  void getPosts() async {
    loading.value = true;
    error.value = '';

    var res = await PostsService.getPosts();
    loading.value = false;

    if (res is List<PropertieseResponser>) {
      posts = res;
      loading.value = false;
      print(res);
    } else {
      loading.value = false;
      error.value = res.toString();
    }
  }
}
