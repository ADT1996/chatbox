import 'package:flutter/material.dart';
import 'package:chatbox/src/Service/Non-User.dart' as Service;
import 'package:chatbox/src/Model/User.dart';
import './index.dart';

class Controller {

  RegistryState _screen;
  BuildContext _context;

  String email;
  String password;
  String phone;
  String birthday;
  String address;

  Controller(RegistryState screen, BuildContext context) {
    this._screen = screen;
    this._context = context;
  }

  void onchangedEmail(String _email) {
    email = _email;
  }

  void onChangedPassword(String _password) {
    password = _password;
  }

  void onChangedPhone(String _phone) {
    phone = _phone;
  }

  void onChangedBirthday(String _birthday) {
    birthday = _birthday;
  }

  void onChangedAddress(String _address) {
    address = _address;
  }

  VoidCallback signUp(context) {
    return () {
      Service.signUp(email, password, phone, address, birthday).then((User user) {
      print(user.email);
      print(user.password);
      print(user.address);
      print(user.birthday);
      print(user.phone);
      print(user.token);
      });
    };
  }
}