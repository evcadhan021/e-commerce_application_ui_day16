import 'package:ecommerce_application_ui_day16/model/button_input.dart';
import 'package:ecommerce_application_ui_day16/model/input_no_sensor.dart';
import 'package:ecommerce_application_ui_day16/model/input_sensor.dart';
import 'package:ecommerce_application_ui_day16/view/sign_up.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/add_image/background-.jpg"),
          fit: BoxFit.cover,
        )),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 100,
            ),
            Image.asset(
              'assets/add_image/flutter.png',
              scale: 5,
              color: Colors.white,
            ),
            const SizedBox(
              height: 60,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white38,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 15),
                      const Text(
                        "E-commerce \n rmmdh.n",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          height: 1.2,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 30),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InputNoSensor(textNoSensor: "Email"),
                          InputSensor(textSensor: "Password"),
                          SizedBox(height: 40),
                          ButtonInput(textButton: "Login"),
                          SizedBox(
                            height: 70,
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          debugPrint('pindah ke Sign up!');
                          setState(() {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignUp(),
                              ),
                            );
                          });
                        },
                        child: const Text(
                          "Don't Have any account? Sign up",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
