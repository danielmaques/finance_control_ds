import 'package:catalog/app/widgets/component_doc_template.dart';
import 'package:finance_control_ui/finance_control_ui.dart';
import 'package:flutter/material.dart';

class ListTilePage extends StatelessWidget {
  const ListTilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ComponentDocTemplate(
          title: 'FinanceMenu',
          code: 'FinanceMenu(label: text,icon: Icons.menu,onTap: () {},),',
          component: FinanceListTile(
            transactions: [
              {
                'descricao': 'Payment',
                'data': DateTime(2023, 9, 14),
                'valor': 25.00,
                'add': true,
              },
              {
                'descricao': 'Shopping',
                'data': DateTime(2023, 9, 13),
                'valor': 15.00,
                'add': false,
              },
              {
                'descricao': 'Groceries',
                'data': DateTime(2023, 9, 12),
                'valor': 5.00,
                'add': false,
              },
              {
                'descricao': 'Salary',
                'data': DateTime(2023, 9, 10),
                'valor': 50.00,
                'add': true,
              },
              {
                'descricao': 'Refund',
                'data': DateTime(2023, 9, 9),
                'valor': 2.00,
                'add': true,
              },
            ],
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
