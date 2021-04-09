import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_feed/data/category_info.dart';
import 'package:news_feed/main.dart';

class CategoryList extends StatelessWidget {
  CategoryList({this.onSelected});
  final ValueChanged onSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.05,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoryItem(0, onSelected),
          CategoryItem(1, onSelected),
          CategoryItem(2, onSelected),
          CategoryItem(3, onSelected),
          CategoryItem(4, onSelected),
          CategoryItem(5, onSelected),
          CategoryItem(6, onSelected),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  CategoryItem(this.categoryIndex, this.onSelected);

  final int categoryIndex;
  final ValueChanged onSelected;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.05;
    final width = MediaQuery.of(context).size.width * 0.25;

    return Consumer(builder: (context, watch, child) {
      final _newsListModel = watch(newsListModel);

      return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: _newsListModel.selectedCategoryIndex == categoryIndex
            ? customSwatch[400]
            : Colors.white,
        elevation: 1,
        child: InkWell(
          child: SizedBox(
            height: height,
            width: width,
            child: Center(
              child: FittedBox(
                child: Text(categories[categoryIndex].nameJa),
              ),
            ),
          ),
          onTap: () {
            _newsListModel.selectedCategoryChanged(categoryIndex);
            onSelected(_newsListModel.selectedCategoryIndex);
          },
        ),
      );
    });
  }
}
