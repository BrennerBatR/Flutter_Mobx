import 'package:mobx/mobx.dart';
part 'client_model.g.dart';

class Client = _ClientModel with _$Client;

abstract class _ClientModel with Store {
  @observable
  String name;
  @action
  changeName(String value) => name = value;

  @observable
  String email;
  changeEmail(String value) => email = value;

  @observable
  String cpf;
  changeCpf(String value) => cpf = value;
}
