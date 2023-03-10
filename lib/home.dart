import 'package:flutter/material.dart';
import 'package:pushback/page2.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  // A method that launches the SelectionScreen and awaits the result from
// Navigator.pop.
  String value = "";
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 48, 87, 49),
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: Container(
                  height: 100,
                  width: 225,
                  decoration: BoxDecoration(
                    color: Colors.white60,
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage('Images/1.jpg'), fit: BoxFit.cover),
                  ),
                  child: const Center(
                    child: Text(
                      "Select Fruit",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          backgroundColor: Colors.white70),
                    ),
                  ),
                ),
                onTap: () async {
                  String result = await Navigator.push(context,
                      MaterialPageRoute(builder: (context) => page2()));
                  setState(() {
                    value = result;
                  });
                },
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                width: 225,
                decoration: BoxDecoration(
                    color: Colors.white60,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text(
                  value,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                )),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        )));
  }
}
