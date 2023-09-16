import 'package:finance_control_ui/finance_control_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FinanceHomeTopBar extends StatelessWidget implements PreferredSizeWidget {
  const FinanceHomeTopBar({
    Key? key,
    required this.addRoute,
    required this.removeRoute,
    required this.transactionRoute,
    required this.menuRoute,
  }) : super(key: key);

  final Function() addRoute;
  final Function() removeRoute;
  final Function() transactionRoute;
  final Function() menuRoute;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.deepBlue,
      titleSpacing: 0,
      title: Padding(
        padding: const EdgeInsets.only(bottom: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FinanceText.h3(
              'Saldo',
              color: AppColors.white,
            ),
            FinanceText.p14(
              'Saldo',
              color: AppColors.white.withOpacity(0.5),
            ),
          ],
        ),
      ),
      actions: [
        SvgPicture.asset('assets/icons/lines.svg', fit: BoxFit.fitHeight),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
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
      ),
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(254); // total height of the AppBar
}
