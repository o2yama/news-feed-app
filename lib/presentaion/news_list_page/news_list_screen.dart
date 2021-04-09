import 'package:flutter/material.dart';
import 'package:news_feed/presentaion/news_list_page/search_bar.dart';
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
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: height * 0.2,
            title: Column(
              children: [
                SearchBar(
                  onSearched: (text) {
                    getNews(text);
                  },
                ),
                SizedBox(height: 8),
                CategoryList(),
              ],
            ),
          ),
          body: Column(
            children: [],
          ),
        ),
      ),
    );
  }

  void getNews(String text) {
    // todo:ニュース情報取得
    print(text);
  }
}
