import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Webviewcontent extends StatefulWidget {
  final url;
  Webviewcontent(this.url);
  @override
  _WebviewcontentState createState() => _WebviewcontentState();
}

class _WebviewcontentState extends State<Webviewcontent> {
  bool loading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: <Widget>[
          WebView(
              initialUrl: widget.url,
              javascriptMode: JavascriptMode.unrestricted,
              onPageFinished: (String finished) {
                setState(() {
                  loading = false;
                });
              }),
          loading
              ? Container(
                  alignment: Alignment.center,
                  child: CircularProgressIndicator(),
                )
              : Container(
                  color: Colors.teal,
                )
        ],
      )),
    );
  }
}
