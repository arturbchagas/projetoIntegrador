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
