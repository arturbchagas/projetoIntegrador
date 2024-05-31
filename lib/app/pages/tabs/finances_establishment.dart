import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart'; // Certifique-se de importar esta linha

class FinancesEstablishment extends StatefulWidget {
  const FinancesEstablishment({super.key});

  @override
  State<FinancesEstablishment> createState() => _FinancesEstablishmentState();
}

class _FinancesEstablishmentState extends State<FinancesEstablishment> {
  String _currentPeriod = 'monthly';
  final List<double> _monthlyData = [25, 17, 5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Text(
                "Financeiro:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Text(
                "data: ${DateTime.now().day.toString().padLeft(2, '0')}/"
                "${DateTime.now().month.toString().padLeft(2, '0')}/"
                "${DateTime.now().year}",
                style: const TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 20),
              const Text(
                "Período:",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () => setState(() {
                      _currentPeriod = 'monthly';
                    }),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _currentPeriod == 'monthly'
                          ? Colors.green
                          : Colors.grey[300],
                      foregroundColor: _currentPeriod == 'monthly'
                          ? Colors.white
                          : Colors.black,
                    ),
                    child: const Text("Mês"),
                  ),
                  ElevatedButton(
                    onPressed: () => setState(() {
                      _currentPeriod = 'weekly';
                    }),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _currentPeriod == 'weekly'
                          ? Colors.green
                          : Colors.grey[300],
                      foregroundColor: _currentPeriod == 'weekly'
                          ? Colors.white
                          : Colors.black,
                    ),
                    child: const Text("Semana"),
                  ),
                  ElevatedButton(
                    onPressed: () => setState(() {
                      _currentPeriod = 'daily';
                    }),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _currentPeriod == 'daily'
                          ? Colors.green
                          : Colors.grey[300],
                      foregroundColor: _currentPeriod == 'daily'
                          ? Colors.white
                          : Colors.black,
                    ),
                    child: const Text("Dia"),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(15.0),
                color: Colors.grey[300],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Maio",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Text("Serviços: ${_monthlyData[0]}"),
                    Text("Atendimentos: ${_monthlyData[1]}"),
                    Text("Avulsos: ${_monthlyData[2]}"),
                    const Divider(color: Colors.black),
                    const Text(
                      "Lucro Total: R\$ 3.750",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: SizedBox(
                  height: 250,
                  child: PieChart(
                    PieChartData(
                      sections: [
                        PieChartSectionData(
                          value: _monthlyData[0],
                          title: 'Serviços',
                          color: Colors.green,
                          radius: 50,
                          titleStyle: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        PieChartSectionData(
                          value: _monthlyData[1],
                          title: 'Atendimentos',
                          color: Colors.blue,
                          radius: 50,
                          titleStyle: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        PieChartSectionData(
                          value: _monthlyData[2],
                          title: 'Avulsos',
                          color: Colors.yellow,
                          radius: 50,
                          titleStyle: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                      sectionsSpace: 4,
                      centerSpaceRadius: 0,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: SizedBox(
                  width: 176,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () {
                      // Adicione aqui a ação a ser executada ao pressionar o botão
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: const Color.fromRGBO(31, 29, 132, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20, // ou o valor desejado
                        vertical: 15, // ou o valor desejado
                      ),
                    ),
                    child: const Text('Baixar relatório'),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
