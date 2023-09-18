import 'package:finance_control_ui/finance_control_ui.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'widgets/component_doc_template.dart';

class SpendingTilePage extends StatelessWidget {
  const SpendingTilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ComponentDocTemplate(
          title: 'FinanceMenu',
          code: 'FinanceMenu(label: text,icon: Icons.menu,onTap: () {},),',
          component:
              FinanceSpendingTile(spending: 5400, onTap: () {}, sections: [
            PieChartSectionData(
              color: Colors.red,
              value: 10,
              radius: 20,
              title: '',
            ),
            PieChartSectionData(
              color: Colors.amber,
              value: 10,
              radius: 20,
              title: '',
            ),
            PieChartSectionData(
              color: Colors.green,
              value: 10,
              radius: 20,
              title: '',
            ),
            PieChartSectionData(
              color: Colors.grey,
              value: 10,
              radius: 20,
              title: '',
            ),
            PieChartSectionData(
              color: Colors.pink,
              value: 10,
              radius: 20,
              title: '',
            ),
            PieChartSectionData(
              color: Colors.purple,
              value: 10,
              radius: 20,
              title: '',
            ),
            PieChartSectionData(
              color: Colors.tealAccent,
              value: 10,
              radius: 20,
              title: '',
            ),
            PieChartSectionData(
              color: Colors.amber,
              value: 10,
              radius: 20,
              title: '',
            ),
            PieChartSectionData(
              color: Colors.blue,
              value: 10,
              radius: 20,
              title: '',
            ),
            PieChartSectionData(
              color: Colors.black,
              value: 10,
              radius: 20,
              title: '',
            ),
          ]),
        ),
      ],
    );
  }
}
