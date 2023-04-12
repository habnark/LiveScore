import 'package:flutter/material.dart';
import 'package:livescore/LiveScore/ArticleDetail.dart';
import 'package:livescore/LiveScore/Profile.dart';
import 'package:livescore/LiveScore/SearchScreen.dart';
import 'package:livescore/LiveScore/StandingScreen.dart';

class Explorescreen extends StatefulWidget {
  const Explorescreen({Key? key}) : super(key: key);

  @override
  State<Explorescreen> createState() => _ExplorescreenState();
}

class _ExplorescreenState extends State<Explorescreen> {
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
              child: Column(
                children: [
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
                        const SizedBox(
                          width: 30,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const Searchscreen())));
                      },
                      child: const Team()),
                  const Team(),
                  const Team(),
                  const Team(),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: const [
                      Text("      Trending News",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffffffff))),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 175,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: const [
                        SizedBox(
                          width: 25,
                        ),
                        News(),
                        SizedBox(
                          width: 17,
                        ),
                        News(),
                        SizedBox(
                          width: 17,
                        ),
                        News(),
                        SizedBox(
                          width: 17,
                        ),
                        News(),
                        SizedBox(
                          width: 25,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 45),
            child: Container(
              child: const TextField(
                style: TextStyle(color: Color(0xffffffff)),
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
                    Navigator.pop(context);
                  },
                  child: Image.asset("asset/Home.png")),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Explore",
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

class News extends StatelessWidget {
  const News({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: ((context) => const Articledetail())));
        },
        child: Image.asset("asset/Group 3198.png"));
  }
}

class Team extends StatelessWidget {
  const Team({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(
                children: [
                  Image.asset("asset/Mask Group.png"),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Roumor Has It: Lampard’s ",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffffffff))),
                        SizedBox(
                          height: 3,
                        ),
                        Text("position under threat, ...",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffffffff))),
                        SizedBox(
                          height: 3,
                        ),
                        Text("04 JAN 2021, 14:16",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffc4c4c4))),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
          Image.asset("asset/Bookmark.png"),
        ],
      ),
    );
  }
}
