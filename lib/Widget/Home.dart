import 'package:flutter/material.dart';
import './CustomShapeClipper.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
          home: Scaffold(
              body: Column(
                children: <Widget>[
                  HomeScreenTopPart(),
                ],
              ),
          ),
    );
  }
}
class HomeScreenTopPart extends StatefulWidget {
  @override
  _HomeScreenTopPartState createState() => _HomeScreenTopPartState();
}

class _HomeScreenTopPartState extends State<HomeScreenTopPart> {
  @override
  Widget build(BuildContext context) {
    return Stack(
          children: <Widget>[
            ClipPath(clipper: CustomShapeClipper(),
                          child: Container(
                height: 270.0,
                color: Colors.cyan[300],
              ),
            )
          ],
    );
  }
}


