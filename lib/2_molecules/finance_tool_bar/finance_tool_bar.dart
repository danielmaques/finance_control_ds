import 'package:flutter/material.dart';

import '../../finance_control_ui.dart';

class FinanceToolBar extends StatefulWidget {
  const FinanceToolBar({
    super.key,
    required this.onTapBank,
    required this.onTapCard,
    required this.selectBank,
    required this.selectCard,
  });

  final bool selectCard;
  final bool selectBank;
  final Function() onTapBank;
  final Function() onTapCard;

  @override
  State<FinanceToolBar> createState() => _FinanceToolBarState();
}

class _FinanceToolBarState extends State<FinanceToolBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            FinanceToolBarItem(
              title: 'Bancos',
              label: 'Contas Bancárias',
              icon: Icons.account_balance_outlined,
              select: widget.selectBank,
              onTap: widget.onTapBank,
            ),
            const SizedBox(width: 20),
            FinanceToolBarItem(
              title: 'Cartões',
              label: 'Cartões de Crédito',
              icon: Icons.credit_card,
              select: widget.selectCard,
              onTap: widget.onTapCard,
            ),
          ],
        ),
      ),
    );
  }
}
