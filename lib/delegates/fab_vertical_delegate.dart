import 'package:flutter/material.dart';

class FabVerticalDelegate extends FlowDelegate {
  FabVerticalDelegate() : super();

  @override
  void paintChildren(FlowPaintingContext context) {
    context.paintChild(
      0,
      transform: Matrix4.translationValues(320.0, 800.0, 0),
    );
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) => false;
}
