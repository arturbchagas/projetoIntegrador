import 'package:flutter/material.dart';

class FinancesEstablishment extends StatelessWidget {
  const FinancesEstablishment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: const Column(
                children: [
                  Column(
                    children: [
                      Text(
                        "essa tela é de Finanças Estabelecimento:",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
