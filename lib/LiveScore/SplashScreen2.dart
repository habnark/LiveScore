import 'package:flutter/material.dart';
import 'package:livescore/LiveScore/HomeScreen.dart';
import 'package:livescore/LiveScore/StandingScreen.dart';

class Splashscreen2 extends StatefulWidget {
  const Splashscreen2({Key? key}) : super(key: key);

  @override
  State<Splashscreen2> createState() => _Splashscreen2State();
}

class _Splashscreen2State extends State<Splashscreen2> {
  bool active = true;
  bool done = false;
  bool football = false;
  bool basball = false;
  bool tennis = false;
  bool vollyball = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181829),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 35,
              ),
              Row(
                children: const [
                  Text(
                    "     What sport do\n     you interest?",
                    style: TextStyle(
                        fontSize: 36,
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: const [
                  Text(
                    "           You can choose more than one",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff65656B),
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            active = !active;
                            done = false;
                            football = false;
                            vollyball = false;
                            basball = false;
                            tennis = false;
                          });
                        },
                        child: Container(
                          child: Image.asset("asset/soccer.png"),
                          width: 95,
                          height: 95,
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(150)),
                              color: active
                                  ? const Color(0xffF4A58A)
                                  : const Color(0xff222232)),
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      const Text(
                        "Soccer",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            done = !done;
                            active = false;
                            football = false;
                            vollyball = false;
                            basball = false;
                            tennis = false;
                          });
                        },
                        child: Container(
                          child: Image.asset("asset/basketball.png"),
                          width: 95,
                          height: 95,
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(150)),
                              color: done
                                  ? const Color(0xffF4A58A)
                                  : const Color(0xff222232)),
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      const Text(
                        "Basketball",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            football = !football;
                            active = false;
                            done = false;
                            vollyball = false;
                            basball = false;
                            tennis = false;
                          });
                        },
                        child: Container(
                          child: Image.asset("asset/football.png"),
                          width: 95,
                          height: 95,
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(150)),
                              color: football
                                  ? const Color(0xffF4A58A)
                                  : const Color(0xff222232)),
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      const Text(
                        "Football",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            basball = !basball;
                            tennis = false;
                            vollyball = false;
                            active = false;
                            done = false;
                            football = false;
                          });
                        },
                        child: Container(
                          child: Image.asset("asset/baseball.png"),
                          width: 95,
                          height: 95,
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(150)),
                              color: basball
                                  ? const Color(0xffF4A58A)
                                  : const Color(0xff222232)),
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      const Text(
                        "Baseball",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            tennis = !tennis;
                            basball = false;
                            vollyball = false;
                            active = false;
                            done = false;
                            football = false;
                          });
                        },
                        child: Container(
                          child: Image.asset("asset/tennis.png"),
                          width: 95,
                          height: 95,
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(150)),
                              color: tennis
                                  ? const Color(0xffF4A58A)
                                  : const Color(0xff222232)),
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      const Text(
                        "Tennis",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            vollyball = !vollyball;
                            basball = false;
                            tennis = false;
                            active = false;
                            done = false;
                            football = false;
                          });
                        },
                        child: Container(
                          child: Image.asset("asset/volly.png"),
                          width: 95,
                          height: 95,
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(150)),
                              color: vollyball
                                  ? const Color(0xffF4A58A)
                                  : const Color(0xff222232)),
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      const Text(
                        "Volleyball",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22, right: 22, top: 55),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const Homescreen())));
                  },
                  child: Container(
                    child: const Center(
                      child: Text(
                        "Continue",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffffffff)),
                      ),
                    ),
                    height: 55,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Color(0xff246BFD),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const Standingscreen())));
                },
                child: const Center(
                  child: Text(
                    "Skip",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffffffff)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
