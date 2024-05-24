import 'package:flutter/material.dart';
import 'package:ijato/app/pages/tabs/home_stablishment.dart';
import 'package:ijato/app/pages/tabs/schedule_stablishment.dart';
import 'package:ijato/app/pages/tabs/services_stablishment.dart';
import 'package:ijato/app/pages/tabs/finances_stablishment.dart';
import 'package:ijato/app/pages/tabs/requests_stablishment.dart';
import 'package:ijato/app/widgets/appbar_home.dart';

class AppNavitgationStablishment extends StatefulWidget {
  const AppNavitgationStablishment({super.key});

  @override
  State<AppNavitgationStablishment> createState() =>
      _AppNavitgationStablishmentState();
}

class _AppNavitgationStablishmentState
    extends State<AppNavitgationStablishment> {
  int index = 0;
  final List<Widget> tabs = [
    const HomeStablishment(),
    const ScheduleStablishment(),
    const ServicesStablishment(),
    const FinancesStablishment(),
    const RequestsStablishment(),
  ];

  void handleTab(int i) {
    setState(() {
      index = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarHome(),
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
