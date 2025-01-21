import 'package:ecommerce_application_ui_day16/model/button_input.dart';
import 'package:ecommerce_application_ui_day16/model/input_no_sensor.dart';
import 'package:ecommerce_application_ui_day16/view/login.dart';
import 'package:flutter/material.dart';

import '../model/input_sensor.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
            Container(
              height: 150,
              width: double.infinity,
              color: Colors.transparent,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        debugPrint('kembali ke Login Screen');
                        setState(() {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Login()));
                        });
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    const Text("Sign Up",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                        )),
                    Text(""),
                  ],
                ),
              ),
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
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const InputNoSensor(
                        textNoSensor: "First Name",
                      ),
                      const InputNoSensor(
                        textNoSensor: "Last Name",
                      ),
                      const InputNoSensor(
                        textNoSensor: "Email",
                      ),
                      const InputSensor(
                        textSensor: "Password",
                      ),
                      const InputSensor(
                        textSensor: "Confirm password",
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const ButtonInput(
                        textButton: "Register",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          debugPrint('pindah ke Login!');
                          setState(() {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Login(),
                              ),
                            );
                          });
                        },
                        child: const Text(
                          "Already have any account? Login here",
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
