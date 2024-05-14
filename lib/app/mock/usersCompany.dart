
import 'package:ijato/app/models/user_company.dart';

abstract class UserMock {
  static List<UserCompany> list = [
    UserCompany(
      '1',
      'Ednario Andrade',
      'admin@admin.com',
      '************a',
      'pass',
    ),
    UserCompany(
      '2',
      'Gabriel Souza',
      'admin2@admin.com',
      '************b',
      'pass',
    ),
    UserCompany(
      '3',
      'Alan Lima',
      'admin3@admin.com',
      '************c',
      'pass',
    ),
  ];
}
