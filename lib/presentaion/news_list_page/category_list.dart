import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_feed/data/category_info.dart';
import 'package:news_feed/main.dart';

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.05,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoryItem(0),
          CategoryItem(1),
          CategoryItem(2),
          CategoryItem(3),
          CategoryItem(4),
          CategoryItem(5),
          CategoryItem(6),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  CategoryItem(this.categoryIndex);

  final int categoryIndex;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.05;
    final width = MediaQuery.of(context).size.width * 0.25;

    return Consumer(builder: (context, watch, child) {
      final _categoryListModel = watch(categoryListModel);

      return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: _categoryListModel.selectedCategoryIndex == categoryIndex
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
            _categoryListModel.selectedCategoryChanged(categoryIndex);
          },
          onLongPress: () {
            Tooltip(
              message: '${categories[categoryIndex].nameJa}',
            );
          },
        ),
      );
    });
  }
}
