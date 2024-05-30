import 'package:flutter/material.dart';

import 'package:ijato/app/widgets/appbar_home.dart';
import 'package:ijato/app/widgets/avatar.dart';
import 'package:ijato/app/widgets/logo.dart';

class ServicesStablishment extends StatefulWidget {
  const ServicesStablishment({super.key});

  @override
  State<ServicesStablishment> createState() => _ServicesStablishmentState();
}

class _ServicesStablishmentState extends State<ServicesStablishment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SizedBox(height: 135, child: AppbarHome()),
          SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 100, height: 100, child: LogoImage()),
                      SizedBox(width: 100, height: 100, child: AvatarImage())
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Serviços:",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    flex: 11,
                    child: ListView.builder(
                      itemCount: listServices.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          onTap: () {
                            showCustomModal(context, listServices[index]);
                          },
                          title: Center(
                            child: Text(
                              listServices[index].name,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          subtitle: Text(
                            listServices[index].description,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          leading: Container(
                            width: 56.0,
                            height: 53.0,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(49, 101, 24, 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  '${listServices[index].value}',
                                  style: const TextStyle(
                                    fontSize: 13.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          trailing: IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () {
                              setState(() {
                                listServices.removeAt(index);
                              });
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SizedBox(
                          width: 176,
                          height: 52,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor:
                                  const Color.fromRGBO(31, 29, 132, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            onPressed: () {
                              showCustomModal(context, null);
                            },
                            child: const Text('Cadastrar'),
                          ),
                        ),
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

void showCustomModal(BuildContext context, Services? service) {
  final nameController = TextEditingController(text: service?.name);
  final descriptionController =
      TextEditingController(text: service?.description.toString());
  final valueController =
      TextEditingController(text: service?.value.toString());

  Widget cancelButton = TextButton(
    style: TextButton.styleFrom(
      backgroundColor: const Color.fromRGBO(195, 0, 0, 1),
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    ),
    onPressed: () {
      Navigator.of(context).pop();
    },
    child: const Text("Cancelar"),
  );

  Widget saveButton = TextButton(
    style: TextButton.styleFrom(
      backgroundColor: const Color.fromRGBO(24, 22, 148, 1),
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    ),
    onPressed: () {
      Navigator.of(context).pop();
    },
    child: const Text("Salvar"),
  );

  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return FractionallySizedBox(
          heightFactor: 0.7,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 32.0,
                horizontal: 28.0,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(bottom: 22.0),
                    child: Text(
                      "Cadastrar Serviço",
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 3.0),
                  TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      labelText: 'Nome',
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 27),
                  TextField(
                    controller: descriptionController,
                    decoration: InputDecoration(
                      labelText: 'Descrição',
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    maxLines: 4,
                  ),
                  const SizedBox(height: 27),
                  TextField(
                    controller: valueController,
                    decoration: InputDecoration(
                      labelText: 'Valor',
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 27),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      cancelButton,
                      const SizedBox(width: 71.5),
                      saveButton,
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      });
}

class Services {
  final String name;
  final double value;
  final String description;

  Services(this.name, this.value, this.description);
}

List<Services> listServices = [
  Services("Leva e traz:", 00.00,
      "Deixe que um funcionário pegue o seu veículo em sua casa, sem se preocupar em ir ao local pessoalmente."),
  Services("Lavar na residência:", 00.00,
      "Um responsável irá até a sua residência para efetuar o serviço de higienização do seu veículo."),
  Services("Polimento:", 200.00,
      "Restaura o brilho do seu veículo, removendo riscos superficiais, manchas e imperfeições."),
  Services("Higienização Completa:", 250.00,
      "Restaura o brilho do seu veículo, removendo riscos superficiais, manchas e imperfeições."),
  Services("Higienização Simples:", 50.00,
      "Restaura o brilho do seu veículo, removendo riscos superficiais, manchas e imperfeições."),
  Services("Vitrificação:", 450.00,
      "Procedimento que cria uma camada protetora na pintura do veículo, proporcionando brilho intenso e proteção duradoura."),
  Services("Polimento Faróis:", 450.00,
      "Procedimento que restaura a clareza e brilho dos faróis do seu veículo. Ele remove arranhões, manchas e o amarelamento causado pelo..."),
  Services("Cristalização de vidros:", 150.00,
      "Procedimento que cria-se uma fina camada de silicone que repele a chuva, reduz a aderência de poeira e protege contra pequenos danos. "),
  Services("Oxi-Sanitização:", 500.00,
      "Limpeza industrial que foi adaptada para a área automotiva, usada diretamente para limpeza de ar condicionado e para cuidar do mau cheiro na parte interna do carro. É utilizado um gás natural chamado ozônio, que é eficiente na destruição de fungos, bactérias e vírus possuindo um efeito germicida. Com uma aplicação mais direta, sua eficiência de desinfecção aumenta.")
];
