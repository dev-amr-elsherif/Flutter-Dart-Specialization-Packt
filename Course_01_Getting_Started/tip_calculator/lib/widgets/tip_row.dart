import 'package:flutter/material.dart';

class TipRow extends StatelessWidget {
  const TipRow({super.key, required this.theme, required this.totalTip});

  final ThemeData theme;
  final double totalTip;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Tip Amount", style: theme.textTheme.titleMedium),
          Text(
            "\$${totalTip.toStringAsFixed(2)}",
            style: theme.textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}
