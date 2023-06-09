import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Dialog",
      home: Scaffold(
        appBar: AppBar(title: Text("Dialog")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    //Get.defaultDialog();
                    Get.defaultDialog(
                      title: "Dialog Title",
                      titleStyle: TextStyle(fontSize: 25),
                      middleText: "This is middle text",
                      middleTextStyle: TextStyle(fontSize: 20),
                      backgroundColor: Colors.purple,
                      radius: 50,
                      content: Row(
                        children: [
                          CircularProgressIndicator(),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(child: Text("Data Loading"))
                        ],
                      ),
                      textCancel: "Cancel",
                      cancelTextColor: Colors.white,
                      textConfirm: "Confirm",
                      confirmTextColor: Colors.white,
                      onCancel: () {},
                      onConfirm: () {},
                      buttonColor: Colors.red,
                      cancel: Text(
                        "Cancels",
                        style: TextStyle(color: Colors.white),
                      ),
                      confirm: Text(
                        "Confirms",
                        style: TextStyle(color: Colors.white),
                      ),
                      actions: [
                        ElevatedButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: Text("Action-1")),
                        ElevatedButton(
                            onPressed: () {}, child: Text("Action-2"))
                      ],
                      barrierDismissible: false,
                    );
                  },
                  child: Text("Show Dialog"))
            ],
          ),
        ),
      ),
    );
  }
}
