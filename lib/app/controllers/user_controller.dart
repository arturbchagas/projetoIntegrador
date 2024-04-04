import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:routefly/routefly.dart';

import 'package:ijato/app/models/user.dart';
import 'package:ijato/app/mock/users.dart';

class UserController extends GetxController {
  TextEditingController nameInput = TextEditingController();
  TextEditingController emailInput = TextEditingController();
  TextEditingController phoneInput = TextEditingController();
  TextEditingController passwordInput = TextEditingController();
  TextEditingController confirmPassInput = TextEditingController();

  var message = '';

  void tryToLogin() async {
    try {
      if (emailInput.text == "" || passwordInput.text == "") {
        message = 'preencha todos os campos';
        throw ('preencha todos os campos');
      }

      final user = UserMock.list.firstWhere(
        (element) => element.email == emailInput.text,
        orElse: () {
          message = 'Email ou senha incorreto!';
          throw ('Email ou senha incorreto!');
        },
      );

      if (user.pass != passwordInput.text) {
        message = 'Email ou senha incorreto!';
        throw ('Email ou senha incorreto!');
      }

      login();
    } catch (e) {
      rethrow;
    }
  }

  void register() async {
    try {
      if (nameInput.text == "" ||
          emailInput.text == "" ||
          phoneInput.text == "" ||
          passwordInput.text == "") {
        message = 'preencha todos os campos';
        throw ('preencha todos os campos');
      }
      if (confirmPassInput.text != passwordInput.text) {
        message = 'As senhas nao sao iguais';
        throw ('As senhas nao sao iguais');
      }

      final newUser = User("3", nameInput.text, emailInput.text,
          phoneInput.text, passwordInput.text);

      UserMock.list.add(newUser);

      resetsAllFields();

      Routefly.navigate('/home-user');
    } catch (e) {
      rethrow;
    }
  }

  void login() {
    resetsAllFields();
    Routefly.navigate('/home-user');
  }

  void resetsAllFields() {
    message = "";
    nameInput.text = "";
    emailInput.text = "";
    phoneInput.text = "";
    passwordInput.text = "";
    confirmPassInput.text = "";
  }
}
