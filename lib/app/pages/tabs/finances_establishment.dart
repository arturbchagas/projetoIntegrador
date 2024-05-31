import 'package:flutter/material.dart';

class FinancesEstablishment extends StatefulWidget {
  const FinancesEstablishment({super.key});

  @override
  State<FinancesEstablishment> createState() => _FinancesEstablishmentState();
}

class _FinancesEstablishmentState extends State<FinancesEstablishment> {
  double receitas = 0;
  double despesas = 0;

  @override
  Widget build(BuildContext context) {
    // Cálculo do saldo
    double saldo = receitas - despesas;

    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  const SizedBox(height: 80),
                  Column(
                    children: [
                      const Text(
                        "Tela Financeira Diária do App",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: "Entrada",
                          hintText: "Digite o valor das receitas",
                        ),
                        onChanged: (value) {
                          setState(() {
                            receitas = double.tryParse(value) ?? 0;
                          });
                        },
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: "Saída",
                          hintText: "Digite o valor das despesas",
                        ),
                        onChanged: (value) {
                          setState(() {
                            despesas = double.tryParse(value) ?? 0;
                          });
                        },
                      ),
                      const SizedBox(height: 40),
                      Text(
                        "Saldo: R\$ ${saldo.toStringAsFixed(2)}",
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Ação do botão (por exemplo, exibir balanço mensal)
                            },
                            child: const Text("Balanço Mensal"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Ação do botão (por exemplo, reservar para investimento)
                            },
                            child: const Text("Reservado para Investimento"),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
