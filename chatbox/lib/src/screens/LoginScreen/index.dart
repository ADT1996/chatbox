import 'package:flutter/material.dart';
import 'package:chatbox/src/Components/Component.dart';

import 'package:chatbox/src/screens/LoginScreen/controller.dart';
import 'package:chatbox/src/screens/LoginScreen/String.dart';


class ScreenLogin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ScreenLoginState();
}

class ScreenLoginState extends State<ScreenLogin> {

  Controller _controller;

  ScreenLoginState() : super() {
    _controller = Controller(this, context);
  }

  List<Widget> _buildTextInputs(BuildContext context) => <Widget>[
    TextInput(
       key: _controller.emailInput,
       color: Colors.blue,
       colorBorder: Colors.blue,
       prefixIcon: Icons.alternate_email,
       labelText: STRING.mailLabel,
       verticalPadding: 5,
       keyboardType: TextInputType.emailAddress,
       text: _controller.email,
       onChanged: _controller.onChangedEmail,
       textInputAction: TextInputAction.done,
      ),
      TextInput(
        color: Colors.blue,
        colorBorder: Colors.blue,
        prefixIcon: Icons.security,
        labelText: STRING.passwordLabel,
        verticalPadding: 5,
        obscureText: true,
        text: _controller.password,
        onChanged: _controller.onChangedPassword,
        textInputAction: TextInputAction.done,
      ),
  ];

  Widget _buildButtons(BuildContext context) => Padding(
    padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Button(
          color: Colors.teal,
          horizontalPadding: 5,
          text: STRING.signUpString,
          prefixIcon: Icons.person_add,
          onPressed: _controller.signUp(context),
        ),
        Button(
          color: Colors.blue,
          horizontalPadding: 5,
          text: STRING.loginString,
          prefixIcon: Icons.input,
          onPressed: _controller.login(context),
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return GenerateLayout(context,
      title: STRING.loginString,
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ..._buildTextInputs(context),
              _buildButtons(context)
            ],
          ),
        ),
      )
    );
  }
}