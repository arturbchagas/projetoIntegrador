import 'package:flutter/material.dart';
import 'package:ijato/app/shared/app_routes.dart';

import 'package:ijato/app/controllers/user_controller.dart';

import 'package:ijato/app/widgets/background_image.dart';
import 'package:ijato/app/widgets/logo.dart';
import 'package:ijato/app/widgets/text_field.dart';
import 'package:ijato/app/widgets/underlined_text.dart';
import 'package:ijato/app/widgets/check_box.dart';
import 'package:ijato/app/widgets/button_primary.dart';

import 'package:flutter/cupertino.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = UserController();

  void _setMessage() {
    setState(() {
      controller.message;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundImage(),
          SafeArea(
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const LogoImage(),
                    const SizedBox(height: 50),
                    Text(
                      controller.message,
                      style: const TextStyle(color: Colors.red, fontSize: 16),
                    ),
                    const SizedBox(height: 15),
                    TextFieldPrimary(
                      textFieldName: "e-mail",
                      onChanged: null,
                      controller: controller.emailInput,
                    ),
                    const SizedBox(height: 20),
                    TextFieldPrimary(
                      textFieldName: "senha",
                      onChanged: null,
                      controller: controller.passwordInput,
                      obscureText: true,
                    ),
                    const SizedBox(height: 20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CheckBox(),
                        Text(
                          "Lembrar de mim",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const UnderlinedText(
                          underlinedText: "Esqueci minha senha",
                        ),
                        UnderlinedText(
                          underlinedText: "Cadastrar-se",
                          onPressed: () {
                            controller.resetsAllFields();
                            Navigator.pushNamed(context, AppRoutes.userType);
                          },
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    ButtonPrimary(
                      color: Colors.blue,
                      buttonPrimaryName: "Entrar",
                      onPressed: () {
                        _setMessage();
                        controller.tryToLogin(context);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
