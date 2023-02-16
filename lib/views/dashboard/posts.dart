// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/controllers/test_controller.dart';

class POSTS extends StatelessWidget {
  final taskController = Get.put(TestController());

  POSTS({super.key});

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
                          // height: 3.0.h,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      " id: ${taskController.posts[index].id ?? ""}",
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    const SizedBox(
                                      height: 3.0,
                                    ),
                                    Text(
                                      " userId: ${taskController.todos[index].userId ?? ""}",
                                    ),
                                    Text(
                                        " title: ${taskController.todos[index].title ?? ""}"),
                                    Text(
                                        " body: ${taskController.posts[index].body ?? ""}"),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      }),

          ////////////////////////////
        )
        );
  }
}
