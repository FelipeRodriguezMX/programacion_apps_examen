import 'package:examen/const/actionButtonIconData.dart';
import 'package:flutter/material.dart';

class ActionCard extends StatelessWidget {
  const ActionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: body(),
    );
  }

  Widget body() {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,),
            itemCount: iconBtn.length,
            itemBuilder: (BuildContext context, int index) => Container(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: iconBtn[index],
            ),
          ),
        ],
      ),
    );
  }
}
