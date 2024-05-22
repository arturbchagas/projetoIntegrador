import 'package:flutter/material.dart';
import 'package:ijato/app/pages/tabs/home_stablishment.dart';
import 'package:ijato/app/pages/tabs/schedule_stablishment.dart';
import 'package:ijato/app/pages/tabs/services_stablishment.dart';
import 'package:ijato/app/pages/tabs/finances_stablishment.dart';
import 'package:ijato/app/pages/tabs/requests_stablishment.dart';
import 'package:ijato/app/shared/navigation_provider.dart';
import 'package:provider/provider.dart';

class AppNavigationStablishment extends StatefulWidget {
  const AppNavigationStablishment({super.key});

  @override
  _AppNavigationStablishmentState createState() =>
      _AppNavigationStablishmentState();
}

class _AppNavigationStablishmentState extends State<AppNavigationStablishment> {
  final List<Widget> _pages = [
    const HomeStablishment(),
    const ScheduleStablishment(),
    const ServicesStablishment(),
    const FinancesStablishment(),
    const RequestsStablishment(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationProvider>(
      builder: (context, navigationProvider, child) {
        return Scaffold(
          body: IndexedStack(
            index: navigationProvider.currentIndex,
            children: _pages,
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: navigationProvider.currentIndex,
            onTap: navigationProvider.changePage,
            items: const [
              BottomNavigationBarItem(
                activeIcon: Icon(Icons.home_outlined),
                backgroundColor: Color.fromARGB(251, 0, 0, 0),
                icon: Icon(Icons.home),
                label: 'Início',
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(Icons.calendar_month_outlined),
                backgroundColor: Color.fromARGB(255, 207, 24, 11),
                icon: Icon(Icons.calendar_month_rounded),
                label: 'Agenda',
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(Icons.construction_outlined),
                backgroundColor: Color.fromARGB(255, 63, 63, 63),
                icon: Icon(Icons.construction),
                label: 'Serviços',
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(Icons.monetization_on_outlined),
                backgroundColor: Color.fromARGB(255, 5, 160, 44),
                icon: Icon(Icons.monetization_on),
                label: 'Financeiro',
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(Icons.shopping_cart_outlined),
                backgroundColor: Color.fromARGB(255, 13, 26, 196),
                icon: Icon(Icons.shopping_cart),
                label: 'Pedidos',
              ),
            ],
          ),
        );
      },
    );
  }
}
