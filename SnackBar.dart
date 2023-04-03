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
      title: "SnackBar",
      home: Scaffold(
        appBar: AppBar(title: Text("SnackBar")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.snackbar(
                        "Snackbar Title", "This will be Snackbar Message.",
                        snackPosition: SnackPosition.BOTTOM,
                        /* titleText: Text("Another Title"),
                      messageText: Text("Another Message", style: TextStyle(color: Colors.black),),
                      */
                        colorText: Colors.black,
                        backgroundColor: Colors.blue,
                        borderRadius: 40,
                        margin: EdgeInsets.all(10),
                        //maxWidth: 100,
                        animationDuration: Duration(milliseconds: 500),
                        backgroundGradient:
                            LinearGradient(colors: [Colors.red, Colors.green]),
                        borderColor: Colors.purple,
                        borderWidth: 4,
                        /*boxShadows: [
                        BoxShadow(color: Colors.yellow,
                        offset: Offset(30, 50),
                        spreadRadius: 20,
                        blurRadius: 0)
                      ],*/
                        isDismissible: true,
                        dismissDirection: DismissDirection.horizontal,
                        forwardAnimationCurve: Curves.bounceInOut,
                        duration: Duration(milliseconds: 8000),
                        icon: Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                        shouldIconPulse: false,
                        //leftBarIndicatorColor: Colors.white,
                        mainButton: TextButton(
                          onPressed: () {},
                          child: Text("Retry"),
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.blue,
                              primary: Colors.black),
                        ),
                        onTap: (val) {
                          print("Retry clicked");
                        },
                        overlayBlur: 5,
                        //overlayColor: Colors.grey,
                        padding: EdgeInsets.all(10),
                        showProgressIndicator: true,
                        progressIndicatorBackgroundColor: Colors.deepOrange,
                        progressIndicatorValueColor:
                            AlwaysStoppedAnimation(Colors.white),
                        reverseAnimationCurve: Curves.bounceInOut,
                        snackbarStatus: (val) {
                          print(val);
                        },
                        userInputForm: Form(
                            child: Row(
                          children: [Expanded(child: TextField())],
                        )));
                  },
                  child: Text("Show SnackBar"))
            ],
          ),
        ),
      ),
    );
  }
}
