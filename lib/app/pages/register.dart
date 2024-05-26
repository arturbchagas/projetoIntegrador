import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:ijato/app/shared/app_routes.dart';
import 'package:ijato/app/controllers/user_controller.dart';

import 'package:ijato/app/widgets/background_image.dart';
import 'package:ijato/app/widgets/logo.dart';
import 'package:ijato/app/widgets/text_field.dart';
import 'package:ijato/app/widgets/check_box.dart';
import 'package:ijato/app/widgets/underlined_text.dart';
import 'package:ijato/app/widgets/button_primary.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                  children: [
                    const SizedBox(height: 50),
                    const LogoImage(),
                    const SizedBox(height: 15),
                    Text(
                      userController.error,
                      style: const TextStyle(color: Colors.red, fontSize: 16),
                    ),
                    const SizedBox(height: 15),
                    TextFieldPrimary(
                      textFieldName: "nome completo",
                      onChanged: (value) => {},
                      controller: userController.nameInput,
                    ),
                    const SizedBox(height: 15),
                    TextFieldPrimary(
                      textFieldName: "e-mail",
                      onChanged: (value) => {},
                      controller: userController.emailInput,
                    ),
                    const SizedBox(height: 15),
                    TextFieldPrimary(
                      textFieldName: "telefone",
                      onChanged: (value) => {},
                      controller: userController.phoneInput,
                    ),
                    const SizedBox(height: 15),
                    TextFieldPrimary(
                      textFieldName: "senha",
                      onChanged: (value) => {},
                      controller: userController.passwordInput,
                    ),
                    const SizedBox(height: 15),
                    TextFieldPrimary(
                      textFieldName: "confirmar senha",
                      onChanged: (value) => {},
                      controller: userController.confirmPassInput,
                    ),
                    const SizedBox(height: 5),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CheckBox(),
                        UnderlinedText(
                          underlinedText: "Li e aceito os termos",
                        )
                      ],
                    ),
                    const SizedBox(height: 5),
                    ButtonPrimary(
                      color: Colors.blue,
                      buttonPrimaryName: "cadastrar-se",
                      onPressed: () {
                        setMessage();
                        userController.register(context);
                      },
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "ja possui um",
                          style: TextStyle(color: Colors.white70),
                        ),
                        UnderlinedText(
                            underlinedText: "login?",
                            onPressed: () {
                              userController.resetsAllFields();
                              Navigator.pushNamed(context, AppRoutes.index);
                            })
                      ],
                    )
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
