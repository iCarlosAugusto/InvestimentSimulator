import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CompareInvestimentPage extends StatelessWidget {
  const CompareInvestimentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Comparar investimentos')),
      body: Container(
        height: 500,
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Valor liquído de resgate'),
            Expanded(
              child: BarChart(
                
                BarChartData(
                titlesData: FlTitlesData(
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false)
                  ),
                  rightTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false)
                  ),
                  bottomTitles: AxisTitles(
                    
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) => Text('a')
                    )
                  )
                  //bottomTitles: AxisTitles(axisNameWidget: Text('TESTE'))
                ),
                  barTouchData: BarTouchData(enabled: true),
                  borderData: FlBorderData(
                    border: const Border(
                    top: BorderSide.none,
                    right: BorderSide.none,
                    left: BorderSide.none,
                    bottom: BorderSide.none,
                  )),
                  groupsSpace: 10,
                  barGroups: [
                    BarChartGroupData(
                      barsSpace: 20,
            
                      x: 2, barRods: [
                      BarChartRodData(toY: 1, width: 60, color: Colors.amber, borderRadius: const BorderRadius.only(topLeft: Radius.circular(4), topRight: Radius.circular(4))),
                      BarChartRodData(toY: 12, width: 60, color: Colors.amber, borderRadius: const BorderRadius.only(topLeft: Radius.circular(4), topRight: Radius.circular(4))),
                      BarChartRodData(toY: 100, width: 60, color: Colors.amber, borderRadius: const BorderRadius.only(topLeft: Radius.circular(4), topRight: Radius.circular(4))),
                      BarChartRodData(toY: 3, width: 60, color: Colors.amber, borderRadius: const BorderRadius.only(topLeft: Radius.circular(4), topRight: Radius.circular(4))),
                      BarChartRodData(
                        toY: 1,
                        width: 60, 
                        color: Colors.amber,
                        borderRadius: const BorderRadius.only(topLeft: Radius.circular(4), topRight: Radius.circular(4))
                        ),
                    ]),
            
                  ])),
            ),
          ],
        ),
      ),
    );
  }
}
