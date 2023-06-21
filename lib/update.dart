// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:formapp/provider.dart';

import 'package:provider/provider.dart';

class Updatecontact extends StatelessWidget {
  Updatecontact({Key? key, required this.index}) : super(key: key);
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<MyProvider>(context, listen: false);

    TextEditingController fnameController =
        TextEditingController(text: countProvider.userCclass[index].fisrtName);
    TextEditingController lnameController =
        TextEditingController(text: countProvider.userCclass[index].lastName);
    TextEditingController emailController =
        TextEditingController(text: countProvider.userCclass[index].email);
    TextEditingController passwordController =
        TextEditingController(text: countProvider.userCclass[index].password);
    TextEditingController phoneController =
        TextEditingController(text: countProvider.userCclass[index].phone);
    TextEditingController rollController =
        TextEditingController(text: countProvider.userCclass[index].roll);
    TextEditingController cityController = TextEditingController(
        text: countProvider.userCclass[index].address.city);
    TextEditingController streetController = TextEditingController(
        text: countProvider.userCclass[index].address.street);

    TextEditingController(text: countProvider.userCclass[index].roll);
    TextEditingController extitleController = TextEditingController(
        // text: countProvider.userCclass[index].expens[index].title
        );
    TextEditingController examountController = TextEditingController(
        // text: countProvider.userCclass[index].expens[index].ex
        );
    var educations = countProvider.userCclass[index].edu;
    var educationControllers = [];
    educations.forEach((element) {
      educationControllers.add(educations);
    });
    TextEditingController edtController = TextEditingController(
        // text: countProvider.userCclass[index].edu[index].title
        );
    TextEditingController eddegreeController = TextEditingController(
        // text: countProvider.userCclass[index].edu[index].degree
        );
    TextEditingController eddbordController = TextEditingController(
        // text: countProvider.userCclass[index].edu[index].bord
        );
    TextEditingController extitleController2 = TextEditingController();
    TextEditingController examountController2 = TextEditingController();
    TextEditingController edtController2 = TextEditingController();
    TextEditingController eddegreeController2 = TextEditingController();
    TextEditingController eddbordController2 = TextEditingController();
    print('name of txt');
    print(fnameController.text);

    return Scaffold(
      appBar: AppBar(
        title: Text("Update Details"),
      ),
      body: Form(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Flexible(
                    child: TextField(
                        controller: fnameController,
                        decoration: InputDecoration(
                            hintText: "FirstName",
                            labelText: "Name",
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.all(10))),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: TextField(
                        controller: lnameController,
                        decoration: InputDecoration(
                            hintText: "LastName",
                            labelText: "Name",
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.all(10))),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                    hintText: "Enter Email", border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 10,
              ),
              // TextFormField(
              //   controller: passwordController,
              //   obscureText: true,
              //   decoration: const InputDecoration(
              //       hintText: "Enter Password", border: OutlineInputBorder()),
              // ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: phoneController,
                decoration: const InputDecoration(
                    hintText: "Enter Phone", border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: rollController,
                decoration: const InputDecoration(
                    hintText: "Enter JobType", border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Flexible(
                    child: TextField(
                        controller: cityController,
                        decoration: InputDecoration(
                            hintText: "City",
                            labelText: "Address",
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.all(10))),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: TextField(
                        controller: streetController,
                        decoration: InputDecoration(
                            hintText: "Street",
                            labelText: "Address",
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.all(10))),
                  ),
                ],
              ),
              // const SizedBox(
              //   height: 10,
              // ),
              // Row(
              //   children: [
              //     Flexible(
              //       child: TextField(
              //           controller: extitleController,
              //           decoration: InputDecoration(
              //               hintText: "Title",
              //               labelText: "ExpensName",
              //               border: OutlineInputBorder(),
              //               contentPadding: EdgeInsets.all(10))),
              //     ),
              //     SizedBox(
              //       width: 10,
              //     ),
              //     Flexible(
              //       child: TextField(
              //           controller: examountController,
              //           decoration: InputDecoration(
              //               hintText: "Ammount",
              //               labelText: "ExpensRS",
              //               border: OutlineInputBorder(),
              //               contentPadding: EdgeInsets.all(10))),
              //     ),
              //   ],
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              // Row(
              //   children: [
              //     Flexible(
              //       child: TextField(
              //           controller: extitleController2,
              //           decoration: InputDecoration(
              //               hintText: "Title",
              //               labelText: "ExpensName",
              //               border: OutlineInputBorder(),
              //               contentPadding: EdgeInsets.all(10))),
              //     ),
              //     SizedBox(
              //       width: 10,
              //     ),
              //     Flexible(
              //       child: TextField(
              //           controller: examountController2,
              //           decoration: InputDecoration(
              //               hintText: "Ammount",
              //               labelText: "ExpensRS",
              //               border: OutlineInputBorder(),
              //               contentPadding: EdgeInsets.all(10))),
              //     ),
              //   ],
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              // Row(
              //   children: [
              //     Flexible(
              //       child: TextField(
              //           controller: edtController,
              //           decoration: InputDecoration(
              //               hintText: "Education",
              //               labelText: "Education",
              //               border: OutlineInputBorder(),
              //               contentPadding: EdgeInsets.all(10))),
              //     ),
              //     SizedBox(
              //       width: 10,
              //     ),
              //     Flexible(
              //       child: TextField(
              //           controller: eddegreeController,
              //           decoration: InputDecoration(
              //               hintText: "Degree",
              //               labelText: "Name",
              //               border: OutlineInputBorder(),
              //               contentPadding: EdgeInsets.all(10))),
              //     ),
              //     SizedBox(
              //       width: 10,
              //     ),
              //     Flexible(
              //       child: TextField(
              //           controller: eddbordController,
              //           decoration: InputDecoration(
              //               hintText: "Bord",
              //               labelText: "Name",
              //               border: OutlineInputBorder(),
              //               contentPadding: EdgeInsets.all(10))),
              //     ),
              //   ],
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              // Row(
              //   children: [
              //     Flexible(
              //       child: TextField(
              //           controller: edtController2,
              //           decoration: InputDecoration(
              //               hintText: "Education",
              //               labelText: "Education",
              //               border: OutlineInputBorder(),
              //               contentPadding: EdgeInsets.all(10))),
              //     ),
              //     SizedBox(
              //       width: 10,
              //     ),
              //     Flexible(
              //       child: TextField(
              //           controller: eddegreeController2,
              //           decoration: InputDecoration(
              //               hintText: "Degree",
              //               labelText: "Name",
              //               border: OutlineInputBorder(),
              //               contentPadding: EdgeInsets.all(10))),
              //     ),
              //     SizedBox(
              //       width: 10,
              //     ),
              //     Flexible(
              //       child: TextField(
              //           controller: eddbordController2,
              //           decoration: InputDecoration(
              //               hintText: "Bord",
              //               labelText: "Name",
              //               border: OutlineInputBorder(),
              //               contentPadding: EdgeInsets.all(10))),
              //     ),
              //   ],
              // ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    print(fnameController.text);
                    countProvider.updatefeild(
                        index,
                        fnameController.text,
                        lnameController.text,
                        emailController.text,
                        phoneController.text,
                        rollController.text,
                        cityController.text,
                        streetController.text);

                    Navigator.of(context).pop();
                  },
                  child: const Text("Submit"))
            ],
          ),
        ),
      )),
    );
  }
}
