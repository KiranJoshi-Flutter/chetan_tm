import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WebViewExample(),
    );
  }
}

class WebViewExample extends StatefulWidget {
  const WebViewExample({Key key}) : super(key: key);

  @override
  _WebViewExampleState createState() => _WebViewExampleState();
}

class _WebViewExampleState extends State<WebViewExample> {
  // @override
  // void initState() {
  //   super.initState();
  //   // Enable virtual display.
  //   if (Platform.isAndroid) WebView.platform = AndroidWebView();
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: WebView(
          initialUrl: 'https://www.chetantm.com.np/',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
