import 'package:get/get.dart';

import 'package:ijato/app/controllers/user_controller.dart';

class UserBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserController());
  }
}
