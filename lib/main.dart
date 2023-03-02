import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 18, 18, 18),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Good to see you Roy',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Welcome Back',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white.withOpacity(0.8),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 120,
                ),
                Text(
                  'Total Balance',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.8), fontSize: 25),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  '\$5 123 090',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 50,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(45),
                      ),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                        child: Text(
                          'Transfer',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
