import 'package:courses_booking_app/components/logo.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 500,
        color: Colors.purple,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              OurLogo(),
              ElevatedButton(
                onPressed: () {},
                child: Text("Login"),
              )
            ]),
      ),
    );
  }
}
