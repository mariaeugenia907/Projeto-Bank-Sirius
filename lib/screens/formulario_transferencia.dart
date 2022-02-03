import 'package:bank_sirius/components/editor.dart';
import 'package:bank_sirius/models/transferencias.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class FormularioTransferencia extends StatefulWidget {
  FormularioTransferencia({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return FormularioTransferenciaState();
  }
}

class FormularioTransferenciaState extends State<FormularioTransferencia> {
  final TextEditingController _controladorCampoNumeroConta =
  TextEditingController();
  final TextEditingController _controladorCampoAgencia =
  TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Criando Transferência'),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Editor(
              controlador: _controladorCampoNumeroConta,
              rotulo: 'Numero da conta',
              dica: '000000-0'),
          Editor(
              controlador: _controladorCampoAgencia,
              rotulo: 'Agencia',
              dica: '00-0'),
          Editor(
              controlador: _controladorCampoValor,
              rotulo: 'Valor',
              dica: '0.00',
              icone: Icons.monetization_on),
          ElevatedButton(
              child: const Text("Confirmar"),
              onPressed: () {
                return criarTransferencia(context);
              })
        ]),
      ),
    );
  }

  void criarTransferencia(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables
    final int? numeroConta = int.tryParse(_controladorCampoNumeroConta.text);
    // ignore: prefer_typing_uninitialized_variables
    final double? valor = double.tryParse(_controladorCampoValor.text);

    if (numeroConta != null && valor != null) {
      final transferenciaCriada = Transferencia(valor, numeroConta);
      debugPrint('transferenciaCriada');
      debugPrint('$transferenciaCriada');
      Navigator.pop(context, transferenciaCriada);
    }
  }
}