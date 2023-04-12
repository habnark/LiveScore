import 'package:flutter/material.dart';
import 'package:livescore/LiveScore/ExploreScreen.dart';
import 'package:livescore/LiveScore/Profile.dart';
import 'package:livescore/LiveScore/StandingScreen.dart';
import 'package:livescore/LiveScore/TeamLineUp.dart';

class Matchdetail extends StatefulWidget {
  const Matchdetail({Key? key}) : super(key: key);

  @override
  State<Matchdetail> createState() => _MatchdetailState();
}

class _MatchdetailState extends State<Matchdetail> {
  bool active = false;
  bool done = true;
  bool work = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181829),
      appBar: AppBar(
        backgroundColor: const Color(0xff181829),
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.keyboard_arrow_left_outlined,
                size: 40,
              ),
            ),
            const Text(
              "UEFA Champions League",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffffffff)),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 7,
            )
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        child: Image.asset("asset/arsenal.png"),
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(70)),
                            color: const Color(0xff222232),
                            border: Border.all(
                                color: const Color(0xff2B2B3D), width: 2.5)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Arsenal",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffffffff)),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Text(
                        "   2 - 3   ",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffffffff)),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "90.15   ",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffffffff)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        child: Image.asset("asset/astonvilla.png"),
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(70)),
                            color: const Color(0xff222232),
                            border: Border.all(
                                color: const Color(0xff2B2B3D), width: 2.5)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Aston Villa",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffffffff)),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        active = !active;
                        done = true;
                        work = true;
                      });
                    },
                    child: active
                        ? const Text(
                            "Match Detail",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffffffff)),
                          )
                        : Container(
                            width: 110,
                            height: 45,
                            child: const Center(
                              child: Text(
                                "Match Detail",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffffffff)),
                              ),
                            ),
                            decoration: const BoxDecoration(
                                color: Color(0xffF4A58A),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(26))),
                          ),
                  ),
                  const SizedBox(
                    width: 35,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        done = !done;
                        active = true;
                        work = true;
                      });
                    },
                    child: done
                        ? const Text(
                            "Line Up",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffffffff)),
                          )
                        : Container(
                            width: 100,
                            height: 45,
                            child: const Center(
                              child: Text(
                                "Line Up",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffffffff)),
                              ),
                            ),
                            decoration: const BoxDecoration(
                                color: Color(0xffF4A58A),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(26))),
                          ),
                  ),
                  const SizedBox(
                    width: 35,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        work = !work;
                        active = true;
                        done = true;
                      });
                    },
                    child: work
                        ? const Text(
                            "H2H",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffffffff)),
                          )
                        : Container(
                            width: 90,
                            height: 45,
                            child: const Center(
                              child: Text(
                                "H2H",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffffffff)),
                              ),
                            ),
                            decoration: const BoxDecoration(
                                color: Color(0xffF4A58A),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(26))),
                          ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Line(),
              const SizedBox(
                height: 20,
              ),
              Line(),
              const SizedBox(
                height: 20,
              ),
              Line(),
              const SizedBox(
                height: 20,
              ),
              Line(),
              const SizedBox(
                height: 20,
              ),
              Line(),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "      Other Match",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffffffff)),
                  ),
                  Text(
                    "See all    ",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffC4C4C4)),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Group(
                image2: "asset/Group 3098.png",
                text1: "   Barcelona  vs Real Madrid",
                text3: "      HT    ",
                text4: "2        -       0",
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const Teamlineup())));
                },
                child: Group(
                  image2: "asset/Group 3099.png",
                  text1: "   Aston Villa  vs  Liverpool",
                  text3: "      FT    ",
                  text4: "2       -        3",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Group(
                image2: "asset/Group 3099.png",
                text1: "   Aston Villa  vs  Liverpool",
                text3: "      HT    ",
                text4: "2        -        0",
              ),
              const SizedBox(
                height: 35,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        color: Color(0xff222232),
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Home",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff246BFD)),
                    ),
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
                            builder: ((context) => const Explorescreen())));
                  },
                  child: Image.asset("asset/Discovery.png")),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const Standingscreen())));
                  },
                  child: Image.asset("asset/Chart.png")),
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

class Group extends StatelessWidget {
  Group({
    Key? key,
    required this.image2,
    required this.text1,
    required this.text3,
    required this.text4,
  }) : super(key: key);

  String image2;
  String text1;
  String text3;
  String text4;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(image2),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          text1,
                          style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffffffff)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          text4,
                          style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffffffff)),
                        ),
                      ],
                    )
                  ],
                ),
                height: 80,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Color(0xff2B2B3D),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20))),
              ),
            ),
            Text(
              text3,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffffffff)),
            )
          ],
        ),
        height: 80,
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Color(0xff222232),
            borderRadius: BorderRadius.all(Radius.circular(20))),
      ),
    );
  }
}

class Line extends StatelessWidget {
  const Line({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          "8     ",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Color(0xffffffff)),
        ),
        SizedBox(
          width: 35,
        ),
        Text(
          "Shooting",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xffC4C4C4)),
        ),
        SizedBox(
          width: 35,
        ),
        Text(
          "       12",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Color(0xffffffff)),
        )
      ],
    );
  }
}
