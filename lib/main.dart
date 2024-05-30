import 'package:flutter/widgets.dart';
import 'package:ijato/app/app_widget.dart';
import 'package:ijato/app/shared/navigation_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => NavigationProvider(),
      child: const AppWidget(),
    ),
  );
}