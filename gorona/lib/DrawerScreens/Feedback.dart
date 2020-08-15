import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

/// Fill the google form - "https://docs.google.com/forms/d/1THE3RpTBwVTWicEu2Pzbul38-Fd4NUnlAbqgV9pjkmo/viewform?pli=1&edit_requested=true"
class UFeedback extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Gorona ",
              style: TextStyle(color: Colors.red),
            ),
            Text(
              "Feedback",
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 9.0,
      ),
      body: WebView(
        initialUrl:
            "https://docs.google.com/forms/d/1THE3RpTBwVTWicEu2Pzbul38-Fd4NUnlAbqgV9pjkmo/viewform?pli=1&edit_requested=true",
      ),
    );
  }
}
