enum UserType { user, company }

class User {
  String id;
  String name;
  String email;
  String phone;
  String pass;
  UserType type;

  User(this.id, this.name, this.email, this.phone, this.pass, this.type);
}
