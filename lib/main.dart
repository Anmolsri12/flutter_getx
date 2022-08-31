import 'package:flutter/material.dart';
import 'package:flutter_getx/homePage.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // This widget is the root of your application.
  var count=0.obs;
  void increment(){
    count++;
  }
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Anmol Learning",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Anmol"),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.snackbar("snackbar", "Give Some Error", snackPosition:  SnackPosition.TOP,
                
                  // Duration duration = Duration(seconds: 7)
                  // Color backgroundColor = Colors.red
                  );Duration duration = Duration(seconds: 7);
                 
                },
                child: Text("Click It"),
              ),
              ElevatedButton(
                onPressed: (() => Get.defaultDialog(title: "Anmol You Are useful persion")),
                child: Text("DialogBox"),
              ),
              ElevatedButton(onPressed: () => Get.to(home(),arguments:Text("Have a pen?/") ), child: Text("go to home screen")),
           Obx(() => Text("$count"),
             
           ), 
              ElevatedButton(onPressed: (() => increment()), child: const Text("State management"))
            ],
          ),
        ),
      ),
    );
  }
}
