import 'main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ghekko_demo_1_flutter_app/sidebar/profile.dart';
import 'package:ghekko_demo_1_flutter_app/sidebar/contact.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.orange,
            ),
            child: Center(
              child: Row(
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/images/ghekko-dev-avatar.png',
                      width: 60,
                      height: 60,
                    ),
                    flex: 2,
                  ),
                  const Expanded(
                    flex: 6,
                    child: Text(
                      'Ghekko Development',
                      style: TextStyle(
                        fontFamily: 'Aero Club Como',
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: const Text("Home"),
            leading: IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            onTap: ()
            {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const MyHomePage()));
            },
          ),
          const Divider(
            color: Colors.grey,
          ),
          ListTile(
            title: const Text("Profile"),
            leading: IconButton(
              icon: const Icon(Icons.account_circle),
              onPressed: () {
                Navigator.of(context).push(CupertinoPageRoute(builder: (context) => const profile()));
              },
            ),
            onTap: ()
            {
              Navigator.of(context).push(CupertinoPageRoute(builder: (context) => const profile()));
            },
          ),
          const Divider(
            color: Colors.grey,
          ),
          ListTile(
            title: const Text("Contact"),
            leading: IconButton(
              icon: const Icon(Icons.contact_page),
              onPressed: () {
                Navigator.of(context).push(CupertinoPageRoute(builder: (context) => const contact()));
              },
            ),
            onTap: ()
            {
              Navigator.of(context).push(CupertinoPageRoute(builder: (context) => const contact()));
            },
          )
        ],
      ) ,
    );
  }
}