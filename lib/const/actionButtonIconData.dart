import 'package:examen/widgets/buttons/icon_button.dart';
import 'package:flutter/material.dart';

List<IconBtn> iconBtn = [
      IconBtn(
        icon: Icons.credit_card_rounded,
        color: Colors.green,
        callBack: (context) => Navigator.of(context).pushNamed('/card'),
        text: 'Cards',
      ),
      IconBtn(
        icon: Icons.calendar_month_rounded,
        color: Colors.blue,
        callBack: (context) {},
        text: 'Installment',
      ),
      IconBtn(
        icon: Icons.local_atm_rounded,
        color: Colors.purple,
        callBack: (context) {},
        text: 'Loan',
      ),
      IconBtn(
        icon: Icons.favorite,
        color: Colors.deepPurple,
        callBack: (context) {},
        text: 'Donations',
      ),
      IconBtn(
        icon: Icons.insert_drive_file_rounded,
        color: Colors.pinkAccent,
        callBack: (context) {},
        text: 'Data',
      ),
      IconBtn(
        icon: Icons.message_rounded,
        color: Colors.pink[300]!,
        callBack: (context) {},
        text: 'Service',
      )
    ];