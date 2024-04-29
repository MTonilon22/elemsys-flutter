import 'package:ambot_ani/web_view_container.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const WebViewExample(),
          '/webViewContainer': (context) => const WebViewContainer()
        },
      ),
    );

class WebViewExample extends StatefulWidget {
  const WebViewExample({super.key});

  @override
  State<WebViewExample> createState() => _WebViewExampleState();
}

class _WebViewExampleState extends State<WebViewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }

  Widget content() {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          //Navigate to Webview container Screen
          Navigator.of(context).pushNamed('/webViewContainer');
        },
        child: Text("Open WebView"),
      ),
    );
  }
}
