import 'package:catalog/app/widgets/component_doc_template.dart';
import 'package:finance_control_ui/finance_control_ui.dart';
import 'package:flutter/material.dart';

class TextFieldPage extends StatelessWidget {
  const TextFieldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 30),
        FinanceTextField(),
        SizedBox(height: 30),
        ComponentDocTemplate(
          title: 'label',
          code: 'label: text',
          component: FinanceTextField(
            label: 'Text',
          ),
        ),
        ComponentDocTemplate(
          title: 'obscureText',
          code: 'obscureText: true',
          component: FinanceTextField(
            obscureText: true,
          ),
        ),
        ComponentDocTemplate(
          title: 'iconData',
          code: 'iconData: Icons.abc',
          component: FinanceTextField(
            iconData: Icons.abc,
          ),
        ),
        ComponentDocTemplate(
          title: 'hintText',
          code: 'hintText: text',
          component: FinanceTextField(
            hintText: 'text',
          ),
        ),
        ComponentDocTemplate(
          title: 'labelText',
          code: 'labelText: text',
          component: FinanceTextField(
            labelText: 'Text',
          ),
        ),
      ],
    );
  }
}
