import 'package:anonymous/app/modules/pages/signin/widgets/signin_widget.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatefulWidget {
  SigninPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  @override
  Widget build(BuildContext context) {
    return SigninWidget();
  }
}
