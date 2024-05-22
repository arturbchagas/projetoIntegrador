import 'package:flutter/material.dart';

import 'package:ijato/app/pages/login.dart';
import 'package:ijato/app/pages/tabs/home_user.dart';
import 'package:ijato/app/pages/establishment_reg.dart';
import 'package:ijato/app/pages/register.dart';
import 'package:ijato/app/pages/user_type.dart';

class AppNavigation extends StatefulWidget {
  const AppNavigation({super.key});

  @override
  State<AppNavigation> createState() => _AppNavigationState();
}

class _AppNavigationState extends State<AppNavigation> {
  int index = 0;
  final List<Widget> tabs = [
    const LoginPage(),
    const EstablishmentReg(),
    const HomePage(),
    const RegisterPage(),
    const UserTypePage()
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
            icon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Usuário',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Conta',
          )
        ],
      ),
    );
  }
}
