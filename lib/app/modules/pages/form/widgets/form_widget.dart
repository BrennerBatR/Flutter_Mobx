import 'package:anonymous/app/modules/pages/form/form_controller.dart';
import 'package:anonymous/app/modules/pages/form/widgets/input_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class FormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<FormController>(context);
    return Padding(
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
    );
  }
}
