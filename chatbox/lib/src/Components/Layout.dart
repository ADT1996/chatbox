import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

Widget GenerateLayout(BuildContext context, {String title, Widget child}) =>
    GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  title != null ? title : '',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              )
            ],
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: child,
          ),
        )
      ),
    );
