import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../finance_control_ui.dart';

class FinanceHomeTopBarSliver extends StatelessWidget {
  const FinanceHomeTopBarSliver({
    Key? key,
    required this.addRoute,
    required this.removeRoute,
    required this.transactionRoute,
    required this.menuRoute,
    required this.money,
  }) : super(key: key);

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
              builder: (context, value, child) => Text(
                formatMoney(value),
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            bottom: 127,
            child: Text(
              'Saldo',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white.withOpacity(0.5),
              ),
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
}
