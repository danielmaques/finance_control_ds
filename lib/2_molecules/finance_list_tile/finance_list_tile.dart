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
    return Column(
      children: [
        GestureDetector(
          onTap: () => onTap(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FinanceText.p16('Gastos'),
              Icon(
                Icons.arrow_forward_ios_rounded,
                size: 18,
                color: Colors.grey[500],
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Material(
          elevation: 1,
          borderRadius: BorderRadius.circular(16),
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: transactions.isEmpty
                ? SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.close,
                          color: AppColors.slateGray,
                        ),
                        FinanceText.p16(
                          'Nenhuma transação encontrada',
                          color: AppColors.slateGray,
                        ),
                      ],
                    ),
                  )
                : lits,
          ),
        ),
      ],
    );
  }
}
