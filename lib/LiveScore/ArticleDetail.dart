import 'package:flutter/material.dart';

class Articledetail extends StatefulWidget {
  const Articledetail({Key? key}) : super(key: key);

  @override
  State<Articledetail> createState() => _ArticledetailState();
}

class _ArticledetailState extends State<Articledetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181829),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                Image.asset("asset/ttfrt.png"),
                Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 50, right: 20),
                      child: Row(
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
                          Container(
                            child: const Icon(
                              Icons.share_outlined,
                              color: Color(0xffffffff),
                              size: 30,
                            ),
                            width: 60,
                            height: 60,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(45)),
                                color: Color(0xffc4c4c4)),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(),
                          Container(
                            child: Image.asset(
                              "asset/Bookmark.png",
                              color: Color(0xffffffff),
                            ),
                            width: 60,
                            height: 60,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(45)),
                                color: Color(0xffF4A58A)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ]),
              const SizedBox(
                height: 35,
              ),
              Row(
                children: const [
                  Text(
                    "    Arsenal vs Aston Villa \n    prediction",
                    style: TextStyle(
                        fontSize: 24,
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                                width: 50,
                                height: 50,
                                child: Image.asset("asset/photo profile.png")),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Brian Imanuel",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xffffffff)),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "May 15, 2020 ",
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
                    Column(
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.favorite_outline,
                              size: 20,
                              color: Color(0xffffffff),
                            ),
                            Text(
                              "  1403  ",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffffffff)),
                            ),
                            Icon(
                              Icons.message_outlined,
                              size: 20,
                              color: Color(0xffffffff),
                            ),
                            Text(
                              "  976",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffffffff)),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    const Text(
                      "A",
                      style: TextStyle(
                          fontSize: 52,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffffffff)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "rsenal will have to grind it out against",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffffffff)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Aston Villa if they are to register",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffffffff)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 15),
                child: Text(
                  "League wins. The match is scheduled for Sunday at the Emirates.The Gunners put forth a real statement of intent after their 1-0 win against Manchester United. Mikel Arteta's side had already surrendered points to Liverpool, Manchester City and ",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffffffff)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
