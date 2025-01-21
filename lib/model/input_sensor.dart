import 'package:flutter/material.dart';

class InputSensor extends StatefulWidget {
  final String textSensor;
  const InputSensor({
    super.key,
    required this.textSensor,
  });

  @override
  State<InputSensor> createState() => _InputSensorState();
}

class _InputSensorState extends State<InputSensor> {
  bool _sensorPassword = true; // untuk toggle sensor password

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.textSensor,
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
          child: TextField(
            obscureText: _sensorPassword,
            decoration: InputDecoration(
                hintText: "Masukkan password anda",
                hintStyle: const TextStyle(color: Colors.grey),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 18.0, horizontal: 12.0), // Atur padding
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _sensorPassword =
                          !_sensorPassword; // toggle sensor disini
                    });
                  },
                  icon: Icon(
                    _sensorPassword ? Icons.visibility_off : Icons.visibility,
                    color: Colors.grey,
                  ),
                )),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
