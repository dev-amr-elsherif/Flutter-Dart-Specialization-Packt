import 'package:flutter/material.dart';
import 'package:tip_calculator/widgets/bill_amount_field.dart';
import 'package:tip_calculator/widgets/person_counter.dart';
import 'package:tip_calculator/widgets/tip_row.dart';
import 'package:tip_calculator/widgets/tip_slider.dart';
import 'package:tip_calculator/widgets/totalP_per_person.dart';

// === Application Entry Point ===
void main() {
  runApp(const MyApp());
}

// === Main App Widget ===
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UTip',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const UTip(),
    );
  }
}

// === UTip Main Screen ===
class UTip extends StatefulWidget {
  const UTip({super.key});

  @override
  State<UTip> createState() => _UTipState();
}

class _UTipState extends State<UTip> {
  // === State Variables ===
  int _personCount = 1;
  double _tipPercentage = 0.0;
  double _billAmount = 0.0;

  // === State Methods (Counter Controls) ===
  void increment() {
    setState(() {
      _personCount++;
    });
  }

  void decrement() {
    setState(() {
      if (_personCount > 1) {
        _personCount--;
      }
    });
  }

  double calculateTotalPerPerson() {
    return (((_billAmount * _tipPercentage) + (_billAmount) / _personCount));
  }

  double totalTipFun() {
    return ((_billAmount * _tipPercentage));
  }

  // === Build Method ===
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    double total = calculateTotalPerPerson();
    double totalTip = totalTipFun();
    //Add Style
    final textStyle = theme.textTheme.titleMedium?.copyWith(
      color: theme.colorScheme.onPrimary,
      fontWeight: FontWeight.bold,
    );

    return Scaffold(
      // --- Top App Bar ---
      appBar: AppBar(title: const Text("UTip")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // =====================================
            // === Top Section: Total Per Person ===
            // =====================================
            TotalPerPerson(theme: theme, textStyle: textStyle, total: total),

            // ==============================================
            // === Bottom Section: Controls & Calculation ===
            // ==============================================
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: theme.colorScheme.primary,
                    width: 2,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // --- Bill Amount Input Field ---
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: BillAmountField(
                        bollAmount: _billAmount.toString(),
                        onChanged: (value) {
                          setState(() {
                            _billAmount = double.parse(value);
                          });
                        },
                      ),
                    ),

                    // --- Split Bill Section ---
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: PersonCounter(
                        theme: theme,
                        personCount: _personCount,
                        onDecrement: decrement,
                        onIncrement: increment,
                      ),
                    ),

                    // --- Tip Amount Display Section ---
                    TipRow(theme: theme, totalTip: totalTip),

                    // --- Tip Percentage Text ---
                    Text(
                      "${(_tipPercentage * 100).round()}%",
                      style: theme.textTheme.titleMedium,
                    ),

                    // --- Tip Percentage Slider ---
                    TipSlider(
                      tipPercentage: _tipPercentage,
                      onChanged: (double value) {
                        setState(() {
                          _tipPercentage = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
