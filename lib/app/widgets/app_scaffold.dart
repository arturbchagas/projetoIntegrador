import 'package:flutter/material.dart';
import 'package:ijato/app/widgets/appbar_home.dart';

class AppScaffold extends StatelessWidget {
  Widget body;

  AppScaffold({required this.body, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarHome(),
      body: body,
    );
  }
}
