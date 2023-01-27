import 'package:flutter/material.dart';

class CdbLciCompare extends StatelessWidget {
  CdbLciCompare({super.key});

  final snackBar = SnackBar(
    content: const Text('Prova criada com sucesso!'),
    action: SnackBarAction(
      label: 'Ok',
      onPressed: () {
        // Some code to undo the change.
      },
    ),
  );
  var cdbTextfieldController = TextEditingController();
  var lciTextfieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Comparar rendimentos entre CDB e LCI')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              TextFormField(
                controller: cdbTextfieldController,
                decoration: const InputDecoration(hintText: 'CDB'),
              ),
              TextFormField(
                controller: lciTextfieldController,
                decoration: const InputDecoration(hintText: 'LCI/LCA'),
              ),
              ElevatedButton(onPressed: () {
                double lciValue = double.parse(lciTextfieldController.text);
                double cdbValue = double.parse(cdbTextfieldController.text);
                
                double cdbRes = lciValue / (1 - 20/100);
                double lciRes = cdbValue * (1 - 20/100);

              }, child: const Text('Comparar'))
            ],
          ),
        ),
      ),
    );
  }
}
