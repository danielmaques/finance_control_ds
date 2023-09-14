import 'package:catalog/app/widgets/component_doc_template.dart';
import 'package:finance_control_ui/finance_control_ui.dart';
import 'package:flutter/material.dart';

class CheckBoxPage extends StatelessWidget {
  const CheckBoxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ComponentDocTemplate(
          title: 'FinanceCheckBox',
          code: 'FinanceCheckBox(label: Menu, isChecked: true)',
          component: FinanceCheckBox(
            label: 'Menu',
            isChecked: true,
          ),
        ),
      ],
    );
  }
}
