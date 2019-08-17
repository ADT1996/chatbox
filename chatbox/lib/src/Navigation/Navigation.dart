import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../screens/LoginScreen/index.dart';
import '../screens//RegistryScreen/index.dart';
import './StringName.dart';

Map<String, WidgetBuilder> initRoute() => 
  <String, WidgetBuilder> {
    LOGINSCREEN: (BuildContext  context) => ScreenLogin(),
    REGISTRYSCREEN: (BuildContext context) => RegistryScreen()
  };