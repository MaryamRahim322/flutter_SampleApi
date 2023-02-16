// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/controllers/test_controller.dart';

class Dashboard extends StatelessWidget {
  final taskController = Get.put(TestController());

  Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Test App"),
        ),
        body: Obx(
          () => taskController.loading.value
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : taskController.error.value != ''
                  ? Center(child: Text(taskController.error.value))
                  : ListView.builder(
                      itemCount: taskController.todos.length,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  " Title: ${taskController.todos[index].title ?? ""}"),
                              Text(
                                  " UserId: ${taskController.todos[index].userId ?? ""}"),
                              // Text(
                              //     " id: ${taskController.posts[index].id ?? ""}"),
                            ],
                          ),
                        );
                      }),

          ////////////////////////////
        ));
  }
}
