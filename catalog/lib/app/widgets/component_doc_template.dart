import 'package:finance_control_ui/finance_control_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ComponentDocTemplate extends StatelessWidget {
  final String title;
  final String code;
  final Widget component;

  const ComponentDocTemplate({
    super.key,
    required this.title,
    required this.code,
    required this.component,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              FinanceText.h4(title),
              const SizedBox(width: 5),
              GestureDetector(
                onTap: () async {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: FinanceText.p18('Código copiado com sucesso'),
                    ),
                  );
                  await Clipboard.setData(
                    ClipboardData(
                      text: code,
                    ),
                  );
                },
                child: const Icon(
                  Icons.file_copy,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          component,
          const SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF565959),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(15),
            child: FinanceText.p18(code),
          ),
        ],
      ),
    );
  }
}
