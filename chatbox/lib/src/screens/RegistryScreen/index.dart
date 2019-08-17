import 'dart:io';

import 'package:flutter/material.dart';
import 'package:chatbox/src/Components/Component.dart';
import './String.dart';
import './controller.dart';

class RegistryScreen extends StatefulWidget {
  RegistryScreen({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => RegistryState();
}

class RegistryState extends State<RegistryScreen> {

  Controller _controller;

  RegistryState() : super() {
    _controller = Controller(this, context);
  }

  Widget _buildButton() => Button(
    color: Colors.teal,
    prefixIcon: Icons.person_add,
    text: STRING.title,
    onPressed: _controller.signUp(context),
  );

  List<Widget> _buildTextInputs() => <Widget>[
    TextInput(
                enabled: true,
                verticalPadding: 5,
                color: Colors.blue,
                colorBorder: Colors.blue,
                prefixIcon: Icons.alternate_email,
                keyboardType: TextInputType.emailAddress,
                labelText: STRING.emailString,
                onChanged: _controller.onchangedEmail,
                text: _controller.email,
              ),
              TextInput(
                enabled: true,
                obscureText: true,
                verticalPadding: 5,
                color: Colors.blue,
                colorBorder: Colors.blue,
                prefixIcon: Icons.security,
                keyboardType: TextInputType.text,
                labelText: STRING.passwordString,
                onChanged: _controller.onChangedPassword,
                text: _controller.password,
              ),
              TextInput(
                enabled: true,
                verticalPadding: 5,
                maxLength: 10,
                color: Colors.blue,
                colorBorder: Colors.blue,
                prefixIcon: Icons.calendar_today,
                keyboardType: TextInputType.datetime,
                labelText: STRING.birthdayString,
                onChanged: _controller.onChangedBirthday,
                text: _controller.birthday
              ),
              TextInput(
                enabled: true,
                verticalPadding: 5,
                color: Colors.blue,
                colorBorder: Colors.blue,
                prefixIcon: Platform.isIOS ? Icons.phone_iphone : Icons.phone_android,
                keyboardType: TextInputType.phone,
                labelText: STRING.phoneString,
                onChanged: _controller.onChangedPhone,
                text: _controller.phone
              ),
              TextInput(
                enabled: true,
                verticalPadding: 5,
                color: Colors.blue,
                colorBorder: Colors.blue,
                prefixIcon: Icons.home,
                keyboardType: TextInputType.text,
                labelText: STRING.addressString,
                onChanged: _controller.onChangedAddress,
                text: _controller.address,
              ),
  ];

  @override
  Widget build(BuildContext context) => GenerateLayout(context,
    title: STRING.title,
    child: Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ..._buildTextInputs(),
              _buildButton()
            ],
          ),
        ),
        )
    );
}
