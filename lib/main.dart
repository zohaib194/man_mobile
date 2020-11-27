import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log in'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent[400],
      ),
      body: SingleChildScrollView(
        child: ValidationLogIn(),
      ),
    );
  }
}

class ValidationLogIn extends StatefulWidget {
  @override
  _ValidationLogInState createState() => _ValidationLogInState();
}

class _ValidationLogInState extends State<ValidationLogIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: formUI(),
    );
  }
}

Widget formUI() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          icon: Icon(Icons.alternate_email),
          hintText: 'example@hotmail.com',
          labelText: 'Email',
        ),
      ),
      TextFormField(
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: InputDecoration(
          icon: Icon(Icons.lock_open),
          hintText: 'Enter your password',
          labelText: 'Password',
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: RaisedButton(
          onPressed: () {
            // add submit logic
          },
          child: Text(
            'Submit',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          color: Colors.blueAccent[400],
        ),
      ),
    ],
  );
}
