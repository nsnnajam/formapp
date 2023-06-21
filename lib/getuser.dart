// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:formapp/provider.dart';


import 'package:provider/provider.dart';

class Getdata extends StatefulWidget {
  const Getdata({Key? key}) : super(key: key);

  @override
  State<Getdata> createState() => _GetdataState();
}

class _GetdataState extends State<Getdata> {
  TextEditingController fnameController = TextEditingController();
  TextEditingController lnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController rollController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController streetController = TextEditingController();
  TextEditingController responsblityController = TextEditingController();
  TextEditingController extitleController = TextEditingController();
  TextEditingController examountController = TextEditingController();
  TextEditingController edtController = TextEditingController();
  TextEditingController eddegreeController = TextEditingController();
  TextEditingController eddbordController = TextEditingController();
  TextEditingController extitleController2 = TextEditingController();
  TextEditingController examountController2 = TextEditingController();
  TextEditingController edtController2 = TextEditingController();
  TextEditingController eddegreeController2 = TextEditingController();
  TextEditingController eddbordController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<MyProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Form data"),
      ),
      body: Padding(
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
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                    hintText: "Enter Password", border: OutlineInputBorder()),
              ),
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
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Flexible(
                    child: TextField(
                        controller: extitleController,
                        decoration: InputDecoration(
                            hintText: "Title",
                            labelText: "ExpensName",
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.all(10))),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: TextField(
                        controller: examountController,
                        decoration: InputDecoration(
                            hintText: "Ammount",
                            labelText: "ExpensRS",
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.all(10))),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Flexible(
                    child: TextField(
                        controller: extitleController2,
                        decoration: InputDecoration(
                            hintText: "Title",
                            labelText: "ExpensName",
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.all(10))),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: TextField(
                        controller: examountController2,
                        decoration: InputDecoration(
                            hintText: "Ammount",
                            labelText: "ExpensRS",
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.all(10))),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Flexible(
                    child: TextField(
                        controller: edtController,
                        decoration: InputDecoration(
                            hintText: "Education",
                            labelText: "Education",
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.all(10))),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: TextField(
                        controller: eddegreeController,
                        decoration: InputDecoration(
                            hintText: "Degree",
                            labelText: "Name",
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.all(10))),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: TextField(
                        controller: eddbordController,
                        decoration: InputDecoration(
                            hintText: "Bord",
                            labelText: "Name",
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.all(10))),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Flexible(
                    child: TextField(
                        controller: edtController2,
                        decoration: InputDecoration(
                            hintText: "Education",
                            labelText: "Education",
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.all(10))),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: TextField(
                        controller: eddegreeController2,
                        decoration: InputDecoration(
                            hintText: "Degree",
                            labelText: "Name",
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.all(10))),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: TextField(
                        controller: eddbordController2,
                        decoration: InputDecoration(
                            hintText: "Bord",
                            labelText: "Name",
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.all(10))),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                   
                    Navigator.of(context).pop();
                    

                    countProvider.addform(
                        countProvider.students.length,
                        fnameController.text,
                        lnameController.text,
                        emailController.text,
                        passwordController.text.toString(),
                        phoneController.text.toString(),
                        rollController.text.toString(),
                        cityController.text,
                        streetController.text,
                        extitleController.text,
                        examountController.text.toString(),
                        extitleController2.text.toString(),
                        examountController2.text.toString(),
                        edtController.text.toString(),
                        eddegreeController.text,
                        eddbordController.text,
                        edtController2.text,
                        eddegreeController2.text,
                        eddbordController2.text);
                  },
                  child: const Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}
