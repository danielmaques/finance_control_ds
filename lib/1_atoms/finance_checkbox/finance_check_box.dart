import 'package:finance_control_ui/finance_control_ui.dart';
import 'package:flutter/material.dart';

class FinanceCheckBox extends StatefulWidget {
  const FinanceCheckBox({
    super.key,
    this.label = '',
    required this.isChecked,
  });

  final String label;
  final bool isChecked;

  @override
  State<FinanceCheckBox> createState() => _FinanceCheckBoxState();
}

class _FinanceCheckBoxState extends State<FinanceCheckBox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.isChecked;
        });
      },
      child: Row(
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: widget.isChecked ? AppColors.deepBlue : AppColors.white,
            ),
            child: Center(
              child: Icon(
                Icons.check,
                size: 18,
                color: widget.isChecked ? AppColors.white : AppColors.slateGray,
              ),
            ),
          ),
          if (widget.label != '') ...{
            const SizedBox(width: 12),
            Flexible(
              child: FinanceText.p14(
                widget.label,
              ),
            ),
          }
        ],
      ),
    );
  }
}
