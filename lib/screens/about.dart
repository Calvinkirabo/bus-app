import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: use_key_in_widget_constructors
class About extends StatelessWidget {
  //const HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Get help'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 25, 78, 109),
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.only(top: 20),
              child: Text(
                "Reach us out through email or through our contact",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.phone),
                  onPressed: () async {
                    const String _url = 'tel:+256775064312';
                  },
                  color: Color.fromARGB(255, 25, 78, 109),
                ),
                Text(
                  "+256753834435",
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.mail),
                  onPressed: () {},
                  color: Color.fromARGB(255, 25, 78, 109),
                ),
                Text(
                  "nathanotim08@gmail.com",
                  style: TextStyle(fontSize: 20),
                )
              ],
            )
          ],
        ),
      );
}
