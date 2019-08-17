import 'package:chatbox/src/Model/User.dart';
import 'package:flutter/widgets.dart';
import 'package:chatbox/src/Navigation/StringName.dart';
import 'package:chatbox/src/screens/LoginScreen/index.dart';
import 'package:chatbox/src/Service/Non-User.dart' as Service;

class Controller {
  int counter = 0;

  Key emailInput = Key('emailInput');

  String email = '';
  String password = '';

  BuildContext _context;

  ScreenLoginState _screen;

  Controller(ScreenLoginState screen, BuildContext context) {
    _screen = screen;
    _context = context;
  }

  void onChangedEmail(String _email) {
    email = _email;
  }

  void onChangedPassword(String _password) {
    password = _password;
  }

  VoidCallback login(BuildContext context) {
    return () async {
      User user = await Service.login(email, password);

      if(user == null) {
        print('login fail');
        return;
      }
      print('login success');
    };
  }

  VoidCallback signUp(BuildContext context) {
    return () {
      Navigator.pushNamed(context, REGISTRYSCREEN);
    };
  }
}
