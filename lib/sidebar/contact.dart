import 'package:flutter/material.dart';
import 'package:ghekko_demo_1_flutter_app/sidebar.dart';

class contact extends StatelessWidget {
  static const String routeName = '/contact';

  const contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Contact"),
        ),
        drawer: const NavDrawer(),
      body:Card(
        child:Container(
          height: 100,
          color: Colors.white,
          child: Row(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Expanded(
                    child:Image.asset("assets/images/ghekko-dev-avatar.png"),
                    flex:2 ,
                  ),
                ),
              ),
              Expanded(
                child:Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      const Expanded(
                        flex: 5,
                        child: ListTile(
                          title: Text("Dutch Danny"),
                          subtitle: Text("Developer"),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              child:const Text("CALL"),
                              onPressed: ()
                              {},
                            ),
                            const SizedBox(width: 8,),
                            TextButton(
                              child: const Text("MAIL"),
                              onPressed: (){},
                            ),
                            const SizedBox(width: 8,)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                flex:8 ,
              ),
            ],
          ),
        ),
        elevation: 8,
        margin: const EdgeInsets.all(10),
      ),
    );
  }
}