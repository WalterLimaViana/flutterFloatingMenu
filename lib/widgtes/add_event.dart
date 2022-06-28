import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:intl/intl.dart';

class AddEvent extends StatefulWidget {
  AddEvent({Key? key}) : super(key: key);

  @override
  State<AddEvent> createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {
  final _formKey = GlobalKey<FormState>();
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
        String formattedDate = DateFormat('yyyy/MM/dd').format(newDate);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CloseButton(),
        actions: buildEditingActions(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  // Text('${date.year}/${date.month}/${date.day}'),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    child: Text(
                      date != null
                          ? date.toString()
                          : 'Nenhuma data Selecionada',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: _datePicker,
                    child: Text('Selecione a data'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> buildEditingActions() => [
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            primary: Colors.transparent,
            shadowColor: Colors.transparent,
          ),
          onPressed: () {},
          icon: Icon(Icons.done),
          label: Text('Salvar'),
        )
      ];
}
