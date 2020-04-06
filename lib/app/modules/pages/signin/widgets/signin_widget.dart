import 'package:anonymous/app/modules/pages/form/form.dart';
import 'package:anonymous/app/modules/pages/signin/signin_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class SigninWidget extends StatelessWidget {
  final controller = SigninController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anonymous"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 50, left: 50),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'Login'),
                onChanged: controller.changeLogin,
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Senha'),
                onChanged: controller.changePassword,
              ),
              SizedBox(
                height: 20,
              ),
              Observer(
                builder: (_) {
                  return Text('${controller.loginAndPassword}');
                },
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FormPage()));
                },
                child: Text("ENTRAR"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
