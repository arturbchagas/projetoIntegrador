/* define um widget EstablishmentReg que representa a tela de registro de estabelecimento */
import 'package:flutter/material.dart';

import 'package:ijato/app/controllers/user_controller.dart';

import 'package:ijato/app/shared/app_routes.dart';

import 'package:ijato/app/widgets/background_image.dart';
import 'package:ijato/app/widgets/button_primary.dart';
import 'package:ijato/app/widgets/check_box.dart';
import 'package:ijato/app/widgets/logo.dart';
import 'package:ijato/app/widgets/text_field.dart';
import 'package:ijato/app/widgets/underlined_text.dart';

class EstablishmentReg extends StatefulWidget {
  const EstablishmentReg({super.key});

  @override
  State<EstablishmentReg> createState() => _EstablishmentRegState();
}

class _EstablishmentRegState extends State<EstablishmentReg> {
  final controller = UserController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

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
                    const SizedBox(height: 40),
                    const LogoImage(),
                    const SizedBox(height: 15),
                    const TextFieldPrimary(textFieldName: "nome completo"),
                    const SizedBox(height: 15),
                    const TextFieldPrimary(textFieldName: "e-mail"),
                    const SizedBox(height: 15),
                    const TextFieldPrimary(textFieldName: "telefone"),
                    const SizedBox(height: 15),
                    const TextFieldPrimary(textFieldName: "senha"),
                    const SizedBox(height: 15),
                    const TextFieldPrimary(textFieldName: "confirmar senha"),
                    const SizedBox(height: 15),
                    const Text(
                      "Estabelecimento",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 15),
                    const TextFieldPrimary(textFieldName: "CEP"),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: size.width / 1.5,
                          child: const TextFieldPrimary(textFieldName: "rua"),
                        ),
                        SizedBox(
                          width: size.width / 5,
                          child: const TextFieldPrimary(textFieldName: "N°"),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    const TextFieldPrimary(textFieldName: "nome"),
                    const SizedBox(height: 15),
                    const TextFieldPrimary(textFieldName: "CPF/CNPJ"),
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
                    const ButtonPrimary(
                      color: Colors.blue,
                      buttonPrimaryName: "cadastrar",
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
                            controller.resetsAllFields();
                            Navigator.pushNamed(context, AppRoutes.index);
                          },
                        )
                      ],
                    ),
                    const SizedBox(height: 15),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
