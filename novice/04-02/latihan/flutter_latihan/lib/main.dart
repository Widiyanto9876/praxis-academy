import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class HomePage extends StatelessWidget {

  launchURL() {
    launch('http://flutter.dev');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter latihan Package'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: launchURL,
          child: Text('Show Flutter homePage'),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}


