import 'package:flutter/material.dart';

class ExpandableCard extends StatefulWidget {
  final String date;
  final String time;
  final String status;
  final String name;
  final String vehicle;
  final String brand;
  final String model;
  final String plate;
  final String service;

  const ExpandableCard({
    super.key,
    required this.date,
    required this.time,
    required this.status,
    required this.name,
    required this.vehicle,
    required this.brand,
    required this.model,
    required this.plate,
    required this.service,
  });

  @override
  _ExpandableCardState createState() => _ExpandableCardState();
}

class _ExpandableCardState extends State<ExpandableCard> {
  bool isCardExpanded = false;

  Widget _renderItem() {
    return GestureDetector(
      onTap: () {
        setState(() {
          isCardExpanded = true;
        });
      },
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 4),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
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
                  const SizedBox(width: 60),
                  const Icon(Icons.directions_car, size: 45.0),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 6.0,
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 9, 122, 13),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Text(
                      widget.status,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
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
        color: Color.fromRGBO(172, 172, 172, 1),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
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
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(width: 70),
                  const Icon(Icons.directions_car, size: 40.0),
                  const Spacer(),
                ],
              ),
              const SizedBox(height: 8),
              Text('Nome: ${widget.name}'),
              Text('Veículo: ${widget.vehicle}'),
              Text('Marca: ${widget.brand}'),
              Text('Modelo: ${widget.model}'),
              Text('Placa: ${widget.plate}'),
              Text('Serviço: ${widget.service}'),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 6.0,
                ),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 9, 122, 13),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  widget.status,
                  style: const TextStyle(color: Colors.white),
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
