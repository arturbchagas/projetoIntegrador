import 'package:flutter/material.dart';
import 'package:ijato/app/controllers/solicitation_controller.dart';
import 'package:ijato/app/models/service.dart';
import 'package:ijato/app/widgets/text_primary.dart';
import 'package:provider/provider.dart';

class ExpandableCard extends StatefulWidget {
  final Service service;
  final int index;

  const ExpandableCard({
    super.key,
    required this.service,
    required this.index,
  });

  @override
  _ExpandableCardState createState() => _ExpandableCardState();
}

class _ExpandableCardState extends State<ExpandableCard> {
  bool isCardExpanded = false;

  Widget _renderItem(SolicitationController controller) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isCardExpanded = true;
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
                          widget.service.date,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.service.time,
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
                  if (widget.service.status == ServiceStatus.pending)
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
                      child: Text(
                        widget.service.statusDisplay(),
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  if (widget.service.status == ServiceStatus.confirmed ||
                      widget.service.status == ServiceStatus.canceled)
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12.0,
                        vertical: 8.0,
                      ),
                      decoration: BoxDecoration(
                        color: widget.service.status == ServiceStatus.confirmed
                            ? const Color.fromARGB(255, 9, 122, 13)
                            : const Color.fromARGB(255, 181, 0, 0),
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Text(
                        widget.service.statusDisplay(),
                        style: const TextStyle(
                          color: Colors.white,
                        ),
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

  Widget _renderExpandedItem(SolicitationController controller) {
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
                        widget.service.time,
                        style: const TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      TextPrimary(textName: 'Nome: ${widget.service.name}'),
                      TextPrimary(
                          textName: 'Veículo: ${widget.service.vehicle}'),
                      TextPrimary(textName: 'Marca: ${widget.service.brand}'),
                      TextPrimary(textName: 'Modelo: ${widget.service.model}'),
                      TextPrimary(textName: 'Placa: ${widget.service.plate}'),
                      TextPrimary(
                          textName: 'Serviço: ${widget.service.service}'),
                    ],
                  ),
                  const SizedBox(width: 40),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Icon(
                      Icons.directions_car,
                      size: MediaQuery.of(context).size.width * 0.2,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(height: 11.0),
              if (widget.service.status != ServiceStatus.confirmed &&
                  widget.service.status != ServiceStatus.canceled)
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            controller.changeStatus(
                                widget.index, ServiceStatus.canceled);
                            setState(() {
                              isCardExpanded = true;
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
                            controller.changeStatus(
                                widget.index, ServiceStatus.confirmed);
                            setState(() {
                              isCardExpanded = true;
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
              if (widget.service.status == ServiceStatus.confirmed ||
                  widget.service.status == ServiceStatus.canceled)
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
                            color:
                                widget.service.status == ServiceStatus.confirmed
                                    ? const Color.fromARGB(255, 9, 122, 13)
                                    : const Color.fromARGB(255, 181, 0, 0),
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(color: Colors.black)),
                        child: Text(
                          widget.service.statusDisplay(),
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
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final solicitationController = Provider.of<SolicitationController>(context);

    return !isCardExpanded
        ? _renderItem(solicitationController)
        : _renderExpandedItem(solicitationController);
  }
}
