import 'package:finance_control_ui/finance_control_ui.dart';
import 'package:flutter/material.dart';

class FinanceAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FinanceAppBar({
    Key? key,
    this.icon = false,
    this.title = '',
    this.onTap,
    this.color = Colors.transparent,
  }) : super(key: key);

  final bool icon;
  final String title;
  final Function()? onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: color,
      elevation: 1,
      centerTitle: true,
      title: FinanceText.p16(
        title,
        color: Colors.black,
      ),
      leading: icon
          ? GestureDetector(
              onTap: onTap,
              child: const Icon(
                Icons.arrow_back,
                size: 25,
                color: AppColors.navyBlue,
              ),
            )
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
