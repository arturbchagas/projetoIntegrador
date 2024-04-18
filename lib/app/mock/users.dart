/* Essa abordagem simula dados enquantose desenvolve e testa o aplicativo.
Usar uma lista estática de objetos User permite que você tenha dados fictícios
disponíveis para testar a funcionalidade, como autenticação e exibição de perfis de usuário.*/

import 'package:ijato/app/models/user.dart';

abstract class UserMock {
  static List<User> list = [
    User(
      '1',
      'Ednario Andrade',
      'admin@admin.com',
      '************a',
      'pass',
    ),
    User(
      '2',
      'Gabriel Souza',
      'admin2@admin.com',
      '************b',
      'pass',
    ),
    User(
      '3',
      'Alan Lima',
      'admin3@admin.com',
      '************c',
      'pass',
    ),
  ];
}
