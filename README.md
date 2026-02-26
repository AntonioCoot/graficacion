# 🎨 Flutter Login Animation with Rive

## 📌 Description

This project is a **Flutter login screen** that integrates an interactive animation using **Rive**.  
The animated character dynamically reacts to user interactions in real time, improving the overall user experience.

### ✨ Main Functionalities

- 👀 Character follows the cursor when the email field is focused  
- 🙈 Character covers its eyes while typing the password  
- 🔐 Interactive password visibility toggle  
- ✅ Animation reacts on successful login  
- ❌ Animation reacts differently on login error  
- 🎭 Animation transitions controlled by logic inputs  

This project demonstrates how animation enhances UI/UX in mobile applications.

---

## 🎬 What is Rive?

**Rive** is a real-time interactive animation tool that allows developers to integrate high-performance animations into Flutter applications.

Unlike traditional animations, Rive supports interactive animations that respond dynamically to user input through logic systems such as State Machines.

To use Rive in Flutter, add the dependency in your `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  rive: ^0.13.20
```

Then run:

```bash
flutter pub get
```

---

## ⚙️ What is a State Machine?

A **State Machine** is a logic system that controls animation behavior based on different states and transitions.

Example states:

- 💤 Idle State  
- ✍️ Typing State  
- 🙈 Password State  
- ✅ Success State  
- ❌ Error State  

---

## 🛠 Technologies Used

- 💙 Flutter  
- 🎨 Rive  
- 📱 Dart  

---

## 📂 Project Structure

```plaintext
lib/
│
├── main.dart
└── login_screen.dart

assets/
│
└── animations/
    └── animated_login_bear.riv
```

---

## 🔹 Assets Configuration in pubspec.yaml

```yaml
flutter:
  assets:
    - assets/animations/animated_login_bear.riv
```

Or:

```yaml
flutter:
  assets:
    - assets/animations/
```

---

## 🚀 Installation

1. Clone the repository:

```bash
git clone https://github.com/AntonioCoot/graficacion.git
```

2. Navigate to the project folder:

```bash
cd graficacion
```

3. Install dependencies:

```bash
flutter pub get
```

4. Run the project:

```bash
flutter run
```

> ⚠ Make sure you have Flutter installed and properly configured before running the project.

---

## 🎥 Demo

Insert your GIF here:


![0222](https://github.com/user-attachments/assets/9e3df51a-638e-4e3a-b181-218028bbe6da)



---

## 🎓 Academic Information

- 📘 **Subject:** Graficación  
- 👨‍🏫 **Professor:** RODRIGO FIDEL GAXIOLA SOSA  

---

## 🎨 Animation Credits

Animation obtained from:

https://rive.app/marketplace/3645-7621-remix-of-login-machine/

All animation rights belong to the original creator.
