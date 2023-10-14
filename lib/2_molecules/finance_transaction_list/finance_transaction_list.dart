import 'package:finance_control_ui/finance_control_ui.dart';
import 'package:flutter/material.dart';

class FinanceTransactionList extends StatelessWidget {
  const FinanceTransactionList({
    super.key,
    required this.transactionsByMonth,
  });

  final List<dynamic> transactionsByMonth;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: transactionsByMonth.length,
      separatorBuilder: (context, index) => const Padding(
        padding: EdgeInsets.symmetric(vertical: 14),
        child: Divider(color: Colors.black26),
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  actionsAlignment: MainAxisAlignment.center,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FinanceText.b16(transactionsByMonth[index].category),
                      const SizedBox(height: 10),
                      FinanceText.b18(
                        formatMoney(transactionsByMonth[index].value ?? 0),
                        color: transactionsByMonth[index].add == true
                            ? AppColors.forestGreen
                            : AppColors.cherryRed,
                      ),
                      const SizedBox(height: 10),
                      FinanceText.b14(transactionsByMonth[index].description),
                      FinanceText.l12(transactionsByMonth[index].method),
                      FinanceText.l10(
                          formatDate(transactionsByMonth[index].time!)),
                    ],
                  ),
                );
              },
            );
          },
          child: Container(
            color: Colors.transparent,
            child: Row(
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
                  child: Center(
                    child: FinanceText.b16(
                      getInitial(transactionsByMonth[index].description),
                      color: AppColors.deepBlue,
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FinanceText.b14(
                        transactionsByMonth[index].description,
                        color: Colors.black,
                      ),
                      FinanceText.b14(
                        formatDate(transactionsByMonth[index].time!),
                        color: const Color(0xFF717E95),
                      ),
                    ],
                  ),
                ),
                FinanceText.b16(
                  formatMoney(transactionsByMonth[index].value ?? 0),
                  color: transactionsByMonth[index].add == true
                      ? AppColors.forestGreen
                      : AppColors.cherryRed,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
