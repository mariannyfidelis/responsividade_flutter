import 'package:app_responsividade_studio/app_gastos/models/conta.dart';
import 'package:app_responsividade_studio/app_gastos/screens/home_screen/home_screen.dart';
import 'package:app_responsividade_studio/app_gastos/services/conta_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CadastrarContaScreen extends StatefulWidget {
  const CadastrarContaScreen({Key? key}) : super(key: key);

  @override
  _CadastrarContaScreenState createState() => _CadastrarContaScreenState();
}

class _CadastrarContaScreenState extends State<CadastrarContaScreen> {
  final _tituloController = new TextEditingController();
  final _saldoController = new TextEditingController();
  ContaService _contaService = new ContaService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastrar uma conta"),
        backgroundColor: Color(0xFF07436A),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: _tituloController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "Título",
                  ),
                ),
                TextFormField(
                  controller: _saldoController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Saldo",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          Conta c = Conta(
                              titulo: _tituloController.text,
                              saldo: double.parse(_saldoController.text));
                          _contaService.addConta(c);
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (ctx) => HomeScreen()));
                          print(c);
                        },
                        child: Text("Cadastrar conta"),
                        style: ButtonStyle(
                            textStyle: MaterialStateProperty.resolveWith(
                                (states) => TextStyle(
                                    color: Colors.white, fontSize: 16)),
                            backgroundColor: MaterialStateColor.resolveWith(
                                (states) => Color(0xFF07436A)))),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
