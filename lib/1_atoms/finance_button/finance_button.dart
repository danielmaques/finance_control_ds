import 'package:finance_control_ui/finance_control_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FinanceButton extends StatefulWidget {
  final String? title;
  final bool disabled;
  final bool loading;
  final void Function()? onTap;
  final IconData? icon;
  final bool small;
  final bool textOnly;
  final bool branded;
  final Color color;
  final bool google;

  const FinanceButton({
    this.title,
    Key? key,
    this.disabled = false,
    this.loading = false,
    this.onTap,
    this.icon,
    this.small = false,
    this.textOnly = false,
    this.branded = false,
    this.color = AppColors.lighterBlue,
    this.google = false,
  }) : super(key: key);

  @override
  State<FinanceButton> createState() => _FinanceButtonState();
}

class _FinanceButtonState extends State<FinanceButton> {
  bool _disabled = false;
  late Color _colorBackground;
  late Color _colorDisabled;
  late Color _textIconColor;

  @override
  void initState() {
    super.initState();
    _setButtonAttributes();
  }

  @override
  void didUpdateWidget(covariant FinanceButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    _setButtonAttributes();
  }

  void _setButtonAttributes() {
    _disabled = widget.disabled || widget.onTap == null;
    _colorBackground = widget.color;
    _colorDisabled = AppColors.softGray;
    _textIconColor = Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(24),
      child: InkWell(
        onTap: widget.disabled ? null : widget.onTap,
        child: Ink(
          decoration: BoxDecoration(
            color: !_disabled ? _colorBackground : _colorDisabled,
            borderRadius: BorderRadius.circular(24),
            border: Border.all(
              color:
                  widget.google ? const Color(0xFFDDE2E5) : Colors.transparent,
            ),
          ),
          child: SizedBox(
            height: widget.small ? 36 : 48,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (widget.google) ...{
                  Expanded(
                    child: SvgPicture.asset(
                      'assets/icons/google.svg',
                      height: 30,
                      width: 30,
                    ),
                  ),
                },
                Visibility(
                    visible: !widget.google,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        if (widget.icon != null)
                          Icon(
                            widget.icon,
                            color: _textIconColor,
                          ),
                        if (widget.icon != null) const SizedBox(width: 5),
                        if (!widget.loading)
                          Text(
                            widget.title?.toUpperCase() ?? '',
                            style: TextStyle(color: _textIconColor),
                            textAlign: TextAlign.center,
                          ),
                        if (widget.loading)
                          const CircularProgressIndicator(
                            color: Colors.white,
                          ),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
