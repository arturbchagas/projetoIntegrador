import 'package:flutter/widgets.dart';

import 'package:ijato/app/shared/app_images.dart';

class AvatarImage extends StatelessWidget {
  const AvatarImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImages.avatar,
    );
  }
}
