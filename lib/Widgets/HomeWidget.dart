import 'package:flutter/material.dart';
import 'package:bus_application/Constants.dart';
import 'package:bus_application/Widgets/ClientDetailWidget.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  var _position = Alignment.bottomCenter;
  var _opacityOfText = 0.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            child: Center(
              child: Text(
                "PRACTICE SOCIAL DISTANCING",
                style: kAlertBar,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.redAccent,
            ),
          ),
        ),
        Expanded(
          flex: 17,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 5,
                child: ClientDetails(),
              ),
              Expanded(
                flex: 1,
                child: AnimatedContainer(
                    duration: Duration(seconds: 3),
                    alignment: _position,
                    child: AnimatedOpacity(
                      duration: Duration(seconds: 5),
                      opacity: _opacityOfText,
                      child: Text(
                        "THANK YOU",
                        style: kThankYou,
                      ),
                    )),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: GestureDetector(
            onTap: () {
              print("SUBMIT TAPPED");
              setState(() {
                _position = Alignment.topCenter;
                _opacityOfText = _opacityOfText == 0.0 ? 1.0 : 0.0;
              });
            },
            child: Container(
              child: Center(
                child: Text(
                  "SUBMIT",
                  style: kSubmitText,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
