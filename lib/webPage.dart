import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

import 'config.dart';

class WebPage extends StatelessWidget {
  var url, title;
  WebPage({@required this.url, @required this.title});

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
        title: Text(title.toString()),
        backgroundColor: const Color.fromARGB(235, 145, 3, 3),
        elevation: 0,
      ),
      url: url,
      withJavascript: true,
      withLocalStorage: true,
      withLocalUrl: true,
      withZoom: false,
    );
  }
}
