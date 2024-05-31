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
  final List<double> _weeklyData = [6, 4, 1];
  final List<double> _dailyData = [1, 1, 1];

  final double _monthlyProfit = 3750;
  final double _weeklyProfit = 900;
  final double _dailyProfit = 150;

  @override
  Widget build(BuildContext context) {
    List<double> _currentData = _currentPeriod == 'monthly'
        ? _monthlyData
        : (_currentPeriod == 'weekly' ? _weeklyData : _dailyData);

    double _currentProfit = _currentPeriod == 'monthly'
        ? _monthlyProfit
        : (_currentPeriod == 'weekly' ? _weeklyProfit : _dailyProfit);

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
                    Text("Serviços: ${_currentData[0]}"),
                    Text("Atendimentos: ${_currentData[1]}"),
                    Text("Avulsos: ${_currentData[2]}"),
                    const Divider(color: Colors.black),
                    Text(
                      "Lucro Total: R\$ $_currentProfit", // Altere esta linha
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 250,
                          child: PieChart(
                            PieChartData(
                              sections: [
                                PieChartSectionData(
                                  value: _currentData[0],
                                  color: Colors.green,
                                  radius: 50,
                                ),
                                PieChartSectionData(
                                  value: _currentData[1],
                                  color: Colors.blue,
                                  radius: 50,
                                ),
                                PieChartSectionData(
                                  value: _currentData[2],
                                  color: Colors.yellow,
                                  radius: 50,
                                ),
                              ],
                              sectionsSpace: 4,
                              centerSpaceRadius: 0,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                color: Colors.green,
                              ),
                              SizedBox(width: 5),
                              Text('Serviços'),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                color: Colors.blue,
                              ),
                              SizedBox(width: 5),
                              Text('Atendimentos'),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                color: Colors.yellow,
                              ),
                              SizedBox(width: 5),
                              Text('Avulsos'),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 100,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: SizedBox(
                  width: 176,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () {},
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
