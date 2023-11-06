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
                              title: Text("Phone $index"),
                              content: Container(
                                height: 200,
                                child: Column(
                                  children: [
                                    FlutterLogo(
                                      size: 50,
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text("Price RS -  1$index,00.00 "),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text("Srock $index 1")
                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: Text('Close'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
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
