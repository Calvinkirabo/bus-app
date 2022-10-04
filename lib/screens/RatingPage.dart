import 'package:flutter/material.dart';
import 'package:bus_application/Widgets/HomeWidget.dart';
import '../Constants.dart';

class RatingPage extends StatefulWidget {
  RatingPage({Key? key}) : super(key: key);
  @override
  _RatingPageState createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BUS APP",
          style: kAppBar,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.info_outline,
              color: Colors.white,
            ),
            onPressed: () {
              print("ABOUT DEVELOPER PAGE PRESSED");
            },
          ),
        ],
      ),
      body: HomeWidget(),
    );
  }
}
