import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Page3State createState() => Page3State();
}

class Page3State extends State<Page3>{

  final controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child:
        PageView(
          controller: controller,
          onPageChanged: (page)=>{ print(page.toString()) },
          pageSnapping: true,
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
                color: Colors.pink,
                child: const Center(
                    child: Text('Page 3 is a Widget',
                      style: TextStyle(fontSize: 25,
                          color: Colors.white),))
            ),

            Container(
                color: Colors.green,
                child: const Center(
                    child: Text('This is Widget - 2',
                      style: TextStyle(fontSize: 25,
                          color: Colors.white),))
            ),

            Container(
                color: Colors.lightBlue,
                child: const Center(
                    child: Text('This is Widget - 3',
                      style: TextStyle(fontSize: 25,
                          color: Colors.white),))
            ),

          ],
        ),

        )
    );
  }
}