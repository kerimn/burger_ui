import 'package:burgerapp/screens/my_bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            SizedBox(
              height: size.height,
              width: size.width,
              child: Image.network(
                "https://img.freepik.com/free-photo/delicious-burger-with-fresh-ingredients_23-2150857908.jpg?t=st=1724044288~exp=1724047888~hmac=696b86344b4a54da3ec70e199b7f711669e704bda716f288a6dcd60b4009ac60&w=740",
                fit: BoxFit.cover,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: size.height * 0.05),
                const Center(
                  child: Text(
                    "              👑",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                const Center(
                  child: Text(
                    "BURGER \nQUEEN",
                    style: TextStyle(
                        height: 0.9,
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.53,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Good Food \nTasty Food *",
                        style: TextStyle(
                            fontSize: 43,
                            height: 1.2,
                            decoration: TextDecoration.underline,
                            decorationColor: Color.fromARGB(255, 172, 109, 8),
                            color: Colors.white,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(height: size.height * 0.05),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MyBottomNavBar(),
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.amber[800],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Center(
                            child: Padding(
                              padding: EdgeInsets.all(14),
                              child: Text(
                                "Sign in",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.03),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account",
                            style:
                                TextStyle(fontSize: 17, color: Colors.white70),
                          ),
                          Text(
                            "Sign up",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
