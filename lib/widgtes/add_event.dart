import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';

class AddEvent extends StatefulWidget {
  AddEvent({Key? key}) : super(key: key);

  @override
  State<AddEvent> createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {
  static Widget _eventIcon = new Container(
    decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(1000)),
        border: Border.all(color: Colors.blue, width: 2.0)),
    child: new Icon(
      Icons.person,
      color: Colors.amber,
    ),
  );
  EventList<Event> _markedDateMap = new EventList<Event>(
    events: {},
  );

  DateTime? date;

  void _datePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2022),
      lastDate: DateTime(2025),
    ).then((newDate) {
      if (newDate == null) {
        return;
      }
      setState(() {
        date = newDate;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agendamentos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Text('Selecione o dia:'),
              // Text('${date.year}/${date.month}/${date.day}'),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: _datePicker,
                child: Text('Selecione a data'),
              ),
              Container(
                  child: Text(
                date != null ? date.toString() : 'Nenhuma data Selecionada',
                style: TextStyle(fontSize: 30),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
