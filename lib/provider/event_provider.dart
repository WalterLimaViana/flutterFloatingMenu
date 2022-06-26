import 'dart:math';

import 'package:appBarbearia/models/events.dart';
import 'package:flutter/cupertino.dart';

class EventProvider extends ChangeNotifier {
  final List<Events> _events = [];

  List<Events> get events => _events;

  DateTime _selectedDate = DateTime.now();

  DateTime get selectedDate => _selectedDate;

  void setDate(DateTime date) => _selectedDate = date;

  List<Events> get eventsOfSelectedDate => _events;

  void addEvent(Events event) {
    _events.add(event);

    notifyListeners();
  }
}
