import 'package:controle_patrimonio/core/utils/background_color_gradient.dart';
import 'package:controle_patrimonio/view/login/widgets/custom_buttom.dart';
import 'package:controle_patrimonio/view/login/widgets/custom_text_form_widget.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundColorGradient(
        header: const Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Text(
            "CONTROLE DE PATRIMÔNIO",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: SizedBox(
                width: double.infinity,
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/logo.png",
                          height: 50,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const TextFormWidget(
                          title: "E-mail",
                          label: "Escreva seu e-mail",
                          borderRadius: 20,
                        ),
                        const TextFormWidget(
                          title: "Password",
                          label: "Escreva sua senha",
                          borderRadius: 20,
                          suffixIcon: Icon(
                            Icons.visibility,
                            color: Colors.blueGrey,
                          ),
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        CustomButtom(
                          backgroundGradient: const LinearGradient(
                            colors: [
                              Color.fromARGB(255, 99, 198, 231),
                              Color(0xFF008080),
                            ],
                            stops: [0.0, 0.7],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          title: "SIGN IN",
                          enabled: true,
                          onPressed: () {},
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          borderColor: Colors.blueGrey,
                          borderRadius: 20,
                          minimumSize: const Size(double.infinity, 50),
                          maximumSize: const Size(double.infinity, 55),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Forgot the password?",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
        child: Container(
          alignment: Alignment.center,
          child: TextButton(
            onPressed: () {},
            child: const Text(
              "New Register",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
