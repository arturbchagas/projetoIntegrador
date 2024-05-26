import 'package:flutter/material.dart';

class HomeEstablishment extends StatelessWidget {
  const HomeEstablishment({super.key});

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
                      SizedBox(height: 30),
                      Text(
                        "essa tela é de Empresa:",
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
