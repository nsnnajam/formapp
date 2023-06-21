// ignore_for_file: public_member_api_docs, sort_constructors_first

class Users {
  int id;
  String fisrtName;
  String lastName;
  String email;
  String password;
  String phone;
  String roll;
  UsersAddress address;
  List<Expensives> expens;
  List<Educations> edu;

  Users({
    required this.id,
    required this.fisrtName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.phone,
    required this.roll,
    required this.address,
    required this.expens,
    required this.edu,
  });
}

class UsersAddress {
  String city;
  String street;
  UsersAddress({
    required this.city,
    required this.street,
  });
}

class UserType {}

class Expensives {
  String ex;
  String title;
  Expensives({
    required this.ex,
    required this.title,
  });
}

class Educations {
  String title;
  String degree;
  String bord;
  Educations({
    required this.title,
    required this.degree,
    required this.bord,
  });
}
