import 'package:flutter/material.dart';

class NewsListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Center(
            child: Text('ニュース一覧だよ'),
          ),
        ),
      ),
    );
  }
}
