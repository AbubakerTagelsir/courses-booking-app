import 'package:courses_booking_app/components/logo.dart';
import 'package:courses_booking_app/screens/login.dart';
import 'package:courses_booking_app/utils/media.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class Register extends StatelessWidget {
  String _name;
  String _email;
  String _password;
  Register()
      : _name = '',
        _email = '',
        _password = '';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(left: 16, right: 16),
      child: Center(
        child: Column(children: <Widget>[
          OurLogo(),
          _getRegisterForm(context),
          ElevatedButton(
            child: Text('Sign Up'),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Homepage()));
            },
          ),
        ]),
      ),
    ));
  }

  Widget showFullNameInput() {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        500.0 * SizeConfig.blockSizeHorizontal,
        0.0,
        500.0 * SizeConfig.blockSizeHorizontal,
        50.0 * SizeConfig.blockSizeHorizontal,
      ),
      child: new TextFormField(
        onChanged: (value) {
          _name = value;
        },
        maxLines: 1,
        keyboardType: TextInputType.text,
        autofocus: false,
        decoration: new InputDecoration(
          errorText: null,
          hintText: 'Full Name',
          fillColor: Colors.white,
          border: OutlineInputBorder(borderSide: BorderSide()),
        ),
        validator: (value) =>
            value!.isEmpty ? 'Full name can\'t be empty' : null,
        onSaved: (value) => _name = value!.trim(),
      ),
    );
  }

  Widget showEmailInput() {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        500.0 * SizeConfig.blockSizeHorizontal,
        50.0 * SizeConfig.blockSizeVertical,
        500.0 * SizeConfig.blockSizeHorizontal,
        50.0 * SizeConfig.blockSizeVertical,
      ),
      child: new TextField(
        onChanged: (value) {
          _email = value;
        },
        maxLines: 1,
        keyboardType: TextInputType.emailAddress,
        autofocus: false,
        decoration: new InputDecoration(
          hintText: 'Email',
          fillColor: Colors.red,
          border: OutlineInputBorder(borderSide: BorderSide()),
        ),
      ),
    );
  }

  Widget showPasswordInput() {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        500.0 * SizeConfig.blockSizeHorizontal,
        50.0 * SizeConfig.blockSizeVertical,
        500.0 * SizeConfig.blockSizeHorizontal,
        50.0 * SizeConfig.blockSizeVertical,
      ),
      child: new TextField(
        onChanged: (value) {
          _password = value;
        },
        maxLines: 1,
        obscureText: true,
        autofocus: false,
        decoration: new InputDecoration(
          hintText: 'Password',
          border: OutlineInputBorder(borderSide: BorderSide()),
        ),
      ),
    );
  }

  Widget _haveAccount(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Already have an account?  "),
          InkWell(
            child: Text(
              "Sign in",
              style: TextStyle(color: Colors.red),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Login(),
                  ));
            },
            focusColor: Colors.blue,
          ),
        ],
      ),
    );
  }

  Widget _getRegisterForm(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 0 * SizeConfig.blockSizeVertical,
        bottom: 0 * SizeConfig.blockSizeVertical,
      ),
      child: Column(
        children: [
          showFullNameInput(),
          showEmailInput(),
          showPasswordInput(),
          _haveAccount(context)
          // submitButton(context),
        ],
      ),
    );
  }
}
