import 'dart:io';

import 'package:app_responsividade_studio/app_gastos/screens/cadastrar_conta/cadastrar_conta_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              Platform.isAndroid
                  ? CupertinoPageRoute(builder: (_) => CadastrarContaScreen())
              :MaterialPageRoute(builder: (_) => CadastrarContaScreen()));

        },
      ),
    );
  }
}
