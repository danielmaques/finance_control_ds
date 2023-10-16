import 'package:finance_control_ui/finance_control_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:focus_detector_v2/focus_detector_v2.dart';
import 'package:shimmer/shimmer.dart';

class FinanceBalance extends StatefulWidget {
  const FinanceBalance({
    super.key,
    required this.onVisibilityGained,
    required this.route,
    required this.money,
  });

  final Function() onVisibilityGained;
  final Function() route;
  final double money;

  @override
  State<FinanceBalance> createState() => _FinanceBalanceState();
}

class _FinanceBalanceState extends State<FinanceBalance> {
  late bool balance = true;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(16),
      elevation: 1,
      color: Theme.of(context).colorScheme.secondary,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FocusDetector(
              onVisibilityLost: widget.onVisibilityGained,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Saldo total',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(height: 16),
                  balance
                      ? FinanceText.b18(
                          formatMoney(widget.money),
                          color: AppColors.cherryRed,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        )
                      : Shimmer.fromColors(
                          baseColor: Colors.grey[200]!,
                          highlightColor: Colors.grey[100]!,
                          child: Container(
                            height: 25,
                            width: 70,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  balance = !balance;
                });
              },
              child: balance
                  ? SvgPicture.asset('assets/icons/eye-off.svg')
                  : SvgPicture.asset('assets/icons/eye.svg'),
            ),
            GestureDetector(
              onTap: widget.route,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 11),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(160),
                ),
                child: Text(
                  'Ver lançamentos',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
