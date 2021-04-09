import 'package:flutter/cupertino.dart';
import 'package:news_feed/screens/presentation/about_news.dart';
import 'package:news_feed/screens/presentation/news_list.dart';
import 'package:news_feed/screens/presentation/top_news.dart';

class HomePageModel extends ChangeNotifier {
  int currentIndex = 0;

  final pages = [
    TopNewsScreen(),
    NewsListScreen(),
    AboutNewsScreen(),
  ];

  void changeCurrentIndex(int i) {
    currentIndex = i;
    notifyListeners();
  }
}
