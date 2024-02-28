import 'package:controle_patrimonio/view/login/widgets/custom_buttom.dart';
import 'package:controle_patrimonio/view/login/widgets/custom_text_form_widget.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Image.asset("assets/images/3.png"),
            const TextFormWidget(
              label: "E-mail",
            ),
            const SizedBox(
              height: 10,
            ),
            const TextFormWidget(
              label: "Senha",
            ),
            const SizedBox(
              height: 60,
            ),
            CustomButtom(
              title: "LOGIN",
              enabled: true,
              onPressed: () {},
              style: const TextStyle(
                color: Colors.blueGrey,
              ),
              borderColor: Colors.blueGrey,
              borderRadius: 0,
              minimumSize: const Size(double.infinity, 60),
              maximumSize: const Size(double.infinity, 70),
            )
          ],
        ),
      ),
    );
  }
}
