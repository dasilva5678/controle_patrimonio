import 'package:controle_patrimonio/core/utils/colors_app.dart';
import 'package:controle_patrimonio/view/login/widgets/custom_buttom.dart';
import 'package:controle_patrimonio/view/login/widgets/custom_text_form_widget.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool rememberPassword = false;

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blueGrey;
    }
    return Colors.blueGrey;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.offWhite,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset("assets/images/3.png"),
            form(),
            button(),
            remember(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.10),
            forgotPassowrd(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          ],
        ),
      ),
    );
  }

  Widget form() {
    return Column(
      children: [
        TextFormWidget(
          label: "E-mail",
          height: 60,
        ),
        const SizedBox(
          height: 10,
        ),
        TextFormWidget(
          label: "Senha",
          height: 60,
        ),
        const SizedBox(
          height: 60,
        ),
      ],
    );
  }

  Widget button() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: CustomButtom(
        title: "LOGIN",
        enabled: true,
        onPressed: () {
          Navigator.pushNamed(context, "/homeView");
        },
        style: const TextStyle(
          color: Colors.blueGrey,
        ),
        borderColor: Colors.blueGrey,
        borderRadius: 0,
        minimumSize: const Size(double.infinity, 60),
        maximumSize: const Size(double.infinity, 70),
      ),
    );
  }

  Widget remember() {
    return Row(
      children: [
        Checkbox(
          checkColor: Colors.white,
          fillColor: MaterialStateProperty.resolveWith(getColor),
          value: rememberPassword,
          onChanged: (bool? value) {
            setState(
              () {
                final validate = value!;
                rememberPassword = validate;
              },
            );
          },
        ),
        const Text(
          ("Remember me"),
          style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 15,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget forgotPassowrd() {
    return TextButton(
      onPressed: () {},
      child: const Text(
        "Forgot your password?",
        style: TextStyle(
          decoration: TextDecoration.underline,
          color: Colors.blueGrey,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
