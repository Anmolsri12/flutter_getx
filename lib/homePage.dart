import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        //   title: Text("Home Page "),
        Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
              onPressed: (() {
                Get.back();
              }),
              child: Text("Go to main")),
              Text("${Get.arguments}")
        ],
      )),
    );
  }
}
