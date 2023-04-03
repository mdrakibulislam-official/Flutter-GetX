import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Route Navigation",
      home: Scaffold(
        appBar: AppBar(title: Text("Route Navigation")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () async {
                    /*Get.to(Home(),
                    fullscreenDialog: true,
                    transition: Transition.zoom,
                    curve: Curves.bounceInOut,
                    duration: Duration(milliseconds: 1000));*/

                    //Get.off(Home());

                    //Get.offAll(Home());

                    //Get.to(Home(), arguments: "Data from Main Screen");

                    var data = await Get.to(Home());
                    print("This received data is $data");
                  },
                  child: Text("Go to Home"))
            ],
          ),
        ),
      ),
    );
  }
}
