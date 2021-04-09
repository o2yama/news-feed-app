import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_feed/presentaion/home_page.dart';
import 'package:news_feed/presentaion/home_page_model.dart';
import 'package:news_feed/presentaion/news_list_page/news_list_model.dart';
import 'presentaion/news_list_page/category_list_model.dart';

const MaterialColor customSwatch = const MaterialColor(
  0xFFA4C639,
  const <int, Color>{
    50: Color(0xFFF5FCF1),
    100: Color(0xFFE5F9DD),
    200: Color(0xFFD4F5C6),
    300: Color(0xFFC2F0AF),
    400: Color(0xFFB5ED9D),
    500: Color(0xFFA8EA8C),
    600: Color(0xFFA0E784),
    700: Color(0xFF97E479),
    800: Color(0xFF8DE16F),
    900: Color(0xFF7DDB5C),
  },
);

final homePageModel = ChangeNotifierProvider((ref) => HomePageModel());
final categoryListModel = ChangeNotifierProvider((ref) => CategoryListModel());
final newsListModel = ChangeNotifierProvider((ref) => NewsListModel());

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'テストニュースアプリ',
      theme: ThemeData(
        primarySwatch: customSwatch,
        accentColor: Colors.green,
        appBarTheme: AppBarTheme(
          centerTitle: true,
          color: customSwatch[100],
        ),
      ),
      home: HomePage(),
    );
  }
}
