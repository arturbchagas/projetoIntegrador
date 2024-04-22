import 'package:flutter/material.dart';
import 'package:ijato/app/widgets/logo.dart';

class laucherScreen extends StatelessWidget {

  const laucherScreen({ super.key });

   @override
   Widget build(BuildContext context) {
       return const Scaffold(
           body: Center(
            child: SizedBox(
              width: 300,
              height: 300,
              child: LogoImage(),
            ),
           ),
       );
  }
}