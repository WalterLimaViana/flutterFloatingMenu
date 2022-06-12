import 'package:flutter/material.dart';
import 'package:flutter_floating_menu/delegates/fab_vertical_delegate.dart';

class FabMenuButton extends StatefulWidget {
  FabMenuButton({Key? key}) : super(key: key);

  @override
  State<FabMenuButton> createState() => _FabMenuButtonState();
}

class _FabMenuButtonState extends State<FabMenuButton> {
  final actionButtonColor = Colors.tealAccent.shade100;
  @override
  Widget build(BuildContext context) {
    return Flow(
      clipBehavior: Clip.none,
      delegate: FabVerticalDelegate(),
      children: [
        FloatingActionButton(
          child: const Icon(Icons.menu),
          onPressed: () {},
        ),
        FloatingActionButton(
          child: const Icon(Icons.camera_alt_rounded),
          onPressed: () {},
          backgroundColor: actionButtonColor,
        ),
        FloatingActionButton(
          child: const Icon(Icons.link),
          onPressed: () {},
          backgroundColor: actionButtonColor,
        ),
        FloatingActionButton(
          child: const Icon(Icons.attach_file),
          onPressed: () {},
          backgroundColor: actionButtonColor,
        ),
      ],
    );
  }
}
