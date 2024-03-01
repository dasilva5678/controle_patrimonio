import 'package:controle_patrimonio/view/login/widgets/custom_buttom.dart';
import 'package:controle_patrimonio/view/login/widgets/custom_text_form_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Controle de Patrimônio",
            style: TextStyle(fontSize: 20, color: Colors.white)),
        elevation: 6,
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text(
            "Cadastre seu objeto",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    TextFormWidget(
                      isTitle: true,
                      title: "Código",
                    ),
                    TextFormWidget(
                      isTitle: true,
                      title: "Marca",
                    ),
                    TextFormWidget(
                      isTitle: true,
                      title: "Colaborador",
                    ),
                    TextFormWidget(
                      isTitle: true,
                      title: "Estado",
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    TextFormWidget(
                      isTitle: true,
                      title: "Descrição",
                    ),
                    TextFormWidget(
                      isTitle: true,
                      title: "Modelo",
                    ),
                    TextFormWidget(
                      isTitle: true,
                      title: "Valor",
                    ),
                    TextFormWidget(
                      isTitle: true,
                      title: "Setor",
                    ),
                  ],
                ),
              ),
            ],
          ),
          TextFormWidget(
            isTitle: true,
            title: "Categoria",
          ),
          TextFormWidget(
            isTitle: true,
            title: "Observação",
            height: 100,
          ),
          CustomButtom(
            title: "LOGIN",
            enabled: true,
            onPressed: () {
              Navigator.pushNamed(context, "/homeView");
            },
            style: const TextStyle(
              color: Colors.white,
            ),
            borderColor: Colors.blueGrey,
            backgroundColor: Colors.blueGrey,
            borderRadius: 0,
            minimumSize: const Size(double.infinity, 60),
            maximumSize: const Size(double.infinity, 70),
          ),
        ],
      ),
    );
  }
}
