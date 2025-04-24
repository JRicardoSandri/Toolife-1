
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:toollife/screens/login_screen.dart';
import 'package:toollife/screens/register_screen.dart';
import 'package:toollife/screens/home_screen.dart';
import 'package:toollife/screens/chamado_screen.dart';
import 'package:toollife/screens/historico_screen.dart';
import 'package:toollife/screens/perfil_screen.dart';
import 'package:toollife/screens/toolbot_screen.dart';
import 'package:toollife/screens/splash_screen.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ToolLifeApp());
}

class ToolLifeApp extends StatelessWidget {
  const ToolLifeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToolLife',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/home': (context) => const HomeScreen(),
        '/chamado': (context) => const ChamadoScreen(),
        '/historico': (context) => const HistoricoScreen(),
        '/perfil': (context) => const PerfilScreen(),
        '/toolbot': (context) => const ToolBotScreen(),
      },
    );
  }
}
