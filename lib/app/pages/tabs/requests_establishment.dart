import 'package:flutter/material.dart';
import 'package:ijato/app/widgets/expandable_card.dart';

class RequestsEstablishment extends StatelessWidget {
  const RequestsEstablishment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Container(
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    const Text(
                      "Solicitações de Agendamento:",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),

                    const SizedBox(height: 20),

                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: const Color.fromRGBO(217, 217, 217, 1),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 20.0,
                      ),
                      child: const Column(
                        children: [
                          ExpandableCard(
                            date: "30/05/2024",
                            time: "08:00 às 09:00",
                            name: "Vinicius Sobreira",
                            vehicle: "Carro",
                            brand: "Fiat",
                            model: "Siena",
                            plate: "OSF-0240",
                            service: "Higienização completa",
                            statusConfirmado: "Confirmado",
                            statusRecusado: "Recusado",
                          ),
                          ExpandableCard(
                            date: "30/05/2024",
                            time: "08:00 às 09:00",
                            name: "Vinicius Sobreira",
                            vehicle: "Carro",
                            brand: "Fiat",
                            model: "Siena",
                            plate: "OSF-0240",
                            service: "Higienização completa",
                            statusConfirmado: "Confirmado",
                            statusRecusado: "Recusado",
                          ),
                          ExpandableCard(
                            date: "30/05/2024",
                            time: "08:00 às 09:00",
                            name: "Vinicius Sobreira",
                            vehicle: "Carro",
                            brand: "Fiat",
                            model: "Siena",
                            plate: "OSF-0240",
                            service: "Higienização completa",
                            statusConfirmado: "Confirmado",
                            statusRecusado: "Recusado",
                          ),
                          ExpandableCard(
                            date: "30/05/2024",
                            time: "08:00 às 09:00",
                            name: "Vinicius Sobreira",
                            vehicle: "Carro",
                            brand: "Fiat",
                            model: "Siena",
                            plate: "OSF-0240",
                            service: "Higienização completa",
                            statusConfirmado: "Confirmado",
                            statusRecusado: "Recusado",
                          ),
                          ExpandableCard(
                            date: "30/05/2024",
                            time: "08:00 às 09:00",
                            name: "Vinicius Sobreira",
                            vehicle: "Carro",
                            brand: "Fiat",
                            model: "Siena",
                            plate: "OSF-0240",
                            service: "Higienização completa",
                            statusConfirmado: "Confirmado",
                            statusRecusado: "Recusado",
                          ),
                          ExpandableCard(
                            date: "30/05/2024",
                            time: "08:00 às 09:00",
                            name: "Vinicius Sobreira",
                            vehicle: "Carro",
                            brand: "Fiat",
                            model: "Siena",
                            plate: "OSF-0240",
                            service: "Higienização completa",
                            statusConfirmado: "Confirmado",
                            statusRecusado: "Recusado",
                          ),
                          ExpandableCard(
                            date: "30/05/2024",
                            time: "08:00 às 09:00",
                            name: "Vinicius Sobreira",
                            vehicle: "Carro",
                            brand: "Fiat",
                            model: "Siena",
                            plate: "OSF-0240",
                            service: "Higienização completa",
                            statusConfirmado: "Confirmado",
                            statusRecusado: "Recusado",
                          ),
                          ExpandableCard(
                            date: "30/05/2024",
                            time: "08:00 às 09:00",
                            name: "Vinicius Sobreira",
                            vehicle: "Carro",
                            brand: "Fiat",
                            model: "Siena",
                            plate: "OSF-0240",
                            service: "Higienização completa",
                            statusConfirmado: "Confirmado",
                            statusRecusado: "Recusado",
                          ),
                          ExpandableCard(
                            date: "30/05/2024",
                            time: "08:00 às 09:00",
                            name: "Vinicius Sobreira",
                            vehicle: "Carro",
                            brand: "Fiat",
                            model: "Siena",
                            plate: "OSF-0240",
                            service: "Higienização completa",
                            statusConfirmado: "Confirmado",
                            statusRecusado: "Recusado",
                          ),
                          ExpandableCard(
                            date: "30/05/2024",
                            time: "08:00 às 09:00",
                            name: "Vinicius Sobreira",
                            vehicle: "Carro",
                            brand: "Fiat",
                            model: "Siena",
                            plate: "OSF-0240",
                            service: "Higienização completa",
                            statusConfirmado: "Confirmado",
                            statusRecusado: "Recusado",
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),
                    // Adicione mais ExpandableCard se necessário
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}