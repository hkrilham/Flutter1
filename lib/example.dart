import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
            itemCount: 50,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: const FlutterLogo(
                  size: 40,
                ),
                trailing: IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Title'),
                          content: Text('This is the content of the dialog.'),
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
                    const SizedBox(
                      width: 100,
                    ),
                    Text('1$index,00.00')
                  ],
                ),
                subtitle: const Text('4 in Stock'),
              );
            }),
      ),
    );
  }
}
