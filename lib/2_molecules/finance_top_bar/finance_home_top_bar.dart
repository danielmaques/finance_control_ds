import 'package:finance_control_ui/finance_control_ui.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FinanceHomeTopBar extends StatelessWidget implements PreferredSizeWidget {
  const FinanceHomeTopBar({
    super.key,
    required this.addRoute,
    required this.removeRoute,
    required this.transactionRoute,
    required this.menuRoute,
    required this.money,
  });

  final Function() addRoute;
  final Function() removeRoute;
  final Function() transactionRoute;
  final Function() menuRoute;
  final ValueListenable<double> money;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 254,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.deepBlue,
      ),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            child: SvgPicture.asset('assets/icons/lines.svg'),
          ),
          Positioned(
            left: 20,
            bottom: 147,
            child: ValueListenableBuilder(
              valueListenable: money,
              builder: (context, value, child) => FinanceText.h3(
                formatMoney(value),
                color: AppColors.white,
              ),
            ),
          ),
          Positioned(
            left: 20,
            bottom: 127,
            child: FinanceText.p14(
              'Saldo',
              color: AppColors.white.withOpacity(0.5),
            ),
          ),
          Positioned(
            left: 24,
            right: 24,
            bottom: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FinanceMenu(
                  label: 'Adicionar',
                  icon: Icons.add_rounded,
                  onTap: addRoute,
                ),
                FinanceMenu(
                  label: 'Remover',
                  icon: Icons.remove_rounded,
                  onTap: removeRoute,
                ),
                FinanceMenu(
                  label: 'Transações',
                  icon: Icons.receipt_outlined,
                  onTap: transactionRoute,
                ),
                FinanceMenu(
                  label: 'Menu',
                  icon: Icons.dehaze_outlined,
                  onTap: menuRoute,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(254);
}
