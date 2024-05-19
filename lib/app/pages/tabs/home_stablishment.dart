import 'package:flutter/material.dart';
import 'package:ijato/app/shared/app_routes.dart';

import 'package:ijato/app/widgets/appbar_home.dart';
import 'package:ijato/app/widgets/avatar.dart';
import 'package:ijato/app/widgets/logo.dart';
import 'package:ijato/app/widgets/pages_card.dart';

class HomeStablishment extends StatelessWidget {
  const HomeStablishment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SizedBox(height: 175, child: AppbarHome()),
          SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 100, height: 100, child: LogoImage()),
                      SizedBox(width: 100, height: 100, child: AvatarImage())
                    ],
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: [
                      const SizedBox(height: 30),
                      const Text(
                        "Meu estabelecimento:",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 15),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            PageCard(
                              icon: Icons.shopping_cart,
                              label: "Pedidos",
                              backgroundColor: const Color.fromARGB(255, 13, 26, 196),
                              onTap: () {
                                Navigator.pushNamed(context, AppRoutes.requestsStablishment);
                              },
                            ),
                            const SizedBox(width: 6),
                            PageCard(
                              icon: Icons.monetization_on,
                              label: "Finanças",
                              backgroundColor: Colors.green,
                              onTap: () {
                                Navigator.pushNamed(
                                    context, AppRoutes.financesStablishment);
                              },
                            ),
                            const SizedBox(width: 6),
                            PageCard(
                              icon: Icons.settings,
                              label: "Serviços",
                              backgroundColor: Colors.orange,
                              onTap: () {
                                Navigator.pushNamed(
                                    context, AppRoutes.servicesStablishment);
                              },
                            ),
                            const SizedBox(width: 6),
                          ],
                        ),
                      ),
                    ],
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
