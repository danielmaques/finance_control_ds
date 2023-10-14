import 'package:finance_control_ui/finance_control_ui.dart';
import 'package:flutter/material.dart';

class FinanceCheckBox extends StatelessWidget {
  const FinanceCheckBox({
    Key? key,
    required this.label,
    required this.isChecked,
    required this.onChanged,
  }) : super(key: key);

  final String label;
  final bool isChecked;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(!isChecked);
      },
      child: Container(
        color: Colors.transparent,
        child: Row(
          children: [
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: isChecked ? AppColors.deepBlue : AppColors.softGray,
              ),
              child: const Center(
                child: Icon(
                  Icons.check,
                  size: 18,
                  color: AppColors.white,
                ),
              ),
            ),
            if (label.isNotEmpty) ...{
              const SizedBox(width: 12),
              Flexible(
                child: FinanceText.l12(
                  label,
                ),
              ),
            }
          ],
        ),
      ),
    );
  }
}
