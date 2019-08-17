import 'dart:convert';

import 'package:chatbox/src/Model/User.dart';
import 'package:http/http.dart' as http;
import './ServiceBase.dart';

const String EMAIL_STRING = 'email';
const String PASSWORD_STRING = 'password';
const String PHONE_STRING = 'phone';
const String ADDRESS_STRING = 'address';
const String BIRTHDAY_STRING = 'birthday';

Future<User> login(String email, String password) async {

  print('$email - $password');
  print('$BASE_URL/nonuser/login');

  final response = await http.post('$BASE_URL/nonuser/login',
    body: {
      EMAIL_STRING: email,
      PASSWORD_STRING: password
    }
  );

  if(response.statusCode == 200) {
    var value = json.decode(response.body);
    if(value == null)
      return null;
    return User(
      email: value[EMAIL_STRING],
      password: value[PASSWORD_STRING],
      phone: value[PHONE_STRING],
      birthday: value[BIRTHDAY_STRING],
      address: value[ADDRESS_STRING],
      token: value['token']
    );
  }
  return null;
}

Future<User> signUp(String email, String password, String phone, String address, String birthday) async {

  final response = await http.post(BASE_URL + 'nonuser/signup',
    body: {
      EMAIL_STRING: email,
      PASSWORD_STRING: password,
      PHONE_STRING: phone,
      ADDRESS_STRING: address,
      BIRTHDAY_STRING: birthday
    }
  );

  if(response.statusCode == 200) {
    dynamic value = json.decode(response.body);

    if(value == null)
      return null;

      return User(
        email: value[EMAIL_STRING],
        password: value[PASSWORD_STRING],
        phone: value[PHONE_STRING],
        address: value[ADDRESS_STRING],
        birthday: value[BIRTHDAY_STRING].toString(),
        token: value['token'],
      );
  }
}