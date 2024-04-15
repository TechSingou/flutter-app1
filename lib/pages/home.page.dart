import 'package:flutter/material.dart';
import 'package:my_app4/widgets/drawer.widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home page"),
      ),
      drawer: MyDrawer(),
      body: const Center(
        child: Text(
          "My Home page",
          style: TextStyle(
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
