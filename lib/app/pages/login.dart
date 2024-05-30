import 'package:flutter/material.dart';
import 'package:ijato/app/shared/app_routes.dart';

import 'package:ijato/app/controllers/user_controller.dart';

import 'package:ijato/app/widgets/background_image.dart';
import 'package:ijato/app/widgets/logo.dart';
import 'package:ijato/app/widgets/text_field.dart';
import 'package:ijato/app/widgets/underlined_text.dart';
import 'package:ijato/app/widgets/check_box.dart';
import 'package:ijato/app/widgets/button_primary.dart';

import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final userController = Provider.of<UserController>(context);

    void setMessage() {
      setState(() {
        userController.error;
      });
    }

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
                    const SizedBox(height: 50),
                    const LogoImage(),
                    const SizedBox(height: 30),
                    Text(
                      userController.error,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 255, 17, 0), fontSize: 16),
                    ),
                    const SizedBox(height: 15),
                    TextFieldPrimary(
                      textFieldName: "e-mail",
                      onChanged: null,
                      controller: userController.emailInput,
                    ),
                    const SizedBox(height: 20),
                    TextFieldPrimary(
                      textFieldName: "senha",
                      onChanged: null,
                      controller: userController.passwordInput,
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
                            userController.resetsAllFields();
                            Navigator.pushReplacementNamed(
                                context, AppRoutes.userType);
                          },
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    ButtonPrimary(
                      color: Colors.blue,
                      buttonPrimaryName: "Entrar",
                      onPressed: () {
                        setMessage();
                        userController.tryToLogin(context);
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
