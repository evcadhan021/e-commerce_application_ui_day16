import 'package:flutter/material.dart';

class ButtonInput extends StatelessWidget {
  final String textButton;
  const ButtonInput({
    super.key,
    required this.textButton,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 300,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30), topRight: Radius.circular(30)),
        color: Color.fromARGB(255, 0, 26, 47),
      ),
      child: Center(
        child: Text(
          textButton,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
