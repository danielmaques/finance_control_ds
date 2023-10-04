import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:finance_control_ui/finance_control_ui.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FinanceAddTransactionAppBar extends StatefulWidget {
  const FinanceAddTransactionAppBar({
    super.key,
    required this.onChanged,
    required this.onPressed,
  });

  final Function(double) onChanged;
  final Function()? onPressed;

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
      height: 350,
      color: AppColors.deepBlue,
      child: SafeArea(
        child: Stack(
          children: [
            Positioned(
              right: 0,
              child: SvgPicture.asset(
                'assets/icons/lines.svg',
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: IconButton(
                  color: Colors.white,
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 24,
                  ),
                  onPressed: widget.onPressed,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 35.0),
                child: FinanceText.p16(
                  'Adicionar transação',
                  color: Colors.white,
                ),
              ),
            ),
            const Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(top: 35.0, right: 20.0),
                child: Icon(Icons.info_outline),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: TextFormField(
                autofocus: true,
                textAlign: TextAlign.center,
                initialValue: 'R\$ 0,00',
                style: const TextStyle(
                  fontSize: 50,
                  color: AppColors.white,
                  fontWeight: FontWeight.w500,
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
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'R\$ 0,00',
                  hintStyle: TextStyle(
                    fontSize: 50,
                    color: AppColors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
