import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'pages/create_account.dart';
import 'pages/shop.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  // late AnimationController _scaleController;
  // late Animation<double> _scaleAnimation;

  // bool hide = false;

  // @override
  // void initState() {
  //   super.initState();

  //   _scaleController = AnimationController(
  //     vsync: this,
  //     duration: const Duration(milliseconds: 400),
  //   );

  //   _scaleAnimation = Tween<double>(begin: 1.0, end: 30)
  //       .animate(_scaleController)
  //     ..addStatusListener((status) {
  //       if (status == AnimationStatus.completed) {
  //         Navigator.pushReplacement(
  //           context,
  //           PageTransition(type: PageTransitionType.fade, child: const Shop()),
  //         );
  //       }
  //     });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/splash_screen.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.3)
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Brand New Perspective',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Let\'s Start with our summer collection',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                GestureDetector(
                  onTap: () {
                    debugPrint("berhasil di klik");
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Shop()),
                      );
                    });
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: const Center(
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    debugPrint("berhasil di klik");
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CreateAccount()),
                      );
                    });
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.transparent,
                        border: Border.all(
                          color: Colors.white,
                        )),
                    child: const Center(
                      child: Text(
                        "Create Account",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
