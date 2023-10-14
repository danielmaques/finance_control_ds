import 'package:flutter/material.dart';

import '../../finance_control_ui.dart';

class FinanceCard extends StatelessWidget {
  const FinanceCard({
    super.key,
    required this.cardList,
    required this.index,
    required this.disponivel,
  });

  final List<dynamic> cardList;
  final int index;
  final double disponivel;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      borderRadius: BorderRadius.circular(25),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(25),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    cardList[index - 1].flag == 'Visa'
                        ? 'assets/images/visa.png'
                        : cardList[index - 1].flag == "MasterCard"
                            ? 'assets/images/master.png'
                            : cardList[index - 1].flag == "Elo"
                                ? 'assets/images/elo.png'
                                : cardList[index - 1].flag == "American Express"
                                    ? 'assets/images/amex.png'
                                    : 'assets/images/credit-card.png',
                    width: 40,
                    height: 40,
                  ),
                  const SizedBox(width: 16),
                  FinanceText.h3(
                    cardList[index - 1].cardName!,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w700,
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert_rounded,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FinanceText.b14(
                    'Parcela do mês',
                    color: Colors.grey[500],
                    fontWeight: FontWeight.w500,
                  ),
                  FinanceText.b14(
                    formatMoney(cardList[index - 1].availableLimit ?? 0),
                    color: Colors.grey[500],
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FinanceText.b14(
                    'Fecha em',
                    color: Colors.grey[500],
                    fontWeight: FontWeight.w500,
                  ),
                  FinanceText.b14(
                    formatDate(cardList[index - 1].close!),
                    color: Colors.grey[500],
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  FinanceText.b14(
                    '${formatMoney(cardList[index - 1].availableLimit!)} de ${formatMoney(cardList[index - 1].limit!)}',
                    color: Colors.grey[500],
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
              const SizedBox(height: 8),
              LinearProgressIndicator(
                value: formatValueProgress(cardList[index - 1].limit!,
                    cardList[index - 1].availableLimit ?? 0),
                minHeight: 20,
                borderRadius: BorderRadius.circular(15),
                backgroundColor: Colors.grey[200],
                valueColor: const AlwaysStoppedAnimation<Color>(
                  AppColors.cherryRed,
                ),
              ),
              const SizedBox(height: 8),
              FinanceText.b14(
                'Limite Disponível ${formatMoney(disponivel)}',
                color: Colors.grey[500],
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
