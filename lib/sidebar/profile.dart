import 'package:flutter/material.dart';
import 'package:ghekko_demo_1_flutter_app/sidebar.dart';

class profile extends StatelessWidget {
  static const String routeName = '/profile';

  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Profile"),
        ),
        drawer: const NavDrawer(),
        body: const Center(child: Text("This is profile page")));
  }
}