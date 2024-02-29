import 'package:controle_patrimonio/view/home/view/home_view.dart';
import 'package:controle_patrimonio/view/login/view/login_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/loginView',
      routes: routes,
    );
  }
}

final Map<String, WidgetBuilder> routes = {
  '/loginView': (context) => const LoginView(),
  '/homeView': (context) => const HomeView(),
  // Adicione outras rotas aqui conforme necessário
};
