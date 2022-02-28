import 'package:examen/widgets/background_gradient.dart';
import 'package:examen/widgets/balance.dart';
import 'package:examen/widgets/cards/action_card.dart';
import 'package:examen/widgets/templates/simple_page.dart';
import 'package:examen/widgets/text.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimplePage(
      child: body(),
      bottomAppBar: true,
    );
  }

  Widget body() {
    return Stack(
      children: [
        Column(
          children: [
            const Expanded(
              flex: 1,
              child: BackgroundGradient(),
            ),
            Expanded(
              flex: 2,
              child: Container(color: Colors.transparent),
            )
          ],
        ),
        Column(
          children: [
            const Spacer(),
            userData(),
            const Spacer(),
            const ActionCard(),
            const Balance(),
          ],
        )
      ],
    );
  }

  Widget userData() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: const [
              CustomText(
                text: 'Dimest',
                fontsize: 30,
                fontweight: FontWeight.w500,
                color: Colors.white,
              ),
              CustomText(
                text: '176******787',
                fontsize: 20,
                fontweight: FontWeight.w400,
                color: Colors.white,
              )
            ],
          ),
          const CircleAvatar(
            radius: 40,
            child: Icon(Icons.person_rounded, size: 40),
          )
        ],
      ),
    );
  }
}
