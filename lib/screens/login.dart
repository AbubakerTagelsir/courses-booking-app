import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Center(
        child: new MaterialButton(
          child: new Text('Login'),
          onPressed: () {
            print('Login pressed');
          },
        ),
      ),
    );
  }
}
