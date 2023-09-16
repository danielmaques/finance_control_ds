import 'package:finance_control_ui/finance_control_ui.dart';
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
          component: FinanceSpendingTile(
            spending: 5400,
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
