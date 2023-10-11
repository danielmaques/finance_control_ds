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
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
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
                  FinanceText.p14(
                    'Saldo total',
                    color: const Color(0xFF848C93),
                  ),
                  const SizedBox(height: 16),
                  balance
                      ? FinanceText.h4(
                          formatMoney(widget.money),
                          color: AppColors.navyBlue,
                          fontWeight: FontWeight.w600,
                        )
                      : Shimmer.fromColors(
                          baseColor: Colors.grey[200]!,
                          highlightColor: Colors.grey[100]!,
                          child: Container(
                            height: 25,
                            width: 70,
                            color: Colors.white,
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
                  color: AppColors.deepBlue,
                  borderRadius: BorderRadius.circular(160),
                ),
                child: FinanceText.p14(
                  'Ver lançamentos',
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
