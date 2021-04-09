import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_feed/screens/home_page.dart';
import 'package:news_feed/style.dart';

const int _PrimaryValue = 0xFFA8EA8C;

const MaterialColor customSwatch = const MaterialColor(
  0xFFA4C639,
  const <int, Color>{
    50: Color(0xFFF5FCF1),
    100: Color(0xFFE5F9DD),
    200: Color(0xFFD4F5C6),
    300: Color(0xFFC2F0AF),
    400: Color(0xFFB5ED9D),
    500: Color(_PrimaryValue),
    600: Color(0xFFA0E784),
    700: Color(0xFF97E479),
    800: Color(0xFF8DE16F),
    900: Color(0xFF7DDB5C),
  },
);

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: BoldFont,
        primarySwatch: customSwatch,
      ),
      home: HomePage(),
    );
  }
}
