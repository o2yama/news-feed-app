import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_feed/data/category_info.dart';
import 'package:news_feed/data/search_type.dart';
import 'package:news_feed/presentaion/news_list_page/news_list_model.dart';
import 'package:news_feed/presentaion/news_list_page/search_bar.dart';
import '../../main.dart';
import 'category_list.dart';

class NewsListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Consumer(builder: (context, watch, child) {
          final _newsListModel = watch(newsListModel);
          return Scaffold(
            appBar: AppBar(
              toolbarHeight: height * 0.2,
              title: Column(
                children: [
                  SearchBar(
                    onSearched: (text) {
                      getNewsByKeyword(text, _newsListModel);
                    },
                  ),
                  SizedBox(height: 8),
                  CategoryList(
                    onSelected: (i) {
                      getNewsByCategory(i, _newsListModel);
                    },
                  ),
                ],
              ),
            ),
            body: Container(),
          );
        }),
      ),
    );
  }

  getNewsByKeyword(String text, NewsListModel newsListModel) {
    newsListModel.getNews(
      searchType: SearchType.KEYWORD,
      keyword: text,
      category: categories[0],
    );
  }

  getNewsByCategory(int categoryIndex, NewsListModel newsListModel) {
    newsListModel.getNews(
      searchType: SearchType.CATEGORY,
      category: categories[categoryIndex],
    );
  }
}
