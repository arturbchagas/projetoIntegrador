import 'package:flutter/material.dart';
import 'package:ijato/app/pages/tabs/home_stablishment.dart';
import 'package:ijato/app/pages/tabs/schedule_stablishment.dart';
import 'package:ijato/app/pages/tabs/services_stablishment.dart';
import 'package:ijato/app/pages/tabs/finances_stablishment.dart';
import 'package:ijato/app/pages/tabs/requests_stablishment.dart';

class AppNavitgationStablishment extends StatefulWidget {
  const AppNavitgationStablishment({super.key});

  @override
  State<AppNavitgationStablishment> createState() =>
      _AppNavitgationStablishmentState();
}

class _AppNavitgationStablishmentState
    extends State<AppNavitgationStablishment> {
  int index = 0;
  final List<GlobalKey<NavigatorState>> _navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];

  void handleTab(int i) {
    setState(() {
      index = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final currentNavigator = _navigatorKeys[index].currentState;
        if (currentNavigator!.canPop()) {
          currentNavigator.pop();
          return false;
        }
        return true;
      },
      child: Scaffold(
        body: Stack(
          children: _navigatorKeys.asMap().entries.map<Widget>((entry) {
            int i = entry.key;
            GlobalKey<NavigatorState> key = entry.value;
            return Offstage(
              offstage: index != i,
              child: Navigator(
                key: key,
                onGenerateRoute: (routeSettings) {
                  return MaterialPageRoute(
                    builder: (context) {
                      switch (i) {
                        case 0:
                          return const HomeStablishment();
                        case 1:
                          return const ScheduleStablishment();
                        case 2:
                          return const ServicesStablishment();
                        case 3:
                          return const FinancesStablishment();
                        case 4:
                          return const RequestsStablishment();
                        default:
                          return const HomeStablishment();
                      }
                    },
                  );
                },
              ),
            );
          }).toList(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black54,
          currentIndex: index,
          onTap: handleTab,
          items: const [
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.home_outlined),
              backgroundColor: Color.fromARGB(251, 0, 0, 0),
              icon: Icon(Icons.home),
              label: 'Início',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.schedule_outlined),
              backgroundColor: Color.fromARGB(255, 207, 24, 11),
              icon: Icon(Icons.schedule),
              label: 'Agenda',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.construction_outlined),
              backgroundColor: Color.fromARGB(255, 63, 63, 63),
              icon: Icon(Icons.construction),
              label: 'Conta',
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
      ),
    );
  }
}
