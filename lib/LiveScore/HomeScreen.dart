import 'package:flutter/material.dart';
import 'package:livescore/LiveScore/ExploreScreen.dart';
import 'package:livescore/LiveScore/MatchDetail.dart';
import 'package:livescore/LiveScore/Profile.dart';
import 'package:livescore/LiveScore/SplashScreen.dart';
import 'package:livescore/LiveScore/StandingScreen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  bool done = false;
  bool active = true;
  bool football = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181829),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff181829),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "   LiveScore",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffffffff)),
            ),
            Column(
              children: [
                Row(
                  children: const [
                    Icon(
                      Icons.search_outlined,
                      size: 30,
                      color: Color(0xffffffff),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.notifications_outlined,
                      size: 30,
                      color: Color(0xffffffff),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(child: Image.asset("asset/1.png")),
              const SizedBox(
                height: 35,
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
                          });
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("asset/soccer.png"),
                              const SizedBox(
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
                          width: 100,
                          height: 110,
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              color: active
                                  ? const Color(0xffF4A58A)
                                  : const Color(0xff222232)),
                        ),
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
                          });
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("asset/basketball.png"),
                              const SizedBox(
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
                          width: 100,
                          height: 110,
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              color: done
                                  ? const Color(0xffF4A58A)
                                  : const Color(0xff222232)),
                        ),
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
                          });
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("asset/football.png"),
                              const SizedBox(
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
                          ),
                          width: 100,
                          height: 110,
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              color: football
                                  ? const Color(0xffF4A58A)
                                  : const Color(0xff222232)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Group(
                image: "asset/123.png",
                text: "    La Liga",
                text2: "     Spain",
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
                          builder: ((context) => const Matchdetail())));
                },
                child: Group(
                  image: "asset/2.png",
                  text: "     Premier League",
                  text2: "       England",
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
                image: "asset/123.png",
                text: "    Premier League",
                text2: "     England",
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
                  const Text(
                    "Home",
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
  Group(
      {Key? key,
      required this.image,
      required this.image2,
      required this.text,
      required this.text1,
      required this.text3,
      required this.text4,
      required this.text2})
      : super(key: key);
  String image;
  String text;
  String text2;
  String image2;
  String text1;
  String text3;
  String text4;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Image.asset(image),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            text,
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffffffff)),
                          ),
                          Text(
                            text2,
                            style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffaaaaaa)),
                          ),
                        ],
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
        Padding(
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
        )
      ],
    );
  }
}
