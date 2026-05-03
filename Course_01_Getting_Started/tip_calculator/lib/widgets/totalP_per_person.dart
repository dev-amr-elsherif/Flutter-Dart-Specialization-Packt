import 'package:flutter/material.dart';

class TotalPerPerson extends StatelessWidget {
  const TotalPerPerson({
    super.key,
    required this.theme,
    required this.textStyle,
    required this.total,
  });

  final ThemeData theme;
  final TextStyle? textStyle;
  final double total;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: theme.colorScheme.inversePrimary,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Text("Total per person", style: textStyle),
            Text(
              "\$${total.toStringAsFixed(2)}",
              style: textStyle?.copyWith(
                color: theme.colorScheme.onPrimary,
                fontSize: theme.textTheme.displaySmall!.fontSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
