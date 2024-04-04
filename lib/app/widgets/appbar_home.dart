import 'package:flutter/widgets.dart';

import 'package:ijato/app/shared/app_images.dart';

class AppbarHome extends StatelessWidget {
  const AppbarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImages.appbarHome,
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
    );
  }
}
