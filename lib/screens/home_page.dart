import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_feed/screens/presentation/about_news.dart';
import 'package:news_feed/screens/presentation/news_list.dart';
import 'package:news_feed/screens/presentation/top_news.dart';

final _pagesProvider = ChangeNotifierProvider(
  (ref) => Pages(),
);

class Pages extends ChangeNotifier {
  int _currentIndex = 0;

  final pages = [
    TopNewsScreen(),
    NewsListScreen(),
    AboutNewsScreen(),
  ];

  void _changeCurrentIndex(int i) {
    _currentIndex = i;
    notifyListeners();
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Consumer(builder: (context, watch, child) {
        final pageIndex = watch(_pagesProvider);
        return Scaffold(
          body: watch(_pagesProvider).pages[pageIndex._currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            onTap: (i) {
              watch(_pagesProvider)._changeCurrentIndex(i);
            },
            currentIndex: context.read(_pagesProvider)._currentIndex,
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
