import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:help_teacher/components/card_option_widget.dart';

class FixedFinancePage extends StatelessWidget {
  const FixedFinancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Comparações',),
            Container(
              margin: const EdgeInsets.all(5.0),
              height: 100,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) => const CardOptionWidget(),
                itemCount: 10,
                separatorBuilder: (context, index) => const Padding(padding: EdgeInsets.all(5)),
              ),
            ),

            const Text('Tabelas',),
            Container(
              margin: const EdgeInsets.all(5.0),
              height: 100,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) => const CardOptionWidget(),
                itemCount: 10,
                separatorBuilder: (context, index) => const Padding(padding: EdgeInsets.all(5)),
              ),
            ),

            ElevatedButton(
              onPressed: (){
                context.pushNamed('investmentSimulator');
              } , child: const Text('Simular investimento')
            )
          ],
        ),
      )),
    );
  }
}
