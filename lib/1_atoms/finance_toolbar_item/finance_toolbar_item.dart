import 'package:flutter/material.dart';

import '../../finance_control_ui.dart';

class FinanceToolBarItem extends StatelessWidget {
  const FinanceToolBarItem({
    super.key,
    required this.title,
    required this.label,
    required this.icon,
    required this.select,
    required this.onTap,
  });

  final String title;
  final String label;
  final IconData icon;
  final bool select;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 248,
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: AppColors.deepBlue,
            width: select ? 2 : 1,
          ),
        ),
        child: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: AppColors.lightSkyBlue,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Icon(
                icon,
                color: AppColors.deepBlue,
                size: 24,
              ),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FinanceText.b14(
                  title,
                  color: AppColors.deepBlue,
                  fontWeight: FontWeight.w400,
                ),
                FinanceText.b14(
                  'Contas Bancarias',
                  color: AppColors.slateGray,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              color: AppColors.deepBlue,
            ),
          ],
        ),
      ),
    );
  }
}
