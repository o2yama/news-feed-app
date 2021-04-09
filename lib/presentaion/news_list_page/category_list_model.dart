import 'package:flutter/cupertino.dart';

class CategoryListModel extends ChangeNotifier {
  int selectedCategoryIndex = 0;

  void selectedCategoryChanged(int i) {
    selectedCategoryIndex = i;
    notifyListeners();
  }
}
