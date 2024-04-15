import 'package:flutter/material.dart';

class MyDrawerHeader extends StatelessWidget {
  const MyDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.black, Theme.of(context).primaryColor],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          CircleAvatar(
            backgroundImage: AssetImage("images/profile.jpg"),
            radius: 50,
          )
        ],
      ),
    );
  }
}
