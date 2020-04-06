import 'package:anonymous/app/modules/pages/form/form_controller.dart';
import 'package:anonymous/app/modules/pages/signin/signin.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<FormController>(
          create: (_) => FormController(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SigninPage(title: 'Anonymous'),
      ),
    );
  }
}
