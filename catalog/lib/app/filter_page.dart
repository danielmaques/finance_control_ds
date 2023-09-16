import 'package:catalog/app/widgets/component_doc_template.dart';
import 'package:finance_control_ui/finance_control_ui.dart';
import 'package:flutter/material.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ComponentDocTemplate(
          title: 'FinanceMenu',
          code: 'FinanceMenu(label: text,icon: Icons.menu,onTap: () {},),',
          component: FinanceFilter(),
        ),
      ],
    );
  }
}
