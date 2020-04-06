import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final onChanged;
  final String labeltext;
  final String errorText;
  final int maxLenght;

  const InputWidget(
      {this.onChanged, this.labeltext, this.errorText, this.maxLenght});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      TextField(
          onChanged: onChanged,
          maxLength: maxLenght,
          decoration: InputDecoration(
            counterText: '',
              border: OutlineInputBorder(),
              labelText: labeltext,
              errorText: errorText)),
    ]);
  }
}
