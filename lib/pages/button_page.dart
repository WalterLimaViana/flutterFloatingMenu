import 'package:flutter/material.dart';
import 'package:flutter_floating_menu/widgtes/fab_menu_button.dart';

class ButtonPage extends StatefulWidget {
  ButtonPage({Key? key}) : super(key: key);

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FabMenuButton(),
    );
  }
}
