import 'package:flutter/material.dart';


class mydrawer extends StatefulWidget {
  const mydrawer({super.key});

  @override
  State<mydrawer> createState() => _mydrawerState();
}

class _mydrawerState extends State<mydrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: Column(
        children: [

          UserAccountsDrawerHeader(
            currentAccountPicture: FlutterLogo(size: 30),
              accountName: Text('Ilham'),
              accountEmail: Text("ilhamhkr.@gmail.com"),
          ),
          ListTile(
            leading: Icon(Icons.point_of_sale_sharp),
            title: Text("New Sale"),
          ),
          ListTile(
            leading: Icon(Icons.manage_search_outlined),
            title: Text("Manage Sale"),
          ),
          ListTile(
            leading: Icon(Icons.production_quantity_limits),
            title: Text("Products"),
          ),
          ListTile(
            leading: Icon(Icons.inventory),
            title: Text("Inventory"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          ),
          Divider(
             thickness: 1,
            color: Colors.grey,
          ),
          ListTile(
            leading: Icon(Icons.supervised_user_circle),
            title: Text("Back Office"),
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          ListTile(
            leading: Icon(Icons.apps_outage),
            title: Text("Apps"),
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text("Help Center"),
          ),

        ],
      ),
    );
  }
}
