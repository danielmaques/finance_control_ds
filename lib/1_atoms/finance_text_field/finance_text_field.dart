import 'package:finance_control_ui/finance_control_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FinanceTextField extends StatelessWidget {
  const FinanceTextField({
    super.key,
    this.hintText,
    this.labelText,
    this.iconData,
    this.controller,
    this.suffixIcon,
    this.obscureText = false,
    this.validator,
    this.onChanged,
    this.inputFormatters,
    this.keyboardType,
    this.textCapitalization = TextCapitalization.none,
    this.label,
    this.maxLines = 1,
    this.autocorrect,
    this.textInputAction = TextInputAction.next,
  });

  final String? hintText;
  final String? labelText;
  final IconData? iconData;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final bool obscureText;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final TextCapitalization textCapitalization;
  final String? label;
  final int maxLines;
  final bool? autocorrect;
  final TextInputAction textInputAction;

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Text(
            label!,
            style: Theme.of(context).textTheme.labelLarge,
          ),
        const SizedBox(height: 8),
        Form(
          key: formKey,
          child: TextFormField(
            controller: controller,
            obscureText: obscureText,
            autofocus: false,
            autocorrect: autocorrect ?? false,
            textInputAction: textInputAction,
            validator: validator,
            onChanged: (value) {
              if (onChanged != null) {
                onChanged!(value);
              }
              formKey.currentState!.validate();
            },
            maxLines: maxLines,
            enableSuggestions: true,
            keyboardType: keyboardType,
            inputFormatters: inputFormatters,
            style: Theme.of(context).textTheme.bodyMedium,
            textCapitalization: textCapitalization,
            cursorColor: AppColors.slateGray,
            decoration: InputDecoration(
              prefixIcon: iconData != null ? Icon(iconData) : null,
              suffixIcon: suffixIcon,
              hintText: hintText,
              hintStyle: Theme.of(context).textTheme.labelLarge,
              labelText: labelText,
              labelStyle: Theme.of(context).textTheme.bodySmall,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: AppColors.midnightBlack,
                  width: 1,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: Color(0xFFDDE2E5),
                  width: 1,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: Color(0xFFDDE2E5),
                  width: 1,
                ),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            ),
          ),
        ),
      ],
    );
  }
}
