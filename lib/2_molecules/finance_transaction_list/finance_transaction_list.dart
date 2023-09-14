import 'package:finance_control_ui/finance_control_ui.dart';
import 'package:flutter/material.dart';

class FinanceTransactionList extends StatelessWidget {
  const FinanceTransactionList({
    super.key,
    this.itemCount,
    required this.transaction,
    required this.dateTime,
  });

  final int? itemCount;
  final List<Map<String, dynamic>> transaction;
  final DateTime dateTime;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: itemCount ?? transaction.length,
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemBuilder: (context, index) {
        final currentTransaction = transaction[index];

        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                color: const Color(0xFFEEF2F8),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(
                Icons.battery_charging_full_rounded,
                color: AppColors.deepBlue,
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FinanceText.p16(
                    currentTransaction['descricao'],
                    color: AppColors.midnightBlack,
                  ),
                  FinanceText.p16(
                    formatDate(dateTime),
                    color: AppColors.slateGray,
                  ),
                ],
              ),
            ),
            FinanceText.p18(
              formatMoney(currentTransaction['valor']),
              color: currentTransaction['add'] == true
                  ? AppColors.forestGreen
                  : AppColors.cherryRed,
            ),
          ],
        );
      },
    );
  }
}
