import 'package:flutter/material.dart';
import 'package:ijato/app/shared/navigation_provider.dart';
import 'package:ijato/app/widgets/appbar_home.dart';
import 'package:ijato/app/widgets/avatar.dart';
import 'package:ijato/app/widgets/logo.dart';
import 'package:ijato/app/widgets/pages_card.dart';
import 'package:provider/provider.dart';

class HomeStablishment extends StatelessWidget {
  const HomeStablishment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SizedBox(height: 125, child: AppbarHome()),
          SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 100, height: 100, child: LogoImage()),
                      SizedBox(width: 100, height: 100, child: AvatarImage()),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        const Text(
                          "Meu estabelecimento:",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Popins'),
                        ),
                        const SizedBox(height: 5),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              const SizedBox(width: 6),
                              PageCard(
                                icon: Icons.shopping_cart,
                                label: "Pedidos",
                                backgroundColor:
                                    const Color.fromARGB(255, 13, 26, 196),
                                onTap: () {
                                  Provider.of<NavigationProvider>(context,
                                          listen: false)
                                      .changePage(4);
                                },
                              ),
                              const SizedBox(width: 6),
                              PageCard(
                                icon: Icons.calendar_month_outlined,
                                label: "Agendamento",
                                backgroundColor:
                                    const Color.fromARGB(255, 172, 39, 22),
                                onTap: () {
                                  Provider.of<NavigationProvider>(context,
                                          listen: false)
                                      .changePage(1);
                                },
                              ),
                              const SizedBox(width: 6),
                              PageCard(
                                icon: Icons.monetization_on,
                                label: "Finanças",
                                backgroundColor: Colors.green,
                                onTap: () {
                                  Provider.of<NavigationProvider>(context,
                                          listen: false)
                                      .changePage(3);
                                },
                              ),
                              const SizedBox(width: 6),
                              PageCard(
                                icon: Icons.settings,
                                label: "Serviços",
                                backgroundColor: Colors.orange,
                                onTap: () {
                                  Provider.of<NavigationProvider>(context,
                                          listen: false)
                                      .changePage(2);
                                },
                              ),
                              const SizedBox(width: 6),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        const Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(
                                  left:
                                      10.0), // Ajuste o valor conforme necessário
                              child: Text(
                                "Serviços finalizados recentemente:",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        const Flexible(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: SafeArea(
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: 500,
                                    height: 80,
                                    child: Card(
                                      color: Color.fromRGBO(110, 112, 128, 1),
                                      child: Center(
                                        child: Text(
                                          "Serviço 1",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 2),
                                  SizedBox(
                                    width: 500,
                                    height: 80,
                                    child: Card(
                                      color: Color.fromRGBO(110, 112, 128, 1),
                                      child: Center(
                                        child: Text(
                                          "Serviço 2",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 2),
                                  SizedBox(
                                    width: 500,
                                    height: 80,
                                    child: Card(
                                      color: Color.fromRGBO(110, 112, 128, 1),
                                      child: Center(
                                        child: Text(
                                          "Serviço 3",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 2),
                                  SizedBox(
                                    width: 500,
                                    height: 80,
                                    child: Card(
                                      color: Color.fromRGBO(110, 112, 128, 1),
                                      child: Center(
                                        child: Text(
                                          "Serviço 4",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 2),
                                  SizedBox(
                                    width: 500,
                                    height: 80,
                                    child: Card(
                                      color: Color.fromRGBO(110, 112, 128, 1),
                                      child: Center(
                                        child: Text(
                                          "Serviço 5",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 2),
                                  SizedBox(
                                    width: 500,
                                    height: 80,
                                    child: Card(
                                      color: Color.fromRGBO(110, 112, 128, 1),
                                      child: Center(
                                        child: Text(
                                          "Serviço 5",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
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
