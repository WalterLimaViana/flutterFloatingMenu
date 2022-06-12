import 'package:flutter/material.dart';
import 'package:flutter_floating_menu/widgtes/fab_menu_button.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Barbearia Pirate'),
      ),
      body: Column(),
      floatingActionButton: FabMenuButton(),
    );
  }
}
