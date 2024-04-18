import 'package:get/get.dart';

import 'package:ijato/app/controllers/user_controller.dart';

class UserBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserController());
  }
}

/*No geral, esse código parece estar configurando as dependências do
seu aplicativo, especificamente o controlador do usuário, utilizando o GetX.*/
