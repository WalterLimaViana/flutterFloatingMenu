import 'package:flutter/material.dart';
import 'package:flutter_floating_menu/delegates/fab_vertical_delegate.dart';

class FabMenuButton extends StatefulWidget {
  FabMenuButton({Key? key}) : super(key: key);

  @override
  State<FabMenuButton> createState() => _FabMenuButtonState();
}

class _FabMenuButtonState extends State<FabMenuButton>
    with SingleTickerProviderStateMixin {
  final actionButtonColor = Colors.tealAccent.shade100;
  late final AnimationController animation;
  final menuIsOpen = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
    animation =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200));
  }

  @override
  void dispose() {
    animation.dispose();
    super.dispose();
  }

  toggleMenu() {
    menuIsOpen.value ? animation.reverse() : animation.forward();
    menuIsOpen.value = !menuIsOpen.value;
  }

  @override
  Widget build(BuildContext context) {
    return Flow(
      clipBehavior: Clip.none,
      delegate: FabVerticalDelegate(animation: animation),
      children: [
        FloatingActionButton(
          child: AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            progress: animation,
          ),
          onPressed: () => toggleMenu(),
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