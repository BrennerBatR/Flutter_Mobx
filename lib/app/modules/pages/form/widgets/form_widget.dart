import 'package:anonymous/app/modules/pages/form/form_controller.dart';
import 'package:anonymous/app/modules/pages/form/widgets/input_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class FormWidget extends StatelessWidget {
  final controller = FormController();
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
                return InputWidget(
                    errorText: controller.validateName(),
                    labeltext: "Name:",
                    maxLenght: 100,
                    onChanged: controller.client.changeName);
              },
            ),
            SizedBox(
              height: 20,
            ),
            Observer(
              builder: (_) {
                return InputWidget(
                    errorText: controller.validateEmail(),
                    labeltext: "Email:",
                    maxLenght: 100,
                    onChanged: controller.client.changeEmail);
              },
            ),
            Observer(
              builder: (_) {
                return RaisedButton(
                  onPressed: controller.isValid ? () {} : null,
                  child: Text("Salvar"),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
