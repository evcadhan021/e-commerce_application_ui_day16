import 'package:flutter/material.dart';

class InputNoSensor extends StatefulWidget {
  final String textNoSensor;
  const InputNoSensor({
    super.key,
    required this.textNoSensor,
  });

  @override
  State<InputNoSensor> createState() => _InputNoSensorState();
}

class _InputNoSensorState extends State<InputNoSensor> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.textNoSensor,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          height: 60,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: const TextField(
            decoration: InputDecoration(
              hintText: "Masukkan email anda",
              hintStyle: TextStyle(color: Colors.grey),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(
                  vertical: 18.0, horizontal: 12.0), // Atur padding
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
