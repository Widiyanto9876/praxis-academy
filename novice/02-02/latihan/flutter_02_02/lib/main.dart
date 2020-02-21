import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: HomePage(),
  routes: <String,WidgetBuilder>{
    "/SecondPage": (BuildContext context) => SecondPage(),
    "/HomePage": (BuildContext context) => HomePage()
  },
));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "HomePage"
        ),
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.favorite,color: Colors.redAccent,),
                onPressed: (){Navigator.of(context).pushNamed("/SecondPage");},
              ),
              Text("Home")
            ],
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(icon: Icon(Icons.home),iconSize: 70, onPressed: (){
                Navigator.of(context).pushNamed("/HomePage");
              }),
              Text("SecondPage")
            ],
          ),
        ),
      ),
    );
  }
}




//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    var routes = <String, WidgetBuilder>{
//      MyItemsPage.routeName: (BuildContext context) => new MyItemsPage(title: "MyItemsPage"),
//    };
//    return new MaterialApp(
//      title: 'Flutter Demo',
//      theme: new ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//      home: new MyHomePage(title: 'Flutter Demo Home Page'),
//      routes: routes,
//    );
//  }
//}
//
//class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//
//  final String title;
//
//  @override
//  _MyHomePageState createState() => new _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//  int _counter = 0;
//
//  void _incrementCounter() {
//    Navigator.pushNamed(context, MyItemsPage.routeName);
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    var button = new IconButton(icon: new Icon(Icons.access_alarm), onPressed: _onButtonPressed);
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text(widget.title),
//      ),
//      body: new Column(
//        children: <Widget>[
//          new Text('Dog'),
//          new Text('Cat'),
//          button
//        ],
//      ),
//      floatingActionButton: new FloatingActionButton(
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: new Icon(Icons.add),
//      ),
//    );
//  }
//
//  void _onButtonPressed() {
//    Navigator.pushNamed(context, MyItemsPage.routeName);
//  }
//}
//
//class MyItemsPage extends StatefulWidget {
//  MyItemsPage({Key key, this.title}) : super(key: key);
//
//  static const String routeName = "/MyItemsPage";
//
//  final String title;
//
//  @override
//  _MyItemsPageState createState() => new _MyItemsPageState();
//}
//class _MyItemsPageState extends State<MyItemsPage> {
//  @override
//  Widget build(BuildContext context) {
//    var button = new IconButton(icon: new Icon(Icons.arrow_back), onPressed: _onButtonPressed);
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text(widget.title),
//      ),
//      body: new Container(
//        child: new Column(
//          children: <Widget>[
//            new Text('Item1'),
//            new Text('Item2'),
//            button
//          ],
//        ),
//      ),
//      floatingActionButton: new FloatingActionButton(
//        onPressed: _onFloatingActionButtonPressed,
//        tooltip: 'Add',
//        child: new Icon(Icons.add),
//      ),
//    );
//  }
//
//  void _onFloatingActionButtonPressed() {
//  }
//
//  void _onButtonPressed() {
//    Navigator.pop(context);
//  }
//}

//
//class AwessomeButton extends StatefulWidget {
//  @override
//  _AwessomeButtonState createState() => _AwessomeButtonState();
//}
//
//class _AwessomeButtonState extends State<AwessomeButton> {
//  int counter = 0;
//  List<String> strings = ["flutter", "is", "Awessome"];
//  String displayedString = "";
//
//  void onPressed() {
//    setState(() {
//      displayedString = strings[counter];
//      counter = counter < 2 ? counter + 1 : 0;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("Statefull Widget"),
//        backgroundColor: Colors.deepOrange,
//      ),
//      body: Container(
//        child: Center(
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              Text(
//                displayedString,
//                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//              ),
//              Padding(padding: EdgeInsets.all(15)),
//              RaisedButton(
//                child: Text(
//                  "press me",
//                  style: TextStyle(
//                      color: Colors.white,
//                      fontStyle: FontStyle.italic,
//                      fontSize: 20),
//                ),
//                color: Colors.red,
//                onPressed: onPressed,
//              )
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}

//
//class MyStatelessWidget extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(title: Text('Stateless Widget'),),
//      body: Container(
//        padding: EdgeInsets.all(20.0),
//        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.stretch,
//          children: <Widget>[
//            MyCard(
//              title: Text('i love flutter',style: TextStyle(fontSize: 20),),
//              icon: Icon(Icons.favorite,size: 40, color: Colors.redAccent,),
//            ),MyCard(
//              title: Text('i love donats',style: TextStyle(fontSize: 20),),
//              icon: Icon(Icons.donut_large,size: 40, color: Colors.redAccent,),
//            ),MyCard(
//              title: Text('i see you',style: TextStyle(fontSize: 20),),
//              icon: Icon(Icons.visibility,size: 40, color: Colors.redAccent,),
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}
//
//class MyCard extends StatelessWidget {
//
//  final Widget title;
//  final Widget icon;
//
//  MyCard({Key key, this.title, this.icon}) : super(key: key);
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      padding: EdgeInsets.all(20),
//      child: Card(
//        child: Container(
//          padding: EdgeInsets.all(15),
//          child: Column(
//            children: <Widget>[
//              this.title,
//              this.icon
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}
