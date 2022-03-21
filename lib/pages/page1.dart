import 'package:ghekko_demo_1_flutter_app/pages/person1.dart';
import 'package:ghekko_demo_1_flutter_app/pages/person2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              HeaderWidget(),
              BodyWidget(),
              FooterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'The Header',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.red,
                ),
              ),
              SizedBox(
                child: Image.asset(
                  'assets/images/ghekko-dev-avatar.png',
                  width: 80,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Bodyland Rotterdam',
                style: TextStyle(
                  fontFamily: 'Aero Club Como',
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Dé salon voor de man door de man',
                style: TextStyle(
                  fontFamily: 'Aero Club Como',
                  fontSize: 13,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ]
        ),
      ),
    );
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: Column(
          children: [
            const Text(
            'The Body',
            style: TextStyle(
              fontSize: 12,
              color: Colors.red,
            ),
          ),
            Card(
              margin: const EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 5,
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    SizedBox(
                      width: 120,
                      child: Image.asset(
                        'assets/images/ghekko-dev-avatar.png',
                        width: 120,
                        height: 120,
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Person 1',
                            style: TextStyle(
                              fontFamily: 'Aero Club Como',
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Text(
                            'Programmer',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Text(
                            'This is a Card Example',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(CupertinoPageRoute(builder: (context) => const Person1()));
                            },
                            child: const Text(
                              'Read More',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: const Color(0xFFe5c262),
                                fixedSize: const Size(140, 30),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50))),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 5,
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    SizedBox(
                      width: 120,
                      child: Image.asset(
                        'assets/images/ghekko-dev-avatar.png',
                        width: 120,
                        height: 120,
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Person 2',
                            style: TextStyle(
                              fontFamily: 'Aero Club Como',
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Text(
                            'Marketing',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Text(
                            'The 2nd Card Example',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(CupertinoPageRoute(builder: (context) => const Person2()));
                            },
                            child: const Text(
                              'Read More',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: const Color(0xFFe5c262),
                                fixedSize: const Size(140, 30),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50))),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Column(
                children: const [
                  Text(
                    'Adres',
                    style: TextStyle(
                      fontFamily: 'Aero Club Como',
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Willem Buytewechstraat 187 C',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '3024 XH, Rotterdam',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'info@bodyland.nl / 06 816 738 37',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'www.bodyland.nl',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ]
            )
          ],
        ),
      ),
    );
  }
}

class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(
                'The Footer',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.red,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Has only this Text',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ]
        ),
      ),
    );
  }
}