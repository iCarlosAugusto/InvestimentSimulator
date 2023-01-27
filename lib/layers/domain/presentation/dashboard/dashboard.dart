import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:help_teacher/layers/domain/controllers/exam_controller.dart';
import 'package:help_teacher/layers/domain/providers/setup.dart';

enum SingingCharacter { lafayette, jefferson }

class Dashboard extends StatefulWidget {
  final String? questionsRecived;
  const Dashboard({super.key, this.questionsRecived});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Painel')),
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            TextButton(
              child: const Text('Comparar rendimentos de CDB e LCI'),
              onPressed: () {
                context.pushNamed('cdbLciCompare');
              },
            )
          ],
        ),
      ),
    );
  }
}
