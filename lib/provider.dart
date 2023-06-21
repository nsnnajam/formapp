import 'dart:convert';

import 'package:flutter/material.dart';


import 'Users_Class.dart';

class MyProvider extends ChangeNotifier {
  List<Users> userCclass = [];

  List<Map<String, dynamic>> students = [
    {"Name": "najam", "Email": "nsn@gmail.com", "Password": "123456", "id": 1},
  ];
  adduser(String username, email, password, int id) {
    students.add(
        {'Name': username, 'Email': email, 'Password': password, 'id': id});
    notifyListeners();
  }

  List apiList = [];
  addApiData(name, temp, pres, humd, weather) {
    apiList.add({
      'name': name,
      'Tepm': temp,
      'hum': humd,
      'waether': weather,
    });
    notifyListeners();
  }

  static const String apiKey = "86873148bc82c2f8cecd14be3f539b7f";
  static const String baseUrl =
      'https://api.openweathermap.org/data/2.5/weather';

 

  addform(
      id,
      nf,
      nl,
      email,
      pass,
      phone,
      job,
      city,
      street,
      ex1,
      examount1,
      ex2,
      examount2,
      edtitle1,
      eddegree1,
      edbord1,
      edtitle2,
      eddegree2,
      edbord2) {
    var newUer = Users(
        id: id,
        fisrtName: nf,
        lastName: nl,
        email: email,
        password: pass,
        phone: phone,
        roll: job,
        address: UsersAddress(city: city, street: street),
        expens: [
          Expensives(ex: examount1, title: ex1),
          Expensives(ex: examount2, title: ex2),
        ],
        edu: [
          Educations(title: edtitle1, degree: eddegree1, bord: edbord1),
          Educations(title: edtitle2, degree: eddegree2, bord: edbord2),
        ]);
    print(newUer);
    userCclass.add(newUer);
    notifyListeners();
  }

  updatecontact(value, text, name) {
    print("name");
    name.contains(value)
        ? name[name.indexWhere((v) => v == value)] = text
        : name;
    notifyListeners();
  }

  updatefeild(
    index,
    fname,
    last,
    email,
    phone,
    job,
    city,
    add,
  ) {
    userCclass[index].fisrtName = fname;
    userCclass[index].lastName = last;
    userCclass[index].email = email;
    userCclass[index].phone = phone;
    userCclass[index].roll = job;

    userCclass[index].address.city = city;

    userCclass[index].address.street = add;

    notifyListeners();
  }

  updateeducation(index, ex, title) {
    userCclass[index].expens[index].ex = ex;
    userCclass[index].expens[index].title = title;
  }

  // foods[foods.indexWhere((element) => element.uid == food.uid)] = food;

  removelist(value) {
    userCclass.remove(value);
    notifyListeners();
  }
// List<Map<int, bool>> data = [{1: false}, {2: false}, {5: false}, {6: false}];

}
