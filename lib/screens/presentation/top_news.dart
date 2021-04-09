import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_feed/style.dart';

class TopNewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Center(
            child: Text(
              'トップにゅーす！',
              style: TextStyle(
                fontFamily: BoldFont,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
