import 'package:flutter/material.dart';
import 'package:ijato/app/pages/login.dart';
import 'package:ijato/app/pages/tabs/home_user.dart';
import 'package:ijato/app/pages/establishment_reg.dart';
import 'package:ijato/app/pages/tabs/home_stablishment.dart';
import 'package:ijato/app/pages/register.dart';
import 'package:ijato/app/pages/tabs/schedule_stablishment.dart';
import 'package:ijato/app/pages/user_type.dart';

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
        currentIndex: index,
        onTap: handleTab,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.amber,
            icon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Icon(Icons.schedule),
            label: 'Agenda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Conta',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Conta',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Conta',
          ),
        ],
      ),
    );
  }
}
