import 'package:finance_control_ui/finance_control_ui.dart';
import 'package:flutter/material.dart';

class FinanceCredtCardTile extends StatelessWidget {
  const FinanceCredtCardTile({
    super.key,
    required this.onTap,
    required this.list,
  });

  final Function() onTap;
  final Widget list;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FinanceText.p16(
                  'Contas',
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
                list,
              ],
            )),
      ),
    );
  }
}
