import 'package:mobx/mobx.dart';
part 'signin_controller.g.dart';

class SigninController = _SigninControllerBase with _$SigninController;

abstract class _SigninControllerBase with Store {
  @observable
  String login = '';

  @observable
  String password = '';

  @computed
  String get loginAndPassword => "$login $password";

  @action
  changeLogin(String newLogin) {
    login = newLogin;
  }

  @action
  changePassword(String newPassword) {
    password = newPassword;
  }
}
