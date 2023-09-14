import 'package:catalog/app/widgets/component_doc_template.dart';
import 'package:finance_control_ui/finance_control_ui.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  ListPage({super.key});

  // Mock de dados
  final Map<String, List<Map<String, dynamic>>> mockTransactionsByMonth = {
    'Mar 2023': [
      {
        'descricao': 'Compra no Supermercado',
        'data': '2023-03-15T10:30:00Z',
        'valor': 150.50,
        'add': false
      },
      {
        'descricao': 'Compra no Supermercado',
        'data': '2023-03-15T10:30:00Z',
        'valor': 150.50,
        'add': false
      },
      {
        'descricao': 'Compra no Supermercado',
        'data': '2023-03-15T10:30:00Z',
        'valor': 150.50,
        'add': false
      },
      {
        'descricao': 'Salário',
        'data': '2023-03-01T00:00:00Z',
        'valor': 2500.00,
        'add': true
      },
    ],
    'Feb 2023': [
      {
        'descricao': 'Jantar em Restaurante',
        'data': '2023-02-20T19:30:00Z',
        'valor': 100.00,
        'add': false
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ComponentDocTemplate(
          title: 'FinanceTransactionList',
          code:
              '', // Você pode adicionar o código-fonte do componente aqui, se desejar
          component: FinanceTransactionList(
            transactionsByMonth: mockTransactionsByMonth,
          ),
        ),
      ],
    );
  }
}
