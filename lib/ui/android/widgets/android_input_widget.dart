import 'package:flutter/material.dart';

class AndroidInputWidget extends StatelessWidget {
  String label;
  var ctrl;

  AndroidInputWidget({
    @required this.label,
    @required this.ctrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: label,
        ),
        keyboardType: TextInputType.number,
        controller: ctrl,
      ),
    );
  }
}
