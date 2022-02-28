import 'package:examen/widgets/templates/simple_page.dart';
import 'package:examen/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimplePage(
      child: body(),
      bottomAppBar: false,
      title: 'Cards',
    );
  }

  Widget body() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                CreditCardWidget(
                  cardNumber: '3725 6087 4432 5678',
                  expiryDate: '09/15',
                  cardHolderName: 'Dimest',
                  cvvCode: '543',
                  showBackView: false,
                  onCreditCardWidgetChange:
                      (CreditCardBrand creditCardBrand) {},
                ),
                CreditCardWidget(
                  cardNumber: '3725 6087 4432 5678',
                  expiryDate: '09/15',
                  cardHolderName: 'Dimest',
                  cvvCode: '543',
                  showBackView: false,
                  onCreditCardWidgetChange:
                      (CreditCardBrand creditCardBrand) {},
                ),
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: CustomText(
              text: 'Recent Trasactions ',
              fontsize: 20,
              fontweight: FontWeight.w500),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: transaccions(),
        )
      ],
    );
  }

  Widget transaccions() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 0,
          child: ListTile(
            leading: const Icon(Icons.coffee),
            title: const Text('Starbucks'),
            subtitle: const Text('Coffee'),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [Text('-7.00'), Text('22 Dec')],
            ),
          ),
        );
      },
    );
  }
}
