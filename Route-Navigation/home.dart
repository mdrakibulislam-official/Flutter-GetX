import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              Get.arguments ?? "Home page",
              style: TextStyle(color: Colors.purpleAccent, fontSize: 30),
            ),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Next Screen",
                style: TextStyle(fontSize: 10, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.back(result: "Return is Successful");
                },
                child: Text(
                  "Back to Main",
                  style: TextStyle(fontSize: 10),
                ))
          ],
        ),
      ),
    );
  }
}
