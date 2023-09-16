import 'package:finance_control_ui/finance_control_ui.dart';
import 'package:flutter/material.dart';

class FinanceTransactionList extends StatelessWidget {
  const FinanceTransactionList({
    super.key,
    required this.transactionsByMonth,
  });

  final Map<String, List<Map<String, dynamic>>> transactionsByMonth;

  @override
  Widget build(BuildContext context) {
    String getInitial(String name) {
      return name.isNotEmpty ? name[0].toUpperCase() : '?';
    }

    return ListView.separated(
      itemCount: transactionsByMonth.keys.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => const SizedBox(height: 20),
      itemBuilder: (context, index) {
        String month = transactionsByMonth.keys.elementAt(index);
        List<Map<String, dynamic>> transactionsForMonth =
            transactionsByMonth[month]!;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Cabeçalho do mês
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 14),
              child: FinanceText.p16(
                month,
                color: const Color(0xFF717E95),
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: transactionsForMonth.length,
              separatorBuilder: (context, index) => const Padding(
                padding: EdgeInsets.symmetric(vertical: 14),
                child: Divider(color: Colors.black26),
              ),
              itemBuilder: (context, index) {
                final currentTransaction = transactionsForMonth[index];

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
                            mainAxisSize: MainAxisSize
                                .min, // Para limitar o tamanho do AlertDialog ao conteúdo
                            children: [
                              FinanceText.p18(currentTransaction['categoria']),
                              const SizedBox(height: 10),
                              FinanceText.h4(
                                formatMoney(currentTransaction['valor']),
                                color: currentTransaction['add'] == true
                                    ? AppColors.forestGreen
                                    : AppColors.cherryRed,
                              ),
                              const SizedBox(height: 10),
                              FinanceText.p16(currentTransaction['descricao']),
                              FinanceText.p14(currentTransaction['pagamento']),
                              FinanceText.p12(formatDate(
                                  currentTransaction['data'].toDate())),
                            ],
                          ),
                        );
                      },
                    );
                  },
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
                          child: FinanceText.p18(
                            getInitial(currentTransaction['descricao']),
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
                            FinanceText.p16(
                              currentTransaction['descricao'],
                              color: Colors.black,
                            ),
                            FinanceText.p16(
                              formatDate(currentTransaction['data'].toDate()),
                              color: const Color(0xFF717E95),
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
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
