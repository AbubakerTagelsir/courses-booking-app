import 'package:courses_booking_app/screens/home.dart';
import 'package:courses_booking_app/utils/media.dart';
import 'package:flutter/material.dart';
import 'package:courses_booking_app/components/logo.dart';

class Login extends StatelessWidget {
  String _email;
  String _password;
  Login()
      : _email = '',
        _password = '';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [
              OurLogo(),
              _getLoginForm(context),
              _forgetPassword(context),
              Container(
                width: SizeConfig.screenWidth * .8,
                height: SizeConfig.screenHeight * .07,
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                  child: Text('Login'),
                  onPressed: () {
                    print('Login pressed');
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Homepage()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget _getLoginForm() {
  //   return Column(children: [
  //     // Text('Login'),
  //     Text('Username'),
  //     TextField(),
  //     Text('Password'),
  //     TextField(),
  //   ]);
  // }
  Widget _forgetPassword(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {},
        child: Text(
          "Forget Password ?",
          style: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
    );
  }

  Widget showEmailInput() {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        500.0 * SizeConfig.blockSizeHorizontal,
        50.0 * SizeConfig.blockSizeVertical,
        500.0 * SizeConfig.blockSizeHorizontal,
        150.0 * SizeConfig.blockSizeVertical,
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
        100.0 * SizeConfig.blockSizeVertical,
        500.0 * SizeConfig.blockSizeHorizontal,
        200.0 * SizeConfig.blockSizeVertical,
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

  Widget _getLoginForm(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 0 * SizeConfig.blockSizeVertical,
        bottom: 200 * SizeConfig.blockSizeVertical,
      ),
      child: Column(
        children: [
          showEmailInput(),
          showPasswordInput(),
          // submitButton(context),
        ],
      ),
    );
  }
}
