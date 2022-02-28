import 'package:flutter/material.dart';

typedef CustomButtonCallback = void Function(BuildContext context);

class IconBtn extends StatelessWidget {
  const IconBtn({
    Key? key,
    required this.icon,
    required this.color,
    required this.callBack,
    required this.text,
  }) : super(key: key);
  final IconData icon;
  final Color color;
  final CustomButtonCallback callBack;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => callBack(context),
      child: Column(
        children: [
          iconButton(),
          const Padding(padding: EdgeInsets.symmetric(vertical: 4)),
          Text(text)
        ],
      ),
    );
  }

  Widget iconButton() {
    return CircleAvatar(
      backgroundColor: color.withOpacity(.2),
      radius: 25,
      child: Icon(
        icon,
        color: color,
        size: 33,
      ),
    );
  }
}
