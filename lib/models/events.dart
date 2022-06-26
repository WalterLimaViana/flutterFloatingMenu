import 'package:flutter/material.dart';

class Events {
  final String title;
  final String description;
  final DateTime from;
  final DateTime to;
  final Color backgroundColor;

  const Events({
    required this.title,
    required this.description,
    required this.from,
    required this.to,
    this.backgroundColor = Colors.lightBlue,
  });
}
