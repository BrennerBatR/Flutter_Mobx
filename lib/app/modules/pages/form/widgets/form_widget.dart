import 'package:anonymous/app/modules/pages/form/form_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class FormWidget extends StatelessWidget {
  final controller = FormController();
  _textField({String labeltext, onChanged, String Function() errorText}) {
    return TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: labeltext,
            errorText: errorText == null ? null : errorText()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulário"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Observer(
              builder: (_) {
                return _textField(
                    errorText: controller.validateName,
                    labeltext: "name",
                    onChanged: controller.client.changeName);
              },
            )
          ],
        ),
      ),
    );
  }
}
