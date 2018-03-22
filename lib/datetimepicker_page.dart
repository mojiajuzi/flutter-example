import 'package:flutter/material.dart';
import 'dart:async';

class MyDateTimePicker extends StatefulWidget {
  @override
  _MyDateTimePickerState createState() => new _MyDateTimePickerState();
}

class _MyDateTimePickerState extends State<MyDateTimePicker> {
  Future<Null> _datepicker() async {
    var selectedTime = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2018, 1, 1),
        lastDate: DateTime(2028, 10, 10),
        initialDatePickerMode: DatePickerMode.year);
    print(selectedTime);
  }

  Future<Null> _timepicker() async {
    var selectedTime =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    print(selectedTime);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Dialog demo'),
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
            onPressed: _datepicker,
            child: Text('Show DateTime'),
          ),
        ),
      ),
    );
  }
}
