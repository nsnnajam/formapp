// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names

import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:formapp/home2.dart';
import 'package:formapp/provider.dart';

class LoginSecreen extends StatelessWidget {
  LoginSecreen({Key? key}) : super(key: key);
  TextEditingController EmailController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();
  TextEditingController NameController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();
  TextEditingController loginemailController = TextEditingController();
  int x = 0;

  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<MyProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text("Login Secreen"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                //
                padding: const EdgeInsets.only(
                  left: 40.0009765625,
                  top: 75.760009765625,
                ),
                child: Center(
                  child: Image.network(
                    'https://img.freepik.com/free-vector/mobile-login-concept-illustration_114360-135.jpg?w=740&t=st=1675838375~exp=1675838975~hmac=07cd53628f84fa26e5f7575842d73c48d1e7205c56d66881e26a8f8fa8f0c281',
                    height: 150,
                    width: 400,
                  ),
                ),
              ),
              SizedBox(
                height: 38,
              ),
              Text(
                "Welcome You !",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 22,
                  color: Colors.black,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.white,
                // width: 200,
                height: 400,
                child: ContainedTabBarView(
                  tabs: [
                    Text('Login in', style: TextStyle(color: Colors.grey)),
                    Text(
                      'Register',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                  views: [
                    Container(
                      child: Column(
                        children: [
                          TextFormField(
                            controller: loginemailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                labelText: "Enter Email",
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey))),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            controller: loginPasswordController,
                            obscureText: true,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                                labelText: "Enter user password",
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey))),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              MaterialButton(
                                onPressed: () {},
                                child: Text(
                                  "Remember Me",
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ),
                              SizedBox(
                                width: 90,
                              ),
                              TextButton(
                                  onPressed: () {
                                    // Navigator.of(context).push(
                                    //     MaterialPageRoute(
                                    //         builder: (context) => Forget()));
                                  },
                                  child: Text("Forget Password")),
                            ],
                          ),
                          Stack(
                              fit: StackFit.loose,
                              alignment: Alignment.center,
                              children: [
                                Container(
                                    height: 50,
                                    width: double.infinity,
                                    child: ElevatedButton(
                                      child: Text('Login'),
                                      onPressed: () => {
                                        print('login pressed'),
                                        // Navigator.of(context).push(
                                        //     MaterialPageRoute(
                                        //         builder: (context) =>
                                        //             listShow())),
                                      },
                                      style: ButtonStyle(
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        (25)))),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Color(0xff273773)),
                                      ),
                                    )),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        color: Color(0xffffffff)
                                            .withOpacity(0.15)),
                                    height: 50,
                                    width: 50,
                                    child: IconButton(
                                      icon: Icon(Icons.arrow_right_alt),
                                      color: Color(0xffffffff),
                                      onPressed: () {
                                        final item = countProvider.students
                                            .firstWhere((e) =>
                                                e['Email'] ==
                                                    loginemailController.text
                                                        .toString() &&
                                                e['Password'] ==
                                                    loginPasswordController.text
                                                        .toString());
                                        x = item['id'];
                                        print('fidnid');
                                        print(item['id']);
                                        print(x);

                                        // Map map = {
                                        //   1: 'one',
                                        //   2: 'two',
                                        //   3: 'three'
                                        // };

                                        // var key = map.keys.firstWhere(
                                        //     (k) =>
                                        //         map[k] ==
                                        //         loginemailController.text,
                                        //     orElse: () => null);
                                        // print(key);

                                        // var id;
                                        // print(id);
                                        // int index = countProvider.students
                                        //     .indexWhere((item) =>
                                        //         item ==
                                        //         loginemailController.text);

                                        // countProvider.students
                                        //     .forEach((element) {
                                        //   if (element['Email'] ==
                                        //       ['doe@gmail.com']) {
                                        //     element['id'] = id;
                                        //     x = item['id'];
                                        //     print(element['id']);
                                        //   }
                                        // });

                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    listShow(x: item['id'])));
                                      },
                                    ),
                                  ),
                                )
                              ]),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    // viwe 2
                    Container(
                      child: Column(
                        children: [
                          TextFormField(
                            controller: NameController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                labelText: "Enter name",
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey))),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            controller: EmailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                labelText: "Enter user Email",
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey))),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            controller: PasswordController,
                            obscureText: true,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                                labelText: "Enter user password",
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey))),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton.icon(
                              onPressed: () {
                                // Navigator.of(context).push(MaterialPageRoute(
                                //     builder: (context) => listShow(x: x)));
                                countProvider.adduser(
                                    NameController.text,
                                    EmailController.text,
                                    PasswordController.text,
                                    countProvider.students.length + 1);

                                NameController.clear();
                                PasswordController.clear();
                                EmailController.clear();
                              },
                              icon: Icon(Icons.app_registration_outlined),
                              label: Text("Register")),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                  onChange: (index) => print(index),
                  tabBarProperties: TabBarProperties(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32.0,
                      vertical: 8.0,
                    ),
                    indicator: ContainerTabIndicator(
                      radius: BorderRadius.circular(1.0),
                      color: Color.fromARGB(255, 232, 234, 236),
                      borderWidth: 2.0,
                      borderColor: Color.fromARGB(255, 58, 58, 58),
                    ),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.grey[400],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
