import 'package:flutter/material.dart';

import '../../finance_control_ui.dart';

class FinanceAccountCardItem extends StatelessWidget {
  const FinanceAccountCardItem({
    super.key,
    required this.selectedTabIndex,
    required this.gasto,
    required this.saldo,
    required this.name,
  });

  final int selectedTabIndex;
  final double gasto;
  final double saldo;
  final String name;

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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 37,
                    width: 37,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: AppColors.deepBlue,
                      shape: BoxShape.circle,
                    ),
                    child:
                        FinanceText.p18(getInitial(name), color: Colors.white),
                  ),
                  const SizedBox(width: 16),
                  FinanceText.p18(
                    name,
                    color: AppColors.slateGray,
                    fontWeight: FontWeight.w700,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FinanceText.p12(
                    'Saldo atual',
                    color: AppColors.midnightBlack,
                    fontWeight: FontWeight.w500,
                  ),
                  FinanceText.p12(
                    formatMoney(saldo),
                    color: AppColors.forestGreen,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FinanceText.p12(
                    'Gasto',
                    color: AppColors.midnightBlack,
                    fontWeight: FontWeight.w500,
                  ),
                  FinanceText.p12(
                    formatMoney(gasto),
                    color: AppColors.cherryRed,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
              Visibility(
                visible: selectedTabIndex == 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FinanceText.p12(
                      'Saldo total',
                      color: AppColors.midnightBlack,
                      fontWeight: FontWeight.w500,
                    ),
                    FinanceText.p12(
                      'R\$ 0,00',
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const Divider(
                height: 1,
                color: AppColors.softGray,
              ),
              const SizedBox(height: 10),
              FinanceText.p12(
                'Editar',
                color: AppColors.deepBlue,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
