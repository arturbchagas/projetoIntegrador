import 'package:flutter/material.dart';
import 'package:ijato/app/controllers/solicitation_controller.dart';
import 'package:ijato/app/widgets/expandable_card.dart';
import 'package:provider/provider.dart';

class RequestsEstablishment extends StatelessWidget {
  const RequestsEstablishment({super.key});

  Iterable<E> mapIndexed<E, T>(
      Iterable<T> items, E Function(int index, T item) f) sync* {
    var index = 0;

    for (final item in items) {
      yield f(index, item);
      index = index + 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    final solicitationController = Provider.of<SolicitationController>(context);
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Container(
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    "Solicitações de Agendamento:",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
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
                            child: Column(
                                children:
                                    mapIndexed(solicitationController.services,
                                        (index, service) {
                              return ExpandableCard(
                                  service: service, index: index);
                            }).toList()),
                          ),

                          const SizedBox(height: 20),
                          // Adicione mais ExpandableCard se necessário
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}