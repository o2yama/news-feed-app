import 'package:flutter/material.dart';

class AboutNewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Center(
            child: Text('アプリ紹介'),
          ),
        ),
      ),
    );
  }
}
