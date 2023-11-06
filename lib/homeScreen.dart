import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:test4/example.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 80,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.blue[900],
              borderRadius: BorderRadius.circular(5),
            ),
            margin: const EdgeInsets.all(5),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "CHARGE",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "0.00",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w800),
                ),
              ],
            ),
          ),
          ExpansionTile(
            title: Text('All'),
            trailing: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyWidget()),
                );
              },
              icon: Icon(Icons.search),
            ),
            children: [
              ListTile(
                title: Text('Reapir'),
              ),
              ListTile(
                title: Text('Accessories'),
              ),
              ListTile(
                title: Text('All'),
              ),
              ListTile(
                title: Text('Sim Reaload'),
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 50,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: FlutterLogo(
                      size: 40,
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: ListTile(
                                leading: FlutterLogo(
                                  size: 50,
                                ),
                                title: Text("Phone $index"),
                                subtitle: Text('In Stock 4'),
                                trailing: IconButton(
                                  icon: Icon(Icons.share_outlined),
                                  onPressed: () {},
                                ),
                              ),
                              content: Container(
                                height: 200,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Product Code'),
                                        Text('1002')
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Product Price'),
                                        Text('1200.00')
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Product Cost'),
                                        Text('900.00')
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Category'),
                                        Text('Repair'),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Barcode'),
                                        Text('1580'),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [Text('Tax'), Text('200.00')],
                                    )
                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TextButton(
                                      child: Text('EDIT'),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                    TextButton(
                                      child: Text('CLOSE'),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            );
                          },
                        );
                      },
                      icon: Icon(Icons.info_outline),
                    ),
                    title: Row(
                      children: [
                        Text("Phone $index"),
                        SizedBox(
                          width: 100,
                        ),
                        Text('1$index,00.00')
                      ],
                    ),
                    subtitle: Text('4 in Stock'),
                  );
                }),
          )
        ],
      ),
    );
  }
}
