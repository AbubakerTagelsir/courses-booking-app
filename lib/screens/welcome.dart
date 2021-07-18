import 'package:courses_booking_app/components/logo.dart';
import 'package:flutter/material.dart';

import 'register.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 500,
        color: Colors.white,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              OurLogo(),
              ElevatedButton(
                onPressed: () {},
                child: Text("Login"),
              ),
              InkWell(
                child: Text("Welcome to the courses booking app"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => Register()),
                  );
                },
                highlightColor: Colors.blue,
              ),
            ]),
      ),
    );
  }
}
