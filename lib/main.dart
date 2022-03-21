import 'package:flutter/material.dart';
import 'package:ghekko_demo_1_flutter_app/sidebar.dart';
import 'package:ghekko_demo_1_flutter_app/pages/page1.dart';
import 'package:ghekko_demo_1_flutter_app/pages/page2.dart';
import 'package:ghekko_demo_1_flutter_app/pages/page3.dart';
import 'package:ghekko_demo_1_flutter_app/pages/page4.dart';
void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ghekko Demo 1',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState()
  {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  late final List<Widget> _items = [
    const Page1(),
    const Page2(),
    const Page3(),
    const Page4(),
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Ghekko Demo 1"),
          actionsIconTheme: const IconThemeData(size: 32,),
        ),
        drawer: const NavDrawer(),
      body:Center(
          child: IndexedStack(
              index: _selectedIndex,
              children: _items
          )
      ),
      bottomNavigationBar: _showBottomNav(),
    );
  }

  Widget _showBottomNav()
  {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.web),
          label: 'Webview',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.group),
          label: 'Page 3',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag),
          label: 'Page 4',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.grey,
      onTap: _onTap,
      iconSize: 30,
      elevation: 15,
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
    );
  }

  void _onTap(int index)
  {
    _selectedIndex = index;
    setState(() {

    });
  }
}