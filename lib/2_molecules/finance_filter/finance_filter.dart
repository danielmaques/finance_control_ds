import 'package:finance_control_ui/1_atoms/finance_text_field/finance_text_field.dart';
import 'package:flutter/material.dart';

class FinanceFilter extends StatelessWidget {
  const FinanceFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 3, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(children: [
        const Expanded(
          child: FinanceTextField(
            iconData: Icons.search,
          ),
        ),
        Container(
          width: 100,
          height: 30,
          color: Colors.amber,
        ),
      ]),
    );
  }
}
