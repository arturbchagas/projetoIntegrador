import 'package:flutter/material.dart';
import 'package:ijato/app/widgets/appbar_home.dart';

class AppScaffold extends StatelessWidget {
  final Widget body;
  final BottomNavigationBar? bottomNavigationBar;

  const AppScaffold({required this.body, super.key, this.bottomNavigationBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarHome(),
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
