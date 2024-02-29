import 'package:controle_patrimonio/view/home/view/home_view.dart';
import 'package:controle_patrimonio/view/login/view/login_view.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  '/loginView': (context) => const LoginView(),
  '/homeView': (context) => const HomeView(),
  // Adicione outras rotas aqui conforme necessário
};
