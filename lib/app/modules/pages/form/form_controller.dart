import 'package:anonymous/app/modules/models/client_model.dart';
import 'package:mobx/mobx.dart';
part 'form_controller.g.dart';

class FormController = _FormControllerBase with _$FormController;

abstract class _FormControllerBase with Store {
  var client = Client();

  @computed
  bool get isValid {
    return validateName() == null && validateEmail() == null ;
  }

  String validateName() {
    if (client.name == null || client.name.isEmpty) {
      return "Campo obrigatório";
    }
    return null;
  }

  String validateEmail() {
    if (client.email == null || client.email.isEmpty) {
      return "Campo obrigatório";
    } else if (!client.email.contains('@')) return "Email inválido";
    return null;
  }

  String validateCpf() {
    if (client.cpf == null || client.cpf.length != 11) {
      return "Campo obrigatório";
    }
    return null;
  }
}
