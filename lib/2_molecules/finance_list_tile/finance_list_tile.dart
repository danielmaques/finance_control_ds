import 'package:finance_control_ui/finance_control_ui.dart';
import 'package:flutter/material.dart';

class FinanceListTile extends StatelessWidget {
  const FinanceListTile({
    Key? key,
    required this.transactions,
    required this.onTap,
    required this.lits,
  }) : super(key: key);

  final List transactions;
  final Function onTap;
  final Widget lits;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FinanceText.b14(
              'Transações',
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
            transactions.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.close,
                          color: AppColors.slateGray,
                        ),
                        FinanceText.b14(
                          'Nenhuma transação encontrada',
                          color: AppColors.slateGray,
                        ),
                      ],
                    ),
                  )
                : lits,
          ],
        ),
      ),
    );
  }
}
