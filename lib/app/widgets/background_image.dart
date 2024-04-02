import 'package:flutter/material.dart';

import 'package:ijato/app/shared/app_images.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImages.background,
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
    );
  }
}
