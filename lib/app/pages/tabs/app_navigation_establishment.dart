import 'package:flutter/material.dart';

import 'package:ijato/app/pages/tabs/home_establishment.dart';
import 'package:ijato/app/pages/tabs/schedule_establishment.dart';
import 'package:ijato/app/pages/tabs/services_establishment.dart';
import 'package:ijato/app/pages/tabs/finances_establishment.dart';
import 'package:ijato/app/pages/tabs/requests_establishment.dart';

import 'package:provider/provider.dart';
import 'package:ijato/app/shared/navigation_provider.dart';
import 'package:ijato/app/widgets/app_scaffold.dart';

class AppNavigationEstablishment extends StatefulWidget {
  const AppNavigationEstablishment({super.key});

  @override
  _AppNavigationEstablishmentState createState() =>
      _AppNavigationEstablishmentState();
}

class _AppNavigationEstablishmentState
    extends State<AppNavigationEstablishment> {
  final List<Widget> _pages = [
    const HomeEstablishment(),
    const ScheduleEstablishment(),
    const ServicesEstablishment(),
    const FinancesEstablishment(),
    const RequestsEstablishment(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationProvider>(
      builder: (context, navigationProvider, child) {
        return AppScaffold(
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
