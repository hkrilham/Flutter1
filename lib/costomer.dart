import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class costomerScreen extends StatefulWidget {
  const costomerScreen({super.key});

  @override
  State<costomerScreen> createState() => _costomerScreenState();
}

class _costomerScreenState extends State<costomerScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Select Costomer"),
          leading: Icon(Icons.arrow_back_sharp),
          backgroundColor: Colors.blue[900],
        ),
        body: Column(
          children: [
            TextField(),
            TextButton(
              onPressed: () {},
              child: Text("ADD NEW CUSTOMER"),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey[400],
            )
          ],
        ),
      ),
    );
  }
}
