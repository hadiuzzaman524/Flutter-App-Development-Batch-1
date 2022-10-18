import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("My Profile"),
            centerTitle: true,
          ),
          body: Container(
            width: double.infinity,
            child: Column(
              children: [
                const SizedBox(height: 40),
                const CircleAvatar(
                  radius: 80,
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "Md Hadiuzzaman",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey),
                ),
                const Text(
                  "Software engineer @HeavyTask",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 28,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                   MyButton(),
                   SizedBox(width: 8,),
                   MyButton(),
                   SizedBox(width: 8,),
                   MyButton(),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}


class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 50,
      decoration: const BoxDecoration(
          color: Colors.blue,
          borderRadius:
          BorderRadius.all(Radius.circular(16))),
      padding: const EdgeInsets.all(16),
      child: const Center(
          child: Text(
            "Add Story",
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
            ),
          )),
    );
  }
}
