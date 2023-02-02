// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  late WebViewPlusController controller;

  @override
  Widget build(BuildContext context) {
     
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Container(
          color: Color.fromARGB(255, 240, 33, 19),
          child: WebViewPlus(

            onProgress: (progress) {
                
               debugPrint(" progress : "+progress.toString());
            },
          //  backgroundColor: Colors.amber,
            javascriptMode: JavascriptMode.unrestricted,
            initialUrl: 'assets/script/index.html',
            onWebViewCreated: (controllerPlus) {
              controller = controllerPlus;
            },
          ),
        ),
      ),
    );
  }
}

 