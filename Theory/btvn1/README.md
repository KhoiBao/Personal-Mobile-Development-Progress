# 📜 Dart Study Guide

### 📂 Project Architecture

A clean look at how `BTVN1` is organized:

```text
BTVN1/
├── bin/                    # 🚀 Entry points (Executables)
│   └── btvn1.dart         
├── lib/                    # 🧠 Core logic (Shared code)
│   └── btvn1.dart         
├── test/                   # 🧪 Quality control (Tests)
│   └── btvn1_test.dart    
├── .gitignore              # 👻 Git hidden files
├── analysis_options.yaml   # 📏 Linter & style rules
├── pubspec.yaml            # 📦 Project Heart (Dependencies)
└── README.md               # 📖 Documentation

```

---

### 🛑 Critical Precautions

> [!IMPORTANT]
> **Warning:** Never delete the `pubspec.yaml` file. It acts as the manifest for your entire project; without it, Dart cannot resolve dependencies or project metadata.

---

### ⚡ Execution Commands

To run your application, use the `dart run` command followed by the relative path to your file.

#### **Command Syntax:**

`dart run <folder_name>/<file_name>.dart`

#### **Quick Examples:**

* **To run the main app:** `dart run bin/btvn1.dart`
* **To run logic from lib:** `dart run lib/btvn1.dart`

---
### 💎 Dart Variables & Data Types

In Dart, everything is an Object. We use different types to store different kinds of data.

📊 Common Data Types

| Type | Description | Example |
| :--- | :--- | :--- |
| `String` | Textual data | `"Hello Dart!"` |
| `int` | Whole numbers | `25` |
| `double` | Decimal numbers | `99.99` |
| `bool` | True or False | `true` |
| `dynamic` | Can change type | `any value` |

---

Excellent! Let's build a "Variable Cheat Sheet" to keep your tutorial looking sharp. This uses **Tables**, **In-line code**, and **Language-specific code blocks** to make the learning experience much better.

Copy and paste this into your Markdown file:

---
### 🛠️ How to Declare Variables

There are two ways to create a variable: **Type-specific** or using **Inference**.

#### 1. Explicit Type (Recommended for Beginners)

This makes your code very clear.

```dart
String studentName = "Leona";
int score = 100;
double gpa = 4.0;
bool isGraduated = false;
```

#### 2. Using `var` (Type Inference)

Dart is smart enough to "guess" the type based on the value you give it.

```dart
var city = "Ho Chi Minh City"; // Dart knows this is a String
var age = 22;                  // Dart knows this is an int
```

> 💡 **Pro-Tip:** Once a `var` is assigned a value (like a String), you cannot change it to another type (like an int) later. If you need it to be flexible, use `dynamic`.

---

### 🏗️ Variable Memory Structure

To visualize how Dart stores these, think of your computer memory as a series of labeled boxes:

---

### 🚀 Example:

Create a file named `variables.dart` in your `bin/` folder and paste this code:

```dart
void main() {
  // Use string interpolation with the $ symbol
  String project = "BTVN1";
  int version = 1;

  print("Welcome to $project version $version!");
}

```
