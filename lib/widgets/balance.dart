import 'package:examen/widgets/cards/balance_card.dart';
import 'package:examen/widgets/text.dart';
import 'package:flutter/material.dart';

class Balance extends StatelessWidget {
  const Balance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        balanceLabel(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            BalanceCard(
              amount: '368.17',
              account: 'STEEM',
              dotColor: Colors.deepPurpleAccent,
            ),
            BalanceCard(
              amount: '282.35',
              account: 'SBD',
              dotColor: Colors.deepPurpleAccent,
            )
          ],
        ),
        balanceListTile()
      ],
    );
  }

   Widget balanceLabel() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: CustomText(
        text: 'Balance',
        fontsize: 25,
        fontweight: FontWeight.w600,
        color: Colors.grey,
      ),
    );
  }

  Widget balanceListTile() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: const ListTile(
          title: CustomText(
              text: '47.90%', fontsize: 20, fontweight: FontWeight.bold),
          subtitle: CustomText(
            text: 'Resource Credies',
            fontsize: 15,
            fontweight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}