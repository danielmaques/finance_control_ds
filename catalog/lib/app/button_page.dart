import 'package:finance_control_ui/finance_control_ui.dart';
import 'package:flutter/material.dart';

import 'widgets/component_doc_template.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ComponentDocTemplate(
          title: 'FinanceButton',
          code: 'FinanceButton(title: title)',
          component: FinanceButton(
            title: 'title',
            disabled: false,
            onTap: () {},
          ),
        ),
        ComponentDocTemplate(
          title: 'disabled',
          code: 'disabled: true',
          component: FinanceButton(
            title: 'title',
            disabled: true,
            onTap: () {},
          ),
        ),
        ComponentDocTemplate(
          title: 'loading',
          code: 'loading: true',
          component: FinanceButton(
            title: 'title',
            loading: true,
            onTap: () {},
          ),
        ),
        ComponentDocTemplate(
          title: 'icon',
          code: 'icon: Icons.menu',
          component: FinanceButton(
            title: 'title',
            icon: Icons.menu,
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
