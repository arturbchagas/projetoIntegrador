import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'package:ijato/app/widgets/appbar_home.dart';
import 'package:ijato/app/widgets/avatar.dart';
import 'package:ijato/app/widgets/logo.dart';
import 'package:ijato/app/widgets/research_field.dart';

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
                          onTap: () {},
                          title: Center(
                            child: Text(
                              listServices[index].name,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ),
                          subtitle: Text(
                            listServices[index].description.join(' '),
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
                                listServices.removeAt(
                                    index); // Remove o serviço da lista
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
                              showAlertDialog(context);
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

void showAlertDialog(BuildContext context) {
  // Configura o button1
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

  // Configura o button2
  Widget saveButton = TextButton(
    style: TextButton.styleFrom(
      backgroundColor: const Color.fromRGBO(24, 22, 148, 1),
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    ),
    onPressed: () {
      // Coloque a lógica para salvar aqui
      Navigator.of(context).pop();
    },
    child: const Text("Salvar"),
  );

  // Exibe o dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Theme(
        data: ThemeData.light().copyWith(
          dialogBackgroundColor: const Color.fromRGBO(201, 201, 201, 1),
        ),
        child: AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          title: const Padding(
            padding: EdgeInsets.only(bottom: 1.0), // Espaço abaixo do título
            child: Text("Cadastrar Serviço"),
          ),
          content: SizedBox(
            width: 254,
            height: 381,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                // Espaço antes do primeiro TextField, se necessário
                const SizedBox(height: 3.0),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Nome',
                    fillColor:
                        Colors.white, // Define a cor de fundo para branco
                    filled:
                        true, // Importante - deve ser verdadeiro para ativar a cor de fundo
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 27), // Adiciona espaço entre os campos
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Descrição',
                    fillColor:
                        Colors.white, // Define a cor de fundo para branco
                    filled:
                        true, // Importante - deve ser verdadeiro para ativar a cor de fundo
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  maxLines: 6,
                ),
                const SizedBox(height: 27), // Adiciona espaço entre os campos
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Valor',
                    fillColor:
                        Colors.white, // Define a cor de fundo para branco
                    filled:
                        true, // Importante - deve ser verdadeiro para ativar a cor de fundo
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ],
            ),
          ),
          actions: [
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Centraliza os botões
              children: [
                cancelButton,
                const SizedBox(width: 71.5), // Espaço entre os botões
                saveButton,
              ],
            ),
          ],
        ),
      );
    },
  );
}

/*>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
  lista de serviços para ser realocada em arquivo .dart em local da escolha do gerente Gabriel
<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<*/

class Services {
  final String name;
  final double value;
  final List<String> description;

  const Services(this.name, this.value, this.description);
}

const listServices = [
  Services("Leva e traz:", 00.00, [
    "Deixe que um funcionário pegue o seu veículo em sua casa, sem se preocupar em ir ao local pessoalmente."
  ]),
  Services("Lavar na residência:", 00.00, [
    "Um responsável irá até a sua residência para efetuar o serviço de higienização do seu veículo."
  ]),
  Services("Polimento:", 200.00, [
    "Restaura o brilho do seu veículo, removendo riscos superficiais, manchas e imperfeições."
  ]),
  Services("Higienização Completa:", 250.00, [
    "Restaura o brilho do seu veículo, removendo riscos superficiais, manchas e imperfeições."
  ]),
  Services("Higienização Simples:", 50.00, [
    "Restaura o brilho do seu veículo, removendo riscos superficiais, manchas e imperfeições."
  ]),
  Services("Vitrificação:", 450.00, [
    "Procedimento que cria uma camada protetora na pintura do veículo, proporcionando brilho intenso e proteção duradoura."
  ]),
  Services("Polimento Faróis:", 450.00, [
    "Procedimento que restaura a clareza e brilho dos faróis do seu veículo. Ele remove arranhões, manchas e o amarelamento causado pelo..."
  ]),
  Services("Cristalização de vidros:", 150.00, [
    "Procedimento que cria-se uma fina camada de silicone que repele a chuva, reduz a aderência de poeira e protege contra pequenos danos. "
  ]),
  Services("Oxi-Sanitização:", 500.00, [
    "Limpeza industrial que foi adaptada para a área automotiva, usada diretamente para limpeza de ar condicionado e para cuidar do mau cheiro na parte interna do carro. É utilizado um gás natural chamado ozônio, que é eficiente na destruição de fungos, bactérias e vírus possuindo um efeito germicida. Com uma aplicação mais direta, sua eficiência de desinfecção aumenta."
  ])
];
