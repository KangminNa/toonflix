import 'dart:io';
import 'package:flutter/material.dart';
import 'package:toonflix/screens/home_screen.dart';

// 방법 2. (global override)
// [main.dart]
class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..userAgent =
          'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36';
  }
}

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSwatch(backgroundColor: const Color(0xffe7626c)),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Color(0xff232b55),
          ),
        ),
        cardColor: const Color(0xfff4eddb),
      ),
      home: HomeScreen(),
    );
  }
}
