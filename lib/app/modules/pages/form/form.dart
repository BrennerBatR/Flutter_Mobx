import 'package:anonymous/app/modules/pages/form/widgets/form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import 'form_controller.dart';

class FormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<FormController>(context);
    return Scaffold(
        appBar: AppBar(title: Observer(
          builder: (_) {
            return Text(controller.isValid
                ? "Formulário válido"
                : "Formuládio inválido");
          },
        )),
        body: FormWidget());
  }
}
