import 'package:flutter/cupertino.dart';

class IosInputWidget extends StatelessWidget {
  String label;
  var ctrl;

  IosInputWidget({
    @required this.label,
    @required this.ctrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: CupertinoTextField(
        placeholder: label,
        keyboardType: TextInputType.number,
        controller: ctrl,
      ),
    );
  }
}
