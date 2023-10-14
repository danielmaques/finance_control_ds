import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../finance_control_ui.dart';

class FinanceAccountCardItem extends StatelessWidget {
  const FinanceAccountCardItem({
    super.key,
    required this.selectedTabIndex,
    required this.saldo,
    required this.name,
    required this.accountType,
    required this.delete,
    this.colorCircle = AppColors.deepBlue,
    this.edit = false,
    this.showDialogs = true,
  });

  final int selectedTabIndex;
  final double saldo;
  final String name;
  final String accountType;
  final Function() delete;
  final Color colorCircle;
  final bool edit;
  final bool showDialogs;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      color: AppColors.white,
      borderRadius: BorderRadius.circular(25),
      child: InkWell(
        onTap: () {
          showDialogs == true
              ? showDialog(
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
                          FinanceText.b18(
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
                            child: FinanceText.b16(
                              name,
                              color: AppColors.deepBlue,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 16),
                          FinanceText.b14(
                            'Saldo atual',
                            color: AppColors.midnightBlack,
                            fontWeight: FontWeight.w500,
                          ),
                          const SizedBox(height: 8),
                          FinanceText.b14(
                            formatMoney(saldo),
                            color: AppColors.midnightBlack,
                            fontWeight: FontWeight.w500,
                          ),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FinanceText.b14('Tipo de conta'),
                              FinanceText.b14(
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
                                  onPressed: delete,
                                  child: FinanceText.b14(
                                    'Excluir',
                                    color: AppColors.cherryRed,
                                  ),
                                ),
                                TextButton(
                                  child: FinanceText.b14(
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
                )
              : null;
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
                    decoration: BoxDecoration(
                      color: colorCircle,
                      shape: BoxShape.circle,
                    ),
                    child: FinanceText.b16(
                      getInitial(name),
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(width: 16),
                  FinanceText.b16(
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
                  FinanceText.l10(
                    'Saldo atual',
                    color: AppColors.midnightBlack,
                    fontWeight: FontWeight.w500,
                  ),
                  FinanceText.l10(
                    formatMoney(saldo),
                    color: AppColors.forestGreen,
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
                    FinanceText.l10(
                      'Saldo total',
                      color: AppColors.midnightBlack,
                      fontWeight: FontWeight.w500,
                    ),
                    FinanceText.l10(
                      'R\$ 0,00',
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
              if (edit) ...{
                const Spacer(),
                const Divider(
                  height: 1,
                  color: AppColors.softGray,
                ),
                const SizedBox(height: 10),
                FinanceText.l10(
                  'Editar',
                  color: AppColors.deepBlue,
                  fontWeight: FontWeight.bold,
                ),
              }
            ],
          ),
        ),
      ),
    );
  }
}
