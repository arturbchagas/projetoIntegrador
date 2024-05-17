/* Essa abordagem simula dados enquantose desenvolve e testa o aplicativo.
Usar uma lista estática de objetos User permite que você tenha dados fictícios
disponíveis para testar a funcionalidade, como autenticação e exibição de perfis de usuário.*/

import 'package:ijato/app/models/user.dart';

abstract class UserMock {
  static List<User> listUsers = [
    User(
      '1',
      'Ednario Andrade',
      'admin@admin.com',
      '************a',
      'pass',
      UserType.user,
    ),
    User(
      '2',
      'Gabriel Souza',
      'admin2@admin.com',
      '************b',
      'pass',
      UserType.user,
    ),
    User(
      '3',
      'Alan Lima',
      'admin3@admin.com',
      '************c',
      'pass',
      UserType.user,
    ),
    User(
      '1',
      'Ednario Andrade',
      'empresa@admin.com',
      '************a',
      'pass',
      UserType.company,
    ),
    User(
      '2',
      'Gabriel Souza',
      'empresa2@admin.com',
      '************b',
      'pass',
      UserType.company,
    ),
    User(
      '3',
      'Alan Lima',
      'empresa3@admin.com',
      '************c',
      'pass',
      UserType.company,
    ),
  ];
}
