import 'package:flutter/material.dart';
import 'package:routefly/routefly.dart';

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
                    const SizedBox(height: 15),
                    TextFieldPrimary(
                      textFieldName: "nome completo",
                      onChanged: (value) => {},
                    ),
                    const SizedBox(height: 15),
                    TextFieldPrimary(
                      textFieldName: "e-mail",
                      onChanged: (value) => {},
                    ),
                    const SizedBox(height: 15),
                    TextFieldPrimary(
                      textFieldName: "telefone",
                      onChanged: (value) => {},
                    ),
                    const SizedBox(height: 15),
                    TextFieldPrimary(
                      textFieldName: "senha",
                      onChanged: (value) => {},
                    ),
                    const SizedBox(height: 15),
                    TextFieldPrimary(
                      textFieldName: "confirmar senha",
                      onChanged: (value) => {},
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
                      onPressed: () {},
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
                              Routefly.navigate('/login');
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
