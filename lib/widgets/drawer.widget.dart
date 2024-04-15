import 'package:flutter/material.dart';
import 'package:my_app4/widgets/drawer.header.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          MyDrawerHeader(),
          ListTile(
            title: Text("Home",
                style: TextStyle(color: Theme.of(context).primaryColor)),
            leading: Icon(Icons.home, color: Theme.of(context).primaryColor),
            trailing: Icon(Icons.arrow_forward_ios_sharp,
                color: Theme.of(context).primaryColor),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/home");
            },
          ),
          ListTile(
            title: Text(
              "Products",
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
            leading: Icon(
              Icons.add_shopping_cart,
              color: Theme.of(context).primaryColor,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_sharp,
              color: Theme.of(context).primaryColor,
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/products");
            },
          ),
          ListTile(
            title: Text(
              "About",
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
            leading: Icon(
              Icons.help_center,
              color: Theme.of(context).primaryColor,
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/about");
            },
          ),
        ],
      ),
    );
  }
}
