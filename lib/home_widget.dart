import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(width: 60, height: double.infinity),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Image(
                    image: AssetImage('assets/images/megumin.jpg'),
                    height: 300,
                    width: 200,
                  ),
                ),
                Container(
                  child: Text("Megumin"),
                ),
              ],
            ),
            Container(width: 60, height: double.infinity),
          ],
        ),
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}
