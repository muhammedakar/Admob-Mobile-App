import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String admobUrl='https://apps.admob.com/v2/home?_ga=2.225267486.546865541.1632737602-1631528274.1621404315';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body:  WebView(
          initialUrl:
              admobUrl,
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
