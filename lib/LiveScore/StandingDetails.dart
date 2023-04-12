import 'package:flutter/material.dart';

class Standingdetails extends StatefulWidget {
  const Standingdetails({Key? key}) : super(key: key);

  @override
  State<Standingdetails> createState() => _StandingdetailsState();
}

class _StandingdetailsState extends State<Standingdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181829),
      appBar: AppBar(
        backgroundColor: const Color(0xff181829),
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.keyboard_arrow_left_outlined,
                color: Color(0xffffffff),
                size: 35,
              ),
            ),
            const Text(
              "🇪🇸 Spain",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffffffff)),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 5.5,
            )
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  child: Image.asset("asset/laliga.png"),
                  width: 120,
                  height: 120,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(70)),
                      color: Color(0xff222232)),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Center(
                child: Text(
                  "La Liga",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffffffff)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 35),
                child: Row(
                  children: [
                    Container(
                      child: const Center(
                        child: Text(
                          "All",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffffffff)),
                        ),
                      ),
                      width: 65,
                      height: 50,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          color: Color(0xffF4A58A)),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      child: const Center(
                        child: Text(
                          "Home",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffffffff)),
                        ),
                      ),
                      width: 85,
                      height: 50,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          color: Color(0xffF4A58A)),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      "Away",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffffffff)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 30, right: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "   Team",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffffffff)),
                        ),
                        Text(
                          "D    L    Ga    Gd    Pts",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffffffff)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      width: double.infinity,
                      height: 1.5,
                      color: const Color(0xff2B2B3D),
                    ),
                  ],
                ),
              ),
              Group(
                chang: 0xff14274D,
              ),
              Group(
                chang: 0xff14274D,
              ),
              Group(
                chang: 0xff14274D,
              ),
              Group(
                chang: 0xff441818,
              ),
              Group(
                chang: 0xff441818,
              ),
              Group(
                chang: 0xff181829,
              ),
              Group(
                chang: 0xff181829,
              ),
              Group(
                chang: 0xff181829,
              ),
              Group(
                chang: 0xff181829,
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Group extends StatelessWidget {
  Group({Key? key, required this.chang}) : super(key: key);
  int chang;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 20,
      ),
      child: Container(
        child: Padding(
          padding: EdgeInsets.only(left: 17),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        "1  ",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffffffff)),
                      ),
                      Image.asset("asset/Atletico.png"),
                      Text(
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
              Text(
                "2     1     6     23     38     ",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffffffff)),
              ),
            ],
          ),
        ),
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
          color: Color(chang),
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
      ),
    );
  }
}
