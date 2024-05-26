import 'package:flutter/material.dart';
import 'package:ijato/app/widgets/text_primary.dart';

class ExpandableCard extends StatefulWidget {
  final String date;
  final String time;
  final String name;
  final String vehicle;
  final String brand;
  final String model;
  final String plate;
  final String service;
  final String statusConfirmado;
  final String statusRecusado;

  const ExpandableCard({
    super.key,
    required this.date,
    required this.time,
    required this.name,
    required this.vehicle,
    required this.brand,
    required this.model,
    required this.plate,
    required this.service,
    required this.statusConfirmado,
    required this.statusRecusado,
  });

  @override
  _ExpandableCardState createState() => _ExpandableCardState();
}

class _ExpandableCardState extends State<ExpandableCard> {
  bool isCardExpanded = false;
  bool isConfirmButtonVisible = false;
  bool isConfirmButtonVisibleAceitar = false;
  bool isConfirmButtonVisibleRecusar = false;

  Widget _renderItem() {
    return GestureDetector(
      onTap: () {
        setState(() {
          isCardExpanded = false;
        });
      },
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 4),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Spacer(flex: 2),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.date,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.time,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ]),
                  const Spacer(flex: 6),
                  const Column(
                    children: [
                      SizedBox(height: 10.0),
                      Icon(Icons.directions_car, size: 45.0),
                      Icon(
                        Icons.arrow_drop_down_outlined,
                        size: 30.0,
                      ),
                    ],
                  ),
                  const Spacer(flex: 8),
                  if (!isConfirmButtonVisible)
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 8.0,
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 208, 215, 2),
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(color: Colors.black),
                      ),
                      child: const Text(
                        "Pendente",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  if (isConfirmButtonVisibleAceitar)
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12.0,
                        vertical: 8.0,
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 9, 122, 13),
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Text(
                        widget.statusConfirmado,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  if (isConfirmButtonVisibleRecusar)
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 18.0,
                        vertical: 8.0,
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 181, 0, 0),
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(color: Colors.black),
                      ),
                      child: const Text(
                        "Recusado",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  const Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _renderExpandedItem() {
    return GestureDetector(
      onTap: () {
        setState(() {
          isCardExpanded = false;
        });
      },
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 4),
        color: const Color.fromRGBO(172, 172, 172, 1),
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.time,
                        style: const TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      TextPrimary(textName: 'Nome: ${widget.name}'),
                      TextPrimary(textName: 'Veículo: ${widget.vehicle}'),
                      TextPrimary(textName: 'Marca: ${widget.brand}'),
                      TextPrimary(textName: 'Modelo: ${widget.model}'),
                      TextPrimary(textName: 'Placa: ${widget.plate}'),
                      TextPrimary(textName: 'Serviço: ${widget.service}'),
                    ],
                  ),
                  const SizedBox(width: 40),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0)),
                    child: const Icon(
                      Icons.directions_car,
                      size: 90.0,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(height: 11.0),
              if (!isConfirmButtonVisible)
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isConfirmButtonVisibleRecusar = true;
                              isConfirmButtonVisible = true;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 25.0,
                              vertical: 8.0,
                            ),
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(195, 0, 0, 1),
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(color: Colors.black),
                            ),
                            child: const Text(
                              "Recusar",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(width: 30),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isConfirmButtonVisibleAceitar = true;
                              isConfirmButtonVisible = true;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30.0,
                              vertical: 8.0,
                            ),
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(24, 22, 148, 1),
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(color: Colors.black),
                            ),
                            child: const Text(
                              "Aceitar",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.arrow_drop_up_outlined,
                      size: 30.0,
                    ),
                  ],
                ),
              if (isConfirmButtonVisibleAceitar)
                Center(
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 124,
                        height: 31,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                          vertical: 6.0,
                        ),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 9, 122, 13),
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(color: Colors.black)),
                        child: Text(
                          widget.statusConfirmado,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      const Icon(
                        Icons.arrow_drop_up_outlined,
                        size: 30.0,
                      ),
                    ],
                  ),
                ),
              if (isConfirmButtonVisibleRecusar)
                Center(
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 124,
                        height: 31,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                          vertical: 6.0,
                        ),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 213, 0, 0),
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(color: Colors.black)),
                        child: const Text(
                          "Recusado",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const Icon(
                        Icons.arrow_drop_up_outlined,
                        size: 30.0,
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return !isCardExpanded ? _renderItem() : _renderExpandedItem();
  }
}
