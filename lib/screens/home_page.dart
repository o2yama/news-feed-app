import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../main.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Consumer(builder: (context, watch, child) {
        final model = watch(homePageModel);
        return Scaffold(
          body: model.pages[model.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            onTap: (i) {
              model.changeCurrentIndex(i);
            },
            currentIndex: model.currentIndex,
            items: [
              BottomNavigationBarItem(
                label: 'トップニュース',
                icon: Icon(Icons.highlight),
              ),
              BottomNavigationBarItem(
                label: 'ニュース一覧',
                icon: Icon(Icons.list),
              ),
              BottomNavigationBarItem(
                label: 'このアプリについて',
                icon: Icon(Icons.fiber_new_sharp),
              ),
            ],
          ),
        );
      }),
    );
  }
}
