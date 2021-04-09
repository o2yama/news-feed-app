import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_feed/presentaion/top_news_page/top_news_screen.dart';
import 'about_app_page/about_app_screen.dart';
import '../main.dart';
import 'news_list_page/news_list_screen.dart';

class HomePage extends StatelessWidget {
  final _pages = [
    TopNewsScreen(),
    NewsListScreen(),
    AboutNewsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Consumer(builder: (context, watch, child) {
        final _homePageModel = watch(homePageModel);
        return Scaffold(
          body: _pages[_homePageModel.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: customSwatch[100],
            onTap: (i) {
              _homePageModel.changeCurrentIndex(i);
            },
            currentIndex: _homePageModel.currentIndex,
            items: [
              const BottomNavigationBarItem(
                label: 'トップニュース',
                icon: const Icon(Icons.highlight),
              ),
              const BottomNavigationBarItem(
                label: 'ニュース一覧',
                icon: const Icon(Icons.list),
              ),
              const BottomNavigationBarItem(
                label: 'このアプリについて',
                icon: const Icon(Icons.fiber_new_sharp),
              ),
            ],
          ),
        );
      }),
    );
  }
}
