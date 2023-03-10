import 'package:flutter/material.dart';

class page2 extends StatelessWidget {
  const page2({super.key});

  String names(String name) {
    String input = name;
    return input;
  }

  String nothing() {
    return names("Nothing Selected");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 48, 87, 49),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: Expanded(
              child: Container(
                color: Colors.transparent,
                child: ListView(children: [
                  InkWell(
                    child: Container(
                      height: 100,
                      width: 450,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                              image: AssetImage('Images/apple.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    onTap: () {
                      Navigator.pop(context, names("Apples"));
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    child: Container(
                      height: 100,
                      width: 450,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                              image: AssetImage('Images/grapes.jpeg'),
                              fit: BoxFit.cover)),
                    ),
                    onTap: () {
                      Navigator.pop(context, names("Grapes"));
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    child: Container(
                      height: 100,
                      width: 450,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                              image: AssetImage('Images/kiwi.jpeg'),
                              fit: BoxFit.cover)),
                    ),
                    onTap: () {
                      Navigator.pop(context, names("Kiwi"));
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    child: Container(
                      height: 100,
                      width: 450,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                              image: AssetImage('Images/Mango.jpeg'),
                              fit: BoxFit.cover)),
                    ),
                    onTap: () {
                      Navigator.pop(context, names("Magoes"));
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    child: Container(
                      height: 100,
                      width: 450,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                              image: AssetImage('Images/oranges.jpeg'),
                              fit: BoxFit.cover)),
                    ),
                    onTap: () {
                      Navigator.pop(context, names("Oranges"));
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Icon(
                        Icons.backspace_sharp,
                        size: 18,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context, nothing());
                    },
                  )
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
