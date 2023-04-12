import 'package:flutter/material.dart';
import 'package:livescore/LiveScore/ExploreScreen.dart';
import 'package:livescore/LiveScore/HomeScreen.dart';
import 'package:livescore/LiveScore/StandingScreen.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool active = false;
  bool done = true;
  bool work = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181829),
      body: Center(
        child: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(
              height: 55,
            ),
            Stack(
              children: [
                Center(
                  child: Container(
                    child: Image.asset("asset/photo profile.png"),
                    height: 110,
                    width: 110,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        color: Color(0xff181829)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70, top: 60),
                  child: Center(
                    child: Container(
                      child: Image.asset("asset/Edit.png"),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xff181829), width: 2),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(40)),
                          color: const Color(0xffF4A58A)),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Brian Imanuel",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffffffff)),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "#YNWK till the end 🔥",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffffffff)),
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
                          "My Profile",
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
                              "My Profile",
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
                          "Activity",
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
                              "Activity",
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
                          "Settings",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffffffff)),
                        )
                      : Container(
                          width: 95,
                          height: 45,
                          child: const Center(
                            child: Text(
                              "Settings",
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
            Sign(
              imag: "asset/445e.png",
              text: "Name",
              text2: "Brian Imanuel",
            ),
            Sign(
              imag: "asset/Message.png",
              text: "Email",
              text2: "brians213@gmail.com",
            ),
            Sign(
              imag: "asset/Call.png",
              text: "Phone",
              text2: "+62 821 560 641",
            ),
            Sign(
              imag: "asset/Location.png",
              text: "Address",
              text2: "Long beach, California",
            ),
            const SizedBox(
              height: 30,
            )
          ]),
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
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const Homescreen())));
                  },
                  child: Image.asset("asset/Home.png")),
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
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "My Profile",
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
            ],
          ),
        ),
      ),
    );
  }
}

class Sign extends StatelessWidget {
  Sign({Key? key, required this.imag, required this.text, required this.text2})
      : super(key: key);
  String imag;
  String text;
  String text2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 20, top: 35),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        child: Image.asset(imag),
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(35)),
                            color: Color(0xff222232)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              text,
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffffffff)),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              text2,
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffC4C4C4)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Icon(
                Icons.keyboard_arrow_right,
                size: 28,
                color: Color(0xffffffff),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 75, top: 15, right: 20),
          child: Container(
              width: double.infinity,
              height: 2,
              color: const Color(0xff222232)),
        ),
      ],
    );
  }
}
