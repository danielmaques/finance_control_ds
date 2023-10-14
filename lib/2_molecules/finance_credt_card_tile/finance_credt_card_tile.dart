import 'package:flutter/material.dart';

class FinanceCredtCardTile extends StatelessWidget {
  const FinanceCredtCardTile({
    super.key,
    required this.onTap,
    required this.list,
  });

  final Function() onTap;
  final Widget list;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      color: Theme.of(context).colorScheme.secondary,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Contas',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                list,
              ],
            )),
      ),
    );
  }
}
