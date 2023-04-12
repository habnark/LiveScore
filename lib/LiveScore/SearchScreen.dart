import 'package:flutter/material.dart';
import 'package:livescore/LiveScore/HomeScreen.dart';
import 'package:livescore/LiveScore/StandingScreen.dart';

class Searchscreen extends StatefulWidget {
  const Searchscreen({Key? key}) : super(key: key);

  @override
  State<Searchscreen> createState() => _SearchscreenState();
}

class _SearchscreenState extends State<Searchscreen> {
  bool active = true;
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
                  SizedBox(
                    height: 150,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(
                                width: 12,
                              ),
                              Image.asset("asset/api.png"),
                              const Text(
                                " Live Score     ",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffffffff)),
                              ),
                            ],
                          ),
                          height: 55,
                          width: 123,
                          decoration: const BoxDecoration(
                              color: Color(0xff222232),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35))),
                        ),
                        Container(
                          child: Image.asset("asset/Frame 9.png"),
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                              color: Color(0xff222232),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(55))),
                        ),
                        Container(
                          child: Image.asset("asset/2232.png"),
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                              color: Color(0xff222232),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(55))),
                        ),
                        Container(
                          child: Image.asset("asset/stadium.png"),
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                              color: Color(0xff222232),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(55))),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Debate(),
                  Debate(),
                  Debate(),
                  Debate(),
                  Debate(),
                  Debate(),
                  Debate(),
                  Debate(),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 45),
                    child: Container(
                      child: const TextField(
                        style: TextStyle(color: Colors.white),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            fillColor: Color(0xff222232),
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2,
                                    color: Color.fromRGBO(100, 100, 135, 0.3)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(18))),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 0,
                                    color: Color.fromRGBO(13, 13, 135, 0.2)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(18))),
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
                            hintText: "Search your team ...",
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      active = !active;
                    });
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: Text(
                      "Cancel      ",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffffffff)),
                    ),
                  ),
                )
              ],
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
              Image.asset("asset/Profile.png"),
            ],
          ),
        ),
      ),
    );
  }
}

class Debate extends StatelessWidget {
  const Debate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(
                children: [
                  Image.asset("asset/Group 3098.png"),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Barcelona VS Real Madrid",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffffffff)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Monday, 12 Feb 2021 . 02.30 am",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff65656B)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Icon(
            Icons.close,
            size: 27,
            color: Color(0xff65656B),
          )
        ],
      ),
    );
  }
}
