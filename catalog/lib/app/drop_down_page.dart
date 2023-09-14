import 'package:catalog/app/widgets/component_doc_template.dart';
import 'package:finance_control_ui/finance_control_ui.dart';
import 'package:flutter/material.dart';

class DropDownPage extends StatelessWidget {
  const DropDownPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ComponentDocTemplate(
          title: 'FinanceMenu',
          code: 'FinanceMenu(label: text,icon: Icons.menu,onTap: () {},),',
          component: FinanceDropDown(
            hint: "Selecione uma categoria",
            categoriesList: ValueNotifier<List<dynamic>>(
              [
                'Item 1',
                'Item 2',
                'Item 3',
                'Item 4',
                'Item 5',
              ],
            ),
            onItemSelected: (p0) {},
            itemColors: const [
              Color(0xFFE57373),
              Color(0xFF81C784),
              Color(0xFF64B5F6),
              Color(0xFFFFD54F),
              Color(0xFFBA68C8),
              Color(0xFF4DB6AC),
              Color(0xFFFF8A65),
              Color(0xFFA1887F),
              Color(0xFF90A4AE),
              Color(0xFF7986CB),
              Color(0xFFD32F2F),
            ],
          ),
        ),
      ],
    );
  }
}
