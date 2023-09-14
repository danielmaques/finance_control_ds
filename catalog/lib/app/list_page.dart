import 'package:catalog/app/widgets/component_doc_template.dart';
import 'package:finance_control_ui/finance_control_ui.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ComponentDocTemplate(
          title: 'FinanceTransactionList',
          code: '',
          component: FinanceTransactionList(
            dateTime: DateTime.now(),
            transaction: const [
              {
                'descricao': 'Compra no Supermercado',
                'valor': 150.00,
                'add': false
              },
              {'descricao': 'Salário', 'valor': 2500.00, 'add': true},
              {'descricao': 'Venda de Produto', 'valor': 300.00, 'add': true},
              {
                'descricao': 'Pagamento de Aluguel',
                'valor': 800.00,
                'add': false
              },
            ],
          ),
        ),
      ],
    );
  }
}
