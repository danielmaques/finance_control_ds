import 'package:finance_control_ui/2_molecules/finance_top_bar/finance_add_transaction_top_bar.dart';
import 'package:flutter/material.dart';

import 'widgets/component_doc_template.dart';

class TransactionTopBarPage extends StatelessWidget {
  const TransactionTopBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ComponentDocTemplate(
          title: 'titleLarge',
          code:
              'FinanceAddTransactionAppBar(onChanged: (p0) {},onPressed: () {},),',
          component: FinanceAddTransactionAppBar(
            onChanged: (p0) {},
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
