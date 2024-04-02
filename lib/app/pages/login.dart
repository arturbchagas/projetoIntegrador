import 'package:flutter/material.dart';

import 'package:ijato/app/widgets/background_image.dart';
import 'package:ijato/app/widgets/logo.dart';
import 'package:ijato/app/widgets/text_field.dart';
import 'package:ijato/app/widgets/underlined_text.dart';
import 'package:ijato/app/widgets/check_box.dart';
import 'package:ijato/app/widgets/button_primary.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundImage(),
          SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const LogoImage(),
                  const SizedBox(height: 50),
                  const SizedBox(height: 15),
                  const TextFieldPrimary(
                    textFieldName: "e-mail",
                    onChanged: null,
                  ),
                  const SizedBox(height: 20),
                  const TextFieldPrimary(
                    textFieldName: "senha",
                    onChanged: null,
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
                        onPressed: () {},
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  ButtonPrimary(
                    color: Colors.blue,
                    buttonPrimaryName: "Entrar",
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
