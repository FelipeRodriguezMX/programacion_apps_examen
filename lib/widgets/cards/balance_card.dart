import 'package:examen/widgets/text.dart';
import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({
    Key? key,
    required this.amount,
    required this.account,
    this.dotColor,
  }) : super(key: key);
  final String amount;
  final String account;
  final Color? dotColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 173,
      height: 150,
      child: body(),
    );
  }

  Widget body() {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: dotColor,
                shape: BoxShape.circle,
              ),
            ),
            const Spacer(),
            CustomText(text: amount, fontsize: 30, fontweight: FontWeight.bold),
            CustomText(
                text: account,
                fontsize: 15,
                fontweight: FontWeight.bold,
                color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
