import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Collapsing List Demo')),
        body: CollapsingList(),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    @required this.minHeight,
    @required this.maxHeight,
    @required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;
  @override
  double get minExtent => minHeight;
  @override
  double get maxExtent => math.max(maxHeight, minHeight);
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}

class Header extends StatelessWidget {
  Header(
      this.headerText, {
        Key key,
      }) : super(key: key);

  GlobalKey globalKey = new GlobalKey();

  final String headerText;

  void collapsed() {
    Scrollable.ensureVisible(globalKey.currentContext);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: globalKey,
      onTap: collapsed,
      child: Container(
        color: Colors.lightBlue,
        child: Center(
          child: Text(headerText),
        ),
      ),
    );
  }
}

class CollapsingList extends StatelessWidget {
  SliverPersistentHeader makeHeader(String headerText) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _SliverAppBarDelegate(
          minHeight: 60.0, maxHeight: 200.0, child: Header(headerText)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        // Header('Header Section 1'),
        makeHeader('Header Section 1'),
        SliverGrid.count(
          crossAxisCount: 3,
          children: [
            Container(
                color: Colors.red,
                height: 150.0,
                child: Image.asset(
                  "assets/images/avatar1.jpg",
                  fit: BoxFit.cover,
                )),
            Container(
                color: Colors.purple,
                height: 150.0,
                child: Image.asset(
                  "assets/images/avatar2.jpg",
                  fit: BoxFit.cover,
                )),
            Container(
                color: Colors.green,
                height: 150.0,
                child: Image.asset(
                  "assets/images/avatar3.jpg",
                  fit: BoxFit.cover,
                )),
            Container(
                color: Colors.orange,
                height: 150.0,
                child: Image.asset(
                  "assets/images/avatar4.png",
                  fit: BoxFit.cover,
                )),
            Container(
                color: Colors.yellow,
                height: 150.0,
                child: Image.asset(
                  "assets/images/avatar5.png",
                  fit: BoxFit.cover,
                )),
            Container(
                color: Colors.pink,
                height: 150.0,
                child: Image.asset(
                  "assets/images/avatar6.png",
                  fit: BoxFit.cover,
                )),
            Container(
                color: Colors.cyan,
                height: 150.0,
                child: Image.asset(
                  "assets/images/avatar7.png",
                  fit: BoxFit.cover,
                )),
            Container(
                color: Colors.indigo,
                height: 150.0,
                child: Image.asset(
                  "assets/images/avatar8.jpg",
                  fit: BoxFit.cover,
                )),
            Container(
                color: Colors.blue,
                height: 150.0,
                child: Image.asset(
                  "assets/images/avatar9.jpg",
                  fit: BoxFit.cover,
                )),
          ],
        ),

        makeHeader('Header Section 2'),
        SliverFixedExtentList(
          itemExtent: 150.0,
          delegate: SliverChildListDelegate(
            [
              Container(color: Colors.red),
              Container(color: Colors.purple),
              Container(color: Colors.green),
              Container(color: Colors.orange),
              Container(color: Colors.yellow),
            ],
          ),
        ),

        makeHeader('Header Section 3'),
        SliverGrid(
          gridDelegate: new SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
          ),
          delegate: new SliverChildBuilderDelegate(
                (BuildContext context, int index) {
              return new Container(
                alignment: Alignment.center,
                color: Colors.teal[100 * (index % 9)],
                child: new Text('grid item $index'),
              );
            },
            childCount: 20,
          ),
        ),
        makeHeader('Header Section 4'),
        // Yes, this could also be a SliverFixedExtentList. Writing
        // this way just for an example of SliverList construction.
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Container(color: Colors.pink, height: 150.0),
              Container(color: Colors.cyan, height: 150.0),
              Container(color: Colors.indigo, height: 150.0),
              Container(color: Colors.blue, height: 150.0),
            ],
          ),
        ),
      ],
    );
  }
}