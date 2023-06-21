// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:formapp/getuser.dart';
import 'package:formapp/provider.dart';
import 'package:formapp/update.dart';

import 'package:provider/provider.dart';

class HomeSecreen2 extends StatefulWidget {
  const HomeSecreen2({Key? key}) : super(key: key);

  @override
  State<HomeSecreen2> createState() => _HomeSecreenState();
}

class _HomeSecreenState extends State<HomeSecreen2> {
  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<MyProvider>(context, listen: false);

    print(countProvider.userCclass);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home2 "),
      ),
      body: ListView.builder(
          itemCount: countProvider.userCclass.length,
          itemBuilder: (context, index) {
            var data = countProvider.userCclass[index];

            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Updatecontact(index: index)));
              },
              child: Card(
                child: Column(
                  children: [
                    ReusbaleRow(title: "id", value: data.id.toString()),
                    ReusbaleRow(title: "FisrtName", value: data.fisrtName),
                    ReusbaleRow(title: "LastName", value: data.lastName),
                    ReusbaleRow(title: "Email", value: data.email),
                    ReusbaleRow(title: "Phone", value: data.phone),
                    ReusbaleRow(title: "jobType", value: data.roll),
                    ReusbaleRow(title: "City", value: data.address.city),
                    ReusbaleRow(title: "Address", value: data.address.street),

                    // ReusbaleRow(title: "Education", value: data.edu[1].title),
                    // ReusbaleRow(title: "Degree", value: data.edu[1].degree),
                    // ReusbaleRow(title: "Bord", value: data.edu[1].bord),
                    ReusbaleRow(
                      title: "Education",
                      value: data.edu.map((r) => r.title).join(", "),
                    ),
                    ReusbaleRow(
                      title: "Degree",
                      value: data.edu.map((r) => r.degree).join(", "),
                    ),
                    ReusbaleRow(
                      title: "Bord",
                      value: data.edu.map((r) => r.bord).join(", "),
                    ),
                    ReusbaleRow(
                      title: "Expense",
                      value: data.expens.map((r) => r.title).join(", "),
                    ),
                    ReusbaleRow(
                      title: "Ammount",
                      value: data.expens.map((r) => r.ex).join(", "),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}

class ReusbaleRow extends StatelessWidget {
  String title, value;
  ReusbaleRow({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(value),
        ],
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors

class listShow extends StatelessWidget {
  listShow({Key? key, required this.x})
      : super(
          key: key,
        );
  int x = 1;

  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<MyProvider>(context, listen: false);
    print(countProvider.students);
    Future<void> _refresh() async {}
    print("value of $x");

    return Scaffold(
      appBar: AppBar(
        title: Text("Contact List "),
      ),
      body: Column(
        children: [
          Expanded(
            child: Form(
              child: Consumer<MyProvider>(
                builder: (context, value, child) {
                  return RefreshIndicator(
                    onRefresh: () async {
                      // Replace this delay with the code to be executed during refresh
                      // and return asynchronous code
                      return Future<void>.delayed(const Duration(seconds: 3));
                    },
                    child: ListView.builder(
                        itemCount: countProvider.userCclass.length,
                        itemBuilder: (context, index) {
                          var data = value.userCclass[index];
                          if (data.id == x) {
                            return GestureDetector(
                              onDoubleTap: () {
                                countProvider.removelist(data);
                              },
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        Updatecontact(index: index)));

                                //    Navigator.push(
                                // context,
                                // MaterialPageRoute(
                                //     builder: (context) =>
                                //         Updatecontact(index: index)));
                              },
                              child: Card(
                                  child: Column(
                                children: [
                                  ReusbaleRow(
                                      title: "id", value: data.id.toString()),
                                  ReusbaleRow(
                                      title: "FisrtName",
                                      value: data.fisrtName),
                                  ReusbaleRow(
                                      title: "LastName", value: data.lastName),
                                  ReusbaleRow(
                                      title: "Email", value: data.email),
                                  ReusbaleRow(
                                      title: "Phone", value: data.phone),
                                  ReusbaleRow(
                                      title: "jobType", value: data.roll),
                                  ReusbaleRow(
                                      title: "City", value: data.address.city),
                                  ReusbaleRow(
                                      title: "Address",
                                      value: data.address.street),

                                  // ReusbaleRow(title: "Education", value: data.edu[1].title),
                                  // ReusbaleRow(title: "Degree", value: data.edu[1].degree),
                                  // ReusbaleRow(title: "Bord", value: data.edu[1].bord),
                                  ReusbaleRow(
                                    title: "Education",
                                    value:
                                        data.edu.map((r) => r.title).join(", "),
                                  ),
                                  ReusbaleRow(
                                    title: "Degree",
                                    value: data.edu
                                        .map((r) => r.degree)
                                        .join(", "),
                                  ),
                                  ReusbaleRow(
                                    title: "Bord",
                                    value:
                                        data.edu.map((r) => r.bord).join(", "),
                                  ),
                                  ReusbaleRow(
                                    title: "Expense",
                                    value: data.expens
                                        .map((r) => r.title)
                                        .join(", "),
                                  ),
                                  ReusbaleRow(
                                    title: "Ammount",
                                    value:
                                        data.expens.map((r) => r.ex).join(", "),
                                  ),
                                ],
                              )),
                            );
                          } else {
                            return Container();
                          }
                        }),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Getdata()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
