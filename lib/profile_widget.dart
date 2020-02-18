import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Container(
          width: 250,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  child: CircleAvatar(
                    child: Image(
                      image: NetworkImage(
                          'https://cdn3.iconfinder.com/data/icons/avatars-15/64/_Ninja-2-512.png'),
                    ),
                    maxRadius: 50,
                  ),
                  margin: EdgeInsets.only(bottom: 20)),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Icon(
                          Icons.phone,
                          color: Colors.teal,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Text('+55 048 9999-8888'),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                  child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(Icons.email, color: Colors.teal),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Text('name@email.com'),
                    ),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
