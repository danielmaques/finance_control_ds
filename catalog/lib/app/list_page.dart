import 'package:catalog/app/widgets/component_doc_template.dart';
import 'package:finance_control_ui/finance_control_ui.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Mock de dados de transações
    final Map<String, List<Map<String, dynamic>>> mockTransactionsByMonth = {
      'Mar 2023': [
        {
          'descricao': 'Compra no Supermercado',
          'data': DateTime(2023, 3, 14),
          'valor': 150.50,
          'add': false,
        },
        {
          'descricao': 'Salário',
          'data': DateTime(2023, 3, 15),
          'valor': 2500.00,
          'add': true,
        },
      ],
      'Feb 2023': [
        {
          'descricao': 'Jantar em Restaurante',
          'data': DateTime(2023, 2, 20),
          'valor': 100.00,
          'add': false,
        },
      ],
    };

    return Column(
      children: [
        ComponentDocTemplate(
          title: 'FinanceTransactionList',
          code:
              '', // Você pode adicionar o código-fonte do componente aqui, se desejar
          component: FinanceTransactionList(
            transactionsByMonth: mockTransactionsByMonth,
            transactions: const {},
          ),
        ),
      ],
    );
  }
}
