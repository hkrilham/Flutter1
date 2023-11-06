import 'package:flutter/material.dart';
import 'package:test4/homeScreen.dart';
import 'package:test4/mydrawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.assignment_turned_in_sharp),
            ),
            const SizedBox(
              width: 20,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.person_add_alt_1),
            ),
            const SizedBox(
              width: 20,
            ),
            PopupMenuButton<int>(
              itemBuilder: (context) => [
                // popupmenu item 1
                const PopupMenuItem(
                  value: 1,
                  // row has two child icon and text.
                  child: Row(
                    children: [
                      Icon(
                        Icons.delete,
                        color: Colors.black,
                      ),
                      SizedBox(
                        // sized box with width 10
                        width: 10,
                      ),
                      Text("Clear Items")
                    ],
                  ),
                ),
                // popupmenu item 2
                const PopupMenuItem(
                  value: 2,
                  // row has two child icon and text
                  child: Row(
                    children: [
                      Icon(Icons.lock, color: Colors.black),
                      SizedBox(
                        // sized box with width 10
                        width: 10,
                      ),
                      Text("KOT Log")
                    ],
                  ),
                ),
                const PopupMenuItem(
                  value: 3,
                  // row has two child icon and text.
                  child: Row(
                    children: [
                      Icon(
                        Icons.change_circle,
                        color: Colors.black,
                      ),
                      SizedBox(
                        // sized box with width 10
                        width: 10,
                      ),
                      Text("Add Tax/Charges")
                    ],
                  ),
                ),
                const PopupMenuItem(
                  value: 5,
                  // row has two child icon and text.
                  child: Row(
                    children: [
                      Icon(
                        Icons.sync,
                        color: Colors.black,
                      ),
                      SizedBox(
                        // sized box with width 10
                        width: 10,
                      ),
                      Text("Sync")
                    ],
                  ),
                ),
              ],
              offset: const Offset(0, 100),
              color: Colors.white,
              elevation: 2,
            ),
          ],
        ),
        body: const homeScreen(),
        drawer: const mydrawer(),
      ),
    );
  }
}
