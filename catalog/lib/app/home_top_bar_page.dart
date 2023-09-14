import 'package:catalog/app/widgets/component_doc_template.dart';
import 'package:finance_control_ui/finance_control_ui.dart';
import 'package:flutter/material.dart';

class HomeTopBarPage extends StatelessWidget {
  const HomeTopBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ComponentDocTemplate(
          title: 'FinanceHomeTopBar',
          code:
              'FinanceHomeTopBar(addRoute: () {},removeRoute: () {},transactionRoute: () {},menuRoute: () {},),',
          component: FinanceHomeTopBar(
            addRoute: () {},
            removeRoute: () {},
            transactionRoute: () {},
            menuRoute: () {},
          ),
        ),
      ],
    );
  }
}
