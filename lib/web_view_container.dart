import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewContainer extends StatefulWidget {
  const WebViewContainer({super.key});

  @override
  State<WebViewContainer> createState() => _WebViewContainerState();
}

class _WebViewContainerState extends State<WebViewContainer> {
  //initialize webview here
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse('http://192.168.1.100'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(controller: controller),
    );
  }
}
