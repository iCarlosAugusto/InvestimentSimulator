import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Introdution extends StatefulWidget {
  const Introdution({super.key});

  @override
  State<Introdution> createState() => _IntrodutionState();
}

class _IntrodutionState extends State<Introdution> {
  bool isLastPage = false;
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: controller,
          onPageChanged: (value) {
            if (value == 2) {
              setState(() {
                isLastPage = true;
              });
            }
          },
          children: const <Widget>[
            Center(
              child: Text('Faça provas facilmente'),
            ),
            Center(
              child: Text('Tenha o controle das mensalidade de sues alunos'),
            ),
            Center(
              child: Text('Prepare suas aulas rapidamente'),
            ),
          ],
        ),
        Container(
            alignment: const Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: () {
                      context.goNamed('home');
                    },
                    child: const Text('Pular')),
                SmoothPageIndicator(controller: controller, count: 3),
                TextButton(
                    onPressed: () {
                      if (controller.page != 2) {
                        controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                        return;
                      }
                      context.goNamed('home');
                    },
                    child: Text(isLastPage ? 'Finalizar' : 'Próximo')),
              ],
            ))
      ],
    ));
  }
}
