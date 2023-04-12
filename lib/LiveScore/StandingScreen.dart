import 'package:flutter/material.dart';
import 'package:livescore/LiveScore/ExploreScreen.dart';
import 'package:livescore/LiveScore/HomeScreen.dart';
import 'package:livescore/LiveScore/Profile.dart';
import 'package:livescore/LiveScore/StandingDetails.dart';

class Standingscreen extends StatefulWidget {
  const Standingscreen({Key? key}) : super(key: key);

  @override
  State<Standingscreen> createState() => _StandingscreenState();
}

class _StandingscreenState extends State<Standingscreen> {
  bool active = true;
  bool done = false;
  bool football = false;
  bool volly = false;
  bool tennis = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181829),
      body: Stack(
        children: [
          Center(
            child: SingleChildScrollView(
              child: Column(children: [
                const SizedBox(
                  height: 120,
                ),
                Container(
                  height: 65,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            active = !active;
                            done = false;
                            football = false;
                            volly = false;
                            tennis = false;
                          });
                        },
                        child: active
                            ? Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    children: [
                                      Image.asset("asset/soccer.png"),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                      const Text(
                                        "  Soccer",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xffffffff),
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                                width: 115,
                                height: 60,
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(35)),
                                    color: Color(0xffF4A58A)),
                              )
                            : Container(
                                child: Image.asset("asset/soccer.png"),
                                width: 65,
                                height: 65,
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(45)),
                                    color: Color(0xff222232)),
                              ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            done = !done;
                            active = false;
                            football = false;
                            volly = false;
                            tennis = false;
                          });
                        },
                        child: done
                            ? Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    children: [
                                      Image.asset("asset/basketball.png"),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                      const Text(
                                        "  Basketball",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xffffffff),
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                                width: 135,
                                height: 60,
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(35)),
                                    color: Color(0xffF4A58A)),
                              )
                            : Container(
                                child: Image.asset("asset/basketball.png"),
                                width: 65,
                                height: 65,
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(45)),
                                    color: Color(0xff222232)),
                              ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            football = !football;
                            done = false;
                            active = false;
                            volly = false;
                            tennis = false;
                          });
                        },
                        child: football
                            ? Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    children: [
                                      Image.asset("asset/football.png"),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                      const Text(
                                        "  Football",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xffffffff),
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                                width: 120,
                                height: 60,
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(35)),
                                    color: Color(0xffF4A58A)),
                              )
                            : Container(
                                child: Image.asset("asset/football.png"),
                                width: 65,
                                height: 65,
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(45)),
                                    color: Color(0xff222232)),
                              ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            volly = !volly;
                            done = false;
                            football = false;
                            active = false;
                            tennis = false;
                          });
                        },
                        child: volly
                            ? Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    children: [
                                      Image.asset("asset/baseball.png"),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                      const Text(
                                        "  Baseball",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xffffffff),
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                                width: 120,
                                height: 60,
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(35)),
                                    color: Color(0xffF4A58A)),
                              )
                            : Container(
                                child: Image.asset("asset/baseball.png"),
                                width: 70,
                                height: 70,
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(45)),
                                    color: Color(0xff222232)),
                              ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            tennis = !tennis;
                            done = false;
                            football = false;
                            volly = false;
                            active = false;
                          });
                        },
                        child: tennis
                            ? Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    children: [
                                      Image.asset("asset/tennis.png"),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                      const Text(
                                        "  Tennis",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xffffffff),
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                                width: 115,
                                height: 60,
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(35)),
                                    color: Color(0xffF4A58A)),
                              )
                            : Container(
                                child: Image.asset("asset/tennis.png"),
                                width: 70,
                                height: 70,
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(45)),
                                    color: Color(0xff222232)),
                              ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 35),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const Standingdetails())));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset("asset/123.png"),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "La Liga",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xffffffff)),
                                      ),
                                      Text(
                                        "Spain",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xffaaaaaa)),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.keyboard_arrow_right,
                          size: 27,
                          color: Color(0xffffffff),
                        )
                      ],
                    ),
                  ),
                ),
                Label(),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset("asset/123.png"),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "La Liga",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xffffffff)),
                                    ),
                                    Text(
                                      "Spain",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xffaaaaaa)),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.keyboard_arrow_right,
                        size: 27,
                        color: Color(0xffffffff),
                      )
                    ],
                  ),
                ),
                Label(),
                SizedBox(
                  height: 25,
                )
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 45),
            child: Container(
              child: const TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    fillColor: Color(0xff222232),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2,
                            color: Color.fromRGBO(100, 100, 135, 0.3)),
                        borderRadius: BorderRadius.all(Radius.circular(18))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 0, color: Color.fromRGBO(13, 13, 135, 0.2)),
                        borderRadius: BorderRadius.all(Radius.circular(18))),
                    prefixIcon: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.search_outlined,
                          color: Color(0xff65656B),
                        )),
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xff65656B)),
                    hintText: "Search for news, team, match, etc...",
                    border: InputBorder.none),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 80,
        color: Color(0xff222232),
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const Homescreen())));
                  },
                  child: Image.asset("asset/Chart.png")),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const Explorescreen())));
                  },
                  child: Image.asset("asset/Discovery.png")),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Standings",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff246BFD)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 6,
                    height: 6,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: Color(0xff246BFD)),
                  )
                ],
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const Profile())));
                  },
                  child: Image.asset("asset/Profile.png")),
            ],
          ),
        ),
      ),
    );
  }
}

class Label extends StatelessWidget {
  const Label({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Team",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffffffff)),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "D    L    Ga    Gd    Pts",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffffffff)),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        width: 130,
                        height: 1.5,
                        color: const Color(0xff181829),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Team(),
            Team(),
            Team(),
            Team(),
          ],
        ),
        width: double.infinity,
        height: 260,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: Color(0xff222232)),
      ),
    );
  }
}

class Team extends StatelessWidget {
  const Team({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(
                children: [
                  Image.asset("asset/Atletico.png"),
                  const Text(
                    "   Atlético Madrid",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffffffff)),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "2     1     6     23     38",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffffffff)),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                width: 130,
                height: 1.5,
                color: const Color(0xff181829),
              )
            ],
          ),
        ],
      ),
    );
  }
}
