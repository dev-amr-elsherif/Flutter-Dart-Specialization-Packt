import 'package:flutter/material.dart';
import 'package:tip_calculator/widgets/person_counter.dart';

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

  // === Build Method ===
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
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
            Padding(
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
                      "\$23.05",
                      style: textStyle?.copyWith(
                        color: theme.colorScheme.onPrimary,
                        fontSize: theme.textTheme.displaySmall!.fontSize,
                      ),
                    ),
                  ],
                ),
              ),
            ),

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
                      child: TextField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.attach_money_outlined),
                          labelText: "Bill Amount",
                        ),
                        keyboardType: TextInputType.number,
                        onChanged: (String value) {
                          print("Value: $value");
                        },
                      ),
                    ),

                    // --- Split Bill Section ---
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Split", style: theme.textTheme.titleMedium),
                          PersonCounter(
                            theme: theme,
                            personCount: _personCount,
                            onDecrement: decrement,
                            onIncrement: increment,
                          ),

                          //  === Tip Section ===
                        ],
                      ),
                    ),

                    // --- Tip Amount Display Section ---
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("data", style: theme.textTheme.titleMedium),
                          Text("\$20.21", style: theme.textTheme.titleMedium),
                        ],
                      ),
                    ),

                    // --- Tip Percentage Text ---
                    Text(
                      "${(_tipPercentage * 100).round()}%",
                      style: theme.textTheme.titleMedium,
                    ),

                    // --- Tip Percentage Slider ---
                    Slider(
                      value: _tipPercentage,
                      onChanged: (value) {
                        setState(() {
                          _tipPercentage = value;
                        });
                      },
                      min: 0.0,
                      max: 0.5,
                      divisions: 5,
                      label: '${(_tipPercentage * 100).round()}',
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
