import 'package:flutter/material.dart';

class Teamlineup extends StatefulWidget {
  const Teamlineup({Key? key}) : super(key: key);

  @override
  State<Teamlineup> createState() => _TeamlineupState();
}

class _TeamlineupState extends State<Teamlineup> {
  bool active = true;
  bool done = false;
  bool work = true;
  bool line = false;
  bool match = true;
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
          child: Column(children: [
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
                      "   2 - 0   ",
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
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Formation",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffffffff)),
                ),
                Text(
                  "     (4-2-3-1)",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffC4C4C4)),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        line = !line;
                        match = true;
                      });
                    },
                    child: line
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
                        match = !match;
                        line = true;
                      });
                    },
                    child: match
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
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Image.asset("asset/fieldFootball.png"),
            const SizedBox(
              height: 30,
            )
          ]),
        ),
      ),
    );
  }
}
