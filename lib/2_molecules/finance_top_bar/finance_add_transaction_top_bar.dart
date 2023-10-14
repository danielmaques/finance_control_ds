import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:finance_control_ui/finance_control_ui.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FinanceAddTransactionAppBar extends StatefulWidget {
  const FinanceAddTransactionAppBar({
    super.key,
    required this.onChanged,
    required this.onPressed,
    required this.color,
  });

  final Function(double) onChanged;
  final Function()? onPressed;
  final Color color;

  @override
  State<FinanceAddTransactionAppBar> createState() =>
      _FinanceAddTransactionAppBarState();
}

class _FinanceAddTransactionAppBarState
    extends State<FinanceAddTransactionAppBar> {
  late String price;

  @override
  void initState() {
    super.initState();
    price = '';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      color: AppColors.lightSkyBlue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            autofocus: true,
            textAlign: TextAlign.center,
            initialValue: 'R\$ 0,00',
            style: TextStyle(
              fontSize: 40,
              color: widget.color,
              fontWeight: FontWeight.w600,
            ),
            inputFormatters: [
              CurrencyTextInputFormatter(
                locale: 'pt-br',
                decimalDigits: 2,
                symbol: 'R\$',
              ),
            ],
            onChanged: (value) {
              setState(() {
                price = value;
              });

              String onlyNumbers = value.replaceAll('R\$', '').trim();
              onlyNumbers = onlyNumbers.replaceAll('.', '');
              onlyNumbers = onlyNumbers.replaceAll(',', '.');

              double? priceAsDouble;
              try {
                priceAsDouble = double.parse(onlyNumbers);
              } catch (e) {
                if (kDebugMode) {
                  print("Erro ao converter o valor para double: $e");
                }
                return;
              }

              widget.onChanged(priceAsDouble);
            },
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'R\$ 0,00',
              hintStyle: TextStyle(
                fontSize: 40,
                color: widget.color,
                fontWeight: FontWeight.w600,
              ),
            ),
            keyboardType: TextInputType.number,
          ),
        ],
      ),
    );
  }
}
