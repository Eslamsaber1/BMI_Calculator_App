# BMI Calculator App

A clean and intuitive mobile application built with Flutter that calculates Body Mass Index (BMI) and provides users with an easy-to-use interface to track and interpret their BMI.

---

## 📋 Table of Contents
- [Demo](#demo)  
- [Features](#features)  
- [Architecture & Technologies](#architecture--technologies)  
- [Getting Started](#getting-started)  
  - [Prerequisites](#prerequisites)  
  - [Installation](#installation)  
- [Usage](#usage)  
- [Project Structure](#project-structure)  
- [Contributing](#contributing)  
- [License](#license)  
- [Contact](#contact)  

---

## 🎞️ Demo

> *(Insert screenshot(s) or a short GIF of the app here)*  
> ![OnBoarding_Screen](assets/screenshots/WhatsApp Image 2025-11-03 at 17.41.49_92b6ae3a.jpg)
> ![Home_Screen](assets/screenshots/WhatsApp Image 2025-11-03 at 17.41.49_1f5f74bf.jpg)
> ![BMI_Calc_Screen](assets/screenshots/WhatsApp Image 2025-11-03 at 17.41.49_d024a67c.jpg)


---

## ✨ Features
- Input user parameters (height, weight) in an intuitive UI  
- Calculate BMI with a one-tap button  
- Display result category (e.g., Underweight, Normal, Overweight, Obese) with color coding  
- Reset inputs easily to perform new calculations  
- Minimal and clean design, optimized for both Android and iOS  

---

## 🏗 Architecture & Technologies
- **Framework:** Flutter (Dart)  
- **UI:** Material Design widgets  
- **State Management:** `Cubit` (from Flutter Bloc) for reactive and maintainable state management  
- **Architecture Pattern:** Implemented using **Clean Architecture** principles for better scalability, testability, and maintainability  
- Followed clean code practices with clear separation of concerns and reusable components  
- Compatible with both **Android** and **iOS** platforms

---

### 🧠 Why Clean Architecture?
Clean Architecture helps keep the project **organized, testable, and scalable**.  
It separates the code into **layers** (such as `presentation`, `domain`, and `data`),  
making it easier to maintain and extend the app in the future.  

By using **Cubit** for state management within a **Clean Architecture** structure,  
the project ensures **clear data flow**, **decoupled logic**, and **better reusability** across features.


---

## 🚀 Getting Started

### Prerequisites
- Flutter SDK installed (version ≥ 2.0)  
- An IDE or editor of your choice (e.g., Android Studio, VS Code)  
- A device or emulator ready for testing  

### Installation
1. Clone the repository  
   ```bash
   git clone https://github.com/Eslamsaber1/BMI_Calculator_App.git
   cd BMI_Calculator_App
## 🧩 Usage
1. Launch the app on your device or emulator.
2. Enter your height (in cm) and weight (in kg).
3. Tap on the "Calculate" button.
4. View your BMI result and category.
5. Tap "Reset" to start a new calculation.
