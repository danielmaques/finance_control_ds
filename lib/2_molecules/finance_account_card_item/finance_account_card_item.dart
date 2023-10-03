import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../finance_control_ui.dart';

class FinanceAccountCardItem extends StatelessWidget {
  const FinanceAccountCardItem({
    super.key,
    required this.selectedTabIndex,
    required this.gasto,
    required this.saldo,
    required this.name,
    required this.accountType,
    required this.delete,
  });

  final int selectedTabIndex;
  final double gasto;
  final double saldo;
  final String name;
  final String accountType;
  final Function() delete;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      borderRadius: BorderRadius.circular(25),
      child: InkWell(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                scrollable: true,
                actionsAlignment: MainAxisAlignment.center,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FinanceText.h4(
                      'Detalhes da conta',
                      fontWeight: FontWeight.w500,
                    ),
                    IconButton(
                      onPressed: () {
                        Modular.to.pop();
                      },
                      icon: Icon(
                        Icons.close_rounded,
                        size: 20,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
                content: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: AppColors.deepBlue),
                      ),
                      child: FinanceText.p18(
                        name,
                        color: AppColors.deepBlue,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 16),
                    FinanceText.p16(
                      'Saldo atual',
                      color: AppColors.midnightBlack,
                      fontWeight: FontWeight.w500,
                    ),
                    const SizedBox(height: 8),
                    FinanceText.p16(
                      formatMoney(saldo),
                      color: AppColors.midnightBlack,
                      fontWeight: FontWeight.w500,
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FinanceText.p16('Tipo de conta'),
                        FinanceText.p16(
                          accountType,
                          fontWeight: FontWeight.bold,
                        )
                      ],
                    ),
                  ],
                ),
                actions: [
                  Column(
                    children: [
                      const Divider(
                        height: 1,
                        color: AppColors.softGray,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextButton(
                            child: FinanceText.p16(
                              'Excluir',
                              color: AppColors.cherryRed,
                            ),
                            onPressed: delete,
                          ),
                          TextButton(
                            child: FinanceText.p16(
                              'Editar',
                              color: AppColors.deepBlue,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              );
            },
          );
        },
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
                    child: FinanceText.p18(
                      getInitial(name),
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
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
