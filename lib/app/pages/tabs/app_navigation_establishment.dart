import 'package:flutter/material.dart';

import 'package:ijato/app/pages/tabs/home_establishment.dart';
import 'package:ijato/app/pages/tabs/schedule_establishment.dart';
import 'package:ijato/app/pages/tabs/finances_establishment.dart';
import 'package:ijato/app/pages/tabs/requests_establishment.dart';
import 'package:ijato/app/pages/tabs/services_establishment.dart';

class AppNavigationEstablishment extends StatefulWidget {
  const AppNavigationEstablishment({super.key});

  @override
  State<AppNavigationEstablishment> createState() =>
      _AppNavigationEstablishmentState();
}

class _AppNavigationEstablishmentState
    extends State<AppNavigationEstablishment> {
  int index = 0;
  final List<Widget> tabs = [
    const HomeEstablishment(),
    const ScheduleEstablishment(),
    const ServicesEstablishment(),
    const FinancesEstablishment(),
    const RequestsEstablishment(),
  ];

  void handleTab(int i) {
    setState(() {
      index = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: tabs[index],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black54,
        currentIndex: index,
        onTap: handleTab,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(251, 0, 0, 0),
            icon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 207, 24, 11),
            icon: Icon(Icons.schedule),
            label: 'Agenda',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 63, 63, 63),
            icon: Icon(Icons.construction),
            label: 'Conta',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 5, 160, 44),
            icon: Icon(Icons.monetization_on),
            label: 'Financeiro',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 13, 26, 196),
            icon: Icon(Icons.shopping_cart),
            label: 'Pedidos',
          ),
        ],
      ),
    );
  }
}
