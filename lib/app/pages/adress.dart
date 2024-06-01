import 'package:flutter/material.dart';
import 'package:ijato/app/shared/app_routes.dart';
import 'package:ijato/app/widgets/appbar_home.dart';
import 'package:ijato/app/widgets/avatar.dart';
import 'package:ijato/app/widgets/logo.dart';
import 'package:ijato/app/widgets/services_main_container.dart';
import 'package:ijato/app/widgets/user_buttons.dart';

class Adress extends StatelessWidget {
  const Adress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SizedBox(height: 175, child: AppbarHome()),
          SafeArea(
              child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: const Column(
                  children: [
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 100,
                          height: 100,
                          child: LogoImage(),
                        ),
                        SizedBox(
                          width: 100,
                          height: 100,
                          child: AvatarImage(),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              Column(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 13, left: 13),
                          padding: EdgeInsets.only(
                              right: 14, left: 14, top: 8, bottom: 14),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(102, 114, 180, 1.0),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [serviceMain()],
                          ),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            PreviusButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, AppRoutes.servicePage);
                              },
                            ),
                            SizedBox(
                              width: 21,
                            ),
                            NextButton(
                                nextbuttonName: 'Próximo',
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, AppRoutes.payment);
                                }),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ))
        ],
      ),
    );
    ;
  }
}
