import 'package:flutter/material.dart';

class CardOptionWidget extends StatelessWidget {
  const CardOptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: 150,
      height: 100,
      decoration: const BoxDecoration(
        color: Colors.black26,
        borderRadius:  BorderRadius.all(Radius.circular(5))
      ),
      child: Column(
        children: const [
          Align(
            alignment: Alignment.centerLeft,
            child: Icon(Icons.compare_arrows_rounded)
          ),
          Text('Compare CDB com LCI'),
        ],
      ),
    );
  }
}
