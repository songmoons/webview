import 'package:flutter/material.dart';
import 'package:webview/webview_content.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WebView',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        ////////////////
      ),
      home: myHomePage(),
    );
  }
}

class myHomePage extends StatefulWidget {
  @override
  _myHomePageState createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
// ==================================================== الروابط ================================================
  List urls = ['http://google.com', 'http://facebook.com'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("weeeb"),
      ),
      body: ListView.builder(
          itemCount: urls.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                // ====================================================================================================

                title: Text(urls[index]),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Webviewcontent(urls[index])));
                },
              ),
            );
          }),
    );
  }
}
