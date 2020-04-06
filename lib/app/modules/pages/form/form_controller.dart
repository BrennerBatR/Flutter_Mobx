import 'package:anonymous/app/modules/models/client_model.dart';
import 'package:mobx/mobx.dart';
part 'form_controller.g.dart';

class FormController = _FormControllerBase with _$FormController;

abstract class _FormControllerBase with Store {
  var client = Client();

  String validateName() {
    if (client.name == null || client.name == '') {
      return "Campo obrigatório";
    }
    return null;
  }
}
