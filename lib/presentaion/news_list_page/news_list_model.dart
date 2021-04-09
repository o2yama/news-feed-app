import 'package:flutter/cupertino.dart';
import 'package:news_feed/data/category_info.dart';
import 'package:news_feed/data/search_type.dart';

class NewsListModel extends ChangeNotifier {
  ///カテゴリー関連
  int selectedCategoryIndex = 0;

  void selectedCategoryChanged(int i) {
    selectedCategoryIndex = i;
    notifyListeners();
  }

  ///検索バー関連
  SearchType _searchType = SearchType.CATEGORY;
  SearchType get searchType => _searchType;

  Category _category = categories[0];
  Category get category => _category;

  String _keyword = '';
  String get keyword => _keyword;

  bool isLoading = false;

  void getNews(
      {@required SearchType searchType, String keyword, Category category}) {
    //todo: ニュース取得
  }
}
