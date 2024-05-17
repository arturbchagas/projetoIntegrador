import 'package:flutter/material.dart';
import 'package:ijato/app/models/user.dart';
import 'package:ijato/app/mock/users.dart';
import 'package:ijato/app/shared/app_routes.dart';

class UserController with ChangeNotifier {
  TextEditingController nameInput = TextEditingController();
  TextEditingController emailInput = TextEditingController();
  TextEditingController phoneInput = TextEditingController();
  TextEditingController passwordInput = TextEditingController();
  TextEditingController confirmPassInput = TextEditingController();

  var message = '';
  String error = '';

  void tryToLogin(BuildContext context) async {
    try {
      if (emailInput.text == "" || passwordInput.text == "") {
        message = 'preencha todos os campos';
        throw ('preencha todos os campos');
      }

      try {
        final user = UserMock.listUsers.firstWhere(
          (element) => element.email == emailInput.text,
          orElse: () {
            throw ('Usuário ou senha inválido!');
          },
        );

        if (user.pass != passwordInput.text) {
          throw ('Usuário ou senha inválido!');
        }

        login(context, user);
      } catch (err) {
        error = err.toString();
        notifyListeners();
      }
    } catch (e) {
      rethrow;
    }
  }

  void register(BuildContext context) async {
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
          phoneInput.text, passwordInput.text, UserType.user);

      UserMock.listUsers.add(newUser);

      resetsAllFields();

      Navigator.pushNamed(context, AppRoutes.homeUser);
    } catch (e) {
      rethrow;
    }
  }

  void login(BuildContext context, User user) {
    resetsAllFields();
    if (user.type == UserType.user) {
      Navigator.pushReplacementNamed(context, AppRoutes.homeUser);
    } else if (user.type == UserType.company) {
      Navigator.pushReplacementNamed(
          context, AppRoutes.appNavigationStablishment);
    } else {
      error = 'Credenciais inválidas';
      notifyListeners();
    }
  }

  void resetsAllFields() {
    message = "";
    nameInput.text = "";
    emailInput.text = "";
    phoneInput.text = "";
    passwordInput.text = "";
    confirmPassInput.text = "";
    error = "";
  }
}
