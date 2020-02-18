import 'package:flutter/material.dart';

class MyAccount extends StatefulWidget {
  MyAccount() : super();
  @override
  _MyAccount createState() => _MyAccount();
}

class _MyAccount extends State<MyAccount> {
  final _formKey = GlobalKey<FormState>();
  final surnameFocus = FocusNode();
  final emailFocus = FocusNode();
  final celFocus = FocusNode();
  final localFocus = FocusNode();
  void onSubmit() {
    final form = _formKey.currentState;
    if (form.validate()) {
      print('Form is valid');
    } else {
      print('form is invalid');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Name',
                labelStyle: TextStyle(color: Colors.teal[100]),
                icon: Icon(
                  Icons.person,
                  color: Colors.teal,
                ),
                fillColor: Colors.teal,
                enabledBorder: new OutlineInputBorder(
                  borderSide: new BorderSide(color: Colors.teal),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: new BorderSide(color: Colors.teal[700]),
                ),
              ),
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (value) {
                FocusScope.of(context).requestFocus(surnameFocus);
              },
              validator: (String value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Surname',
                labelStyle: TextStyle(color: Colors.teal[100]),
                icon: Icon(
                  Icons.person,
                  color: Colors.teal,
                ),
                fillColor: Colors.teal,
                enabledBorder: new OutlineInputBorder(
                  borderSide: new BorderSide(color: Colors.teal),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: new BorderSide(color: Colors.teal[700]),
                ),
              ),
              textInputAction: TextInputAction.next,
              focusNode: surnameFocus,
              onFieldSubmitted: (value) {
                FocusScope.of(context).requestFocus(emailFocus);
              },
              validator: (String value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(color: Colors.teal[100]),
                icon: Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                fillColor: Colors.teal,
                enabledBorder: new OutlineInputBorder(
                  borderSide: new BorderSide(color: Colors.teal),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: new BorderSide(color: Colors.teal[700]),
                ),
              ),
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              focusNode: emailFocus,
              onFieldSubmitted: (value) {
                FocusScope.of(context).requestFocus(celFocus);
              },
              validator: (String value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Celphone',
                labelStyle: TextStyle(color: Colors.teal[100]),
                icon: Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                fillColor: Colors.teal,
                enabledBorder: new OutlineInputBorder(
                  borderSide: new BorderSide(color: Colors.teal),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: new BorderSide(color: Colors.teal[700]),
                ),
              ),
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              focusNode: celFocus,
              onFieldSubmitted: (value) {
                FocusScope.of(context).requestFocus(localFocus);
              },
              validator: (String value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Address',
                labelStyle: TextStyle(color: Colors.teal[100]),
                icon: Icon(
                  Icons.location_on,
                  color: Colors.teal,
                ),
                fillColor: Colors.teal,
                enabledBorder: new OutlineInputBorder(
                  borderSide: new BorderSide(color: Colors.teal),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: new BorderSide(color: Colors.teal[700]),
                ),
              ),
              textInputAction: TextInputAction.done,
              focusNode: localFocus,
              validator: (String value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 200,
              child: RaisedButton(
                color: Colors.teal,
                textColor: Colors.white,
                onPressed: onSubmit,
                child: Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
