import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:finance_control_ui/finance_control_ui.dart';
import 'package:flutter/material.dart';

class FinanceListTile extends StatelessWidget {
  const FinanceListTile({
    Key? key,
    required this.transactions,
    required this.onTap,
  }) : super(key: key);

  final List<Map<String, dynamic>> transactions;
  final Function onTap;

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
                          'Nenhuma transação encontrada',
                          color: AppColors.slateGray,
                        ),
                      ],
                    ),
                  )
                : ListView.separated(
                    itemCount:
                        transactions.length >= 5 ? 5 : transactions.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    separatorBuilder: (context, index) => const Padding(
                      padding: EdgeInsets.symmetric(vertical: 14),
                      child: Divider(color: Colors.black26),
                    ),
                    itemBuilder: (context, index) {
                      var transaction = transactions[index];
                      DateTime date = transaction['data'] is Timestamp
                          ? (transaction['data'] as Timestamp).toDate()
                          : transaction['data'];

                      return Container(
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
                                child: FinanceText.p18(
                                  getInitial(transaction['descricao']),
                                  color: AppColors.deepBlue,
                                ),
                              ),
                            ),
                            const SizedBox(width: 15),
                            Expanded(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FinanceText.p16(
                                    transaction['descricao'],
                                    color: Colors.black,
                                  ),
                                  FinanceText.p16(
                                    formatDate(date),
                                    color: const Color(0xFF717E95),
                                  ),
                                ],
                              ),
                            ),
                            FinanceText.p18(
                              formatMoney(transaction['valor']),
                              color: transaction['add'] == true
                                  ? AppColors.forestGreen
                                  : AppColors.cherryRed,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
          ),
        ),
      ],
    );
  }
}
