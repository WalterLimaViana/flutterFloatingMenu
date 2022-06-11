import 'package:flutter/material.dart';
import 'package:flutter_floating_menu/pages/button_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter FAB Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: ButtonPage(),
    );
  }
}
