<div align="center">

  <h1>🥠 Fortune Cookie App</h1>

  <a href="https://skillicons.dev">
    <img src="https://skillicons.dev/icons?i=flutter,dart&theme=dark" alt="Tech Stack"/>
  </a>

<br><br>

  <p><i>An interactive Flutter application built to demonstrate the foundational concepts of the Dart programming language, basic widget tree architecture, and local state management.</i></p>

</div>

<br>
<hr>
<br>

# 📖 Project Overview

The **Fortune Cookie App** is the first practical implementation project in Phase 1. It bridges the gap between pure Dart console applications and graphical user interfaces in Flutter. The app generates a random motivational quote (fortune) each time the user clicks the core action button, effectively demonstrating how logic dictates UI changes.

### 🎯 Key Features
- **Dynamic Content:** Displays a randomly selected fortune from a predefined list of strings.
- **Interactive UI:** Utilizes graphical assets (images) and an `ElevatedButton` to trigger actions.
- **State Changes:** Instantly updates the text on the screen without reloading the entire application.

<br>
<hr>
<br>

# 🧠 Technical Concepts Applied

This directory contains not just the Flutter app, but also the underlying Dart practice files (`variables.dart`, `functions_basics.dart`, `functions_return.dart`) that paved the way for the application logic.

### 1. Dart Fundamentals
- **Variables & Data Types:** Practical use of `var`, `int`, `String`, and `bool`.
- **String Interpolation:** Dynamically injecting variables into strings (e.g., `print("My age is $myAge");`).
- **Functions Architecture:** - `void` functions for executing logic without returning data.
  - Functions with specific return types (e.g., `int`, `String`).
  - Passing positional arguments into functions to create reusable logic blocks (e.g., `sayMyBio(String name, int age)`).

### 2. Flutter & UI Engineering
- **State Management:** Introduction to `StatefulWidget` and utilizing `setState()` to notify the framework of variable changes, triggering a targeted UI rebuild.
- **Randomization Logic:** Integrating the `dart:math` library (`Random().nextInt()`) to navigate arrays/lists dynamically.
- **Widget Composition:** Structuring the interface using core structural widgets: `Scaffold`, `Center`, `Column`, `Card`, and `Padding`.
- **Asset Integration:** Configuring `pubspec.yaml` to include local assets and rendering them using `Image.asset` with `BoxFit.cover` for responsive sizing.

<br>
<hr>
<br>

# 💻 File Structure

- `lib/main.dart`: The core Flutter application containing the UI and state logic.
- `lib/variables.dart`: Study notes and examples of basic Dart variables.
- `lib/functions_basics.dart`: Demonstration of basic void functions.
- `lib/functions_return.dart`: Exploration of function return types and parameter handling.

<br>
<hr>
<br>

<div align="center">

  <h3>🗺️ Project Navigation</h3>
  
  <a href="../">
    <img src="https://img.shields.io/badge/⏪_Back_to_Phase_1-0052CC?style=for-the-badge" alt="Back to Phase 1" />
  </a>

  <br><br>

  <p><i>Developed & Engineered by</i></p>
  <h3>Amr Fathy Elsherif</h3>
  <p>Software Engineer | Mobile & Backend Systems</p>
  <p>Alexandria, Egypt</p>

</div>
