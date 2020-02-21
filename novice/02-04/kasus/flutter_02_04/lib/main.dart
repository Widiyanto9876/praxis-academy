import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          SizedBox(
            height: 200,
            width: double.infinity,
            child: Carousel(
              images: [
                NetworkImage(
                    'https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
                NetworkImage(
                    'https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
                NetworkImage(
                    'https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
                NetworkImage(
                    'https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
              ],
              dotSize: 8.0,
              dotSpacing: 10.0,
              overlayShadow: true,
              dotHorizontalPadding: 0,
              indicatorBgPadding: 16.0,
              dotBgColor: Colors.transparent,
              overlayShadowSize: 100,
            ),
          )
        ],
      )
    );
  }
}
//
//class PhotoHero extends StatelessWidget {
//
//  final String photo;
//  final VoidCallback onTap;
//  final double width;
//
//  const PhotoHero({Key key, this.photo, this.onTap, this.width}) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    return SizedBox(
//      width: width,
//      child: Hero(
//        tag: photo,
//        child: Material(
//          color: Colors.transparent,
//          child: InkWell(
//            onTap: onTap,
//            child: Image.asset(
//              photo,
//              fit: BoxFit.contain,
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//}
//
//class HeroAnimation extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//
//    timeDilation = 5.0;
//
//    return Scaffold(
//      appBar: AppBar(
//        title: const Text('Basic Hero Animation'),
//      ),
//      body: Center(
//        child: PhotoHero(
//          photo: 'images/flippers-alpha.png',
//          width: 300.0,
//          onTap: () {
//            Navigator.of(context).push(MaterialPageRoute<void>(
//                builder: (BuildContext context) {
//                  return Scaffold(
//                    appBar: AppBar(
//                      title: const Text('Flippers Page'),
//                    ),
//                    body: Container(
//                      // The blue background emphasizes that it's a new route.
//                      color: Colors.lightBlueAccent,
//                      padding: const EdgeInsets.all(16.0),
//                      alignment: Alignment.topLeft,
//                      child: PhotoHero(
//                        photo: 'images/flippers-alpha.png',
//                        width: 100.0,
//                        onTap: () {
//                          Navigator.of(context).pop();
//                        },
//                      ),
//                    ),
//                  );
//                }
//            ));
//          },
//        ),
//      ),
//    );
//  }
//}


