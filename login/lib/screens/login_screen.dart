import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Variables de control de estado
  bool _obscureText = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Variables para Rive (Asegúrate de que estén declaradas AQUÍ)
  StateMachineController? _controller;
  SMIBool? _isChecking;
  SMIBool? _isHandsUp;
  SMITrigger? _trigSuccess;
  SMITrigger? _trigFail;

  @override
  void dispose() {
    _controller?.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  // Método para manejar el login y usar los triggers (Soluciona "Undefined name")
  void _onLoginPressed() {
    _isHandsUp?.change(false);
    _isChecking?.change(false);

    // Validación simple para probar las animaciones
    if (_emailController.text == "admin@gmail.com" && _passwordController.text == "123456") {
      _trigSuccess?.fire();
    } else {
      _trigFail?.fire();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Se eliminó el '#' del color para evitar el error de 'Symbol/int'
      backgroundColor: const Color(0xFFD6E2EA), 
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              // Animación de Rive
              SizedBox(
                height: 250,
                child: RiveAnimation.asset(
                  'assets/Animated_login_bear.riv',
                  stateMachines: const ['Login Machine'],
                  onInit: (artboard) {
                    _controller = StateMachineController.fromArtboard(artboard, 'Login Machine');
                    if (_controller != null) {
                      artboard.addController(_controller!);
                      _isChecking = _controller!.findSMI('isChecking');
                      _isHandsUp = _controller!.findSMI('isHandsUp');
                      _trigSuccess = _controller!.findSMI('trigSuccess');
                      _trigFail = _controller!.findSMI('trigFail');
                    }
                  },
                ),
              ),

              const SizedBox(height: 20),

              // Campo Email
              TextField(
                controller: _emailController,
                onChanged: (value) {
                  _isHandsUp?.change(false);
                  _isChecking?.change(value.isNotEmpty);
                },
                decoration: InputDecoration(
                  hintText: 'Email',
                  prefixIcon: const Icon(Icons.email),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                ),
              ),

              const SizedBox(height: 12),

              // Campo Password (LÓGICA DE TU IMAGEN INCORPORADA)
              TextField(
                controller: _passwordController,
                obscureText: _obscureText,
                onChanged: (value) {
                  // Tu código: Deja de mirar y levanta las manos
                  if (_isChecking != null) {
                    _isChecking!.change(false);
                  }
                  if (_isHandsUp != null) {
                    _isHandsUp!.change(true);
                  }
                },
                decoration: InputDecoration(
                  hintText: 'Password',
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
                    onPressed: () => setState(() => _obscureText = !_obscureText),
                  ),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                ),
              ),

              const SizedBox(height: 24),

              // Botón Login
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: _onLoginPressed,
                  child: const Text('Ingresar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}