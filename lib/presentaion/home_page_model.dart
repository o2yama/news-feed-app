import 'package:flutter/cupertino.dart';

class HomePageModel extends ChangeNotifier {
  int currentIndex = 0;

  void changeCurrentIndex(int i) {
    currentIndex = i;
    notifyListeners();
  }
}
