import 'package:flutter/material.dart';
import 'package:ijato/app/shared/app_routes.dart';
import 'package:ijato/app/widgets/service_bar.dart';
import 'package:ijato/app/widgets/avaliation.dart';

class ResultsBar extends StatelessWidget {
  String establishmentName;
  Avaliation avaliation;
  ServiceBar serviceBar;
  ResultsBar({
    required this.establishmentName,
    required this.avaliation,
    required this.serviceBar,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Center(
          child: Column(
        children: [
          Column(
            children: [
              Container(
                width: 402,
                height: 101,
                margin: const EdgeInsets.only(top: 5, right: 13, left: 13),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(174, 174, 174, 1.0),
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: Colors.black,
                          size: 40.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(establishmentName),
                        const SizedBox(
                          width: 47,
                        ),
                        const Column(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star_rounded, // ícone de estrela
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star_rounded, // ícone de estrela
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star_rounded, // ícone de estrela
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star_rounded, // ícone de estrela
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star_rounded, // ícone de estrela
                                      color: Colors.yellow,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 11),
                        avaliation,
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.local_car_wash,
                          size: 24,
                        )
                      ],
                    ),
                    Row(
                      children: [serviceBar],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      )),
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.detailsLavajato);
      },
    );
  }
}
