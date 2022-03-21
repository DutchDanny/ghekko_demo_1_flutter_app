import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          BodyWidget(),
        ],
      ),
    );
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Center(
        child: WebView(
          initialUrl: 'https://ghekko.nl/',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}