import 'package:flutter/material.dart';
import 'package:livescore/LiveScore/SplashScreen2.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  bool active = true;
  bool done = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181829),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(child: Image.asset("asset/Group 3090.png")),
              const SizedBox(
                height: 45,
              ),
              Row(
                children: const [
                  Text(
                    "    Dicover all \n    about sport",
                    style: TextStyle(
                        fontSize: 40,
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 30, right: 30, top: 15),
                    child: Text(
                      "Search millions of jobs and get the inside scoop on companies.Wait for what? Let’s get start it!",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff65656B),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: const Center(
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    width: 150,
                    height: 60,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(17)),
                        color: Color(0xff246BFD)),
                  ),
                  const SizedBox(
                    width: 70,
                  ),
                  GestureDetector(
                    onTap: () {
                      showSignup();
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xffC4C4C4),
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  showSignup() {
    bool active = true;

    return showModalBottomSheet(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(36.0))),
      backgroundColor: const Color(0xff222232),
      context: context,
      isScrollControlled: true,
      builder: (context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Container(
          height: 500,
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 90,
                height: 5,
                decoration: const BoxDecoration(
                    color: Color(0xff3D4037),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                children: const [
                  Text(
                    "  Welcome",
                    style: TextStyle(
                        fontSize: 28,
                        color: Color(0xffC4C4C4),
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 25),
                child: Container(
                  child: const TextField(
                    style: TextStyle(color: Colors.white),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        fillColor: Color(0xff181829),
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
                              Icons.email_outlined,
                              color: Color(0xff65656B),
                            )),
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Color(0xff65656B)),
                        hintText: "Email",
                        border: InputBorder.none),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
                child: Container(
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    obscureText: !active,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        fillColor: const Color(0xff181829),
                        filled: true,
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 2,
                                color: Color.fromRGBO(100, 100, 135, 0.3)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(18))),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 0,
                                color: Color.fromRGBO(13, 13, 135, 0.2)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(18))),
                        suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                active = active;
                              });
                            },
                            child: active
                                ? const Icon(Icons.remove_red_eye_outlined)
                                : const Icon(Icons.cabin)),
                        prefixIcon: const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.key,
                              color: Color(0xff65656B),
                            )),
                        hintStyle: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Color(0xff65656B)),
                        hintText: "Password",
                        border: InputBorder.none),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  done = done;
                                });
                              },
                              child: done
                                  ? Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0xff65656B),
                                              width: 1.5),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10))),
                                    )
                                  : Container(
                                      child: const Icon(
                                        Icons.done,
                                        color: Color(0xffffffff),
                                      ),
                                      height: 30,
                                      width: 30,
                                      decoration: const BoxDecoration(
                                          color: Color(0xff246BFD),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                    ),
                            ),
                            const Text(
                              "   Remember me",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff65656B)),
                            )
                          ],
                        ),
                      ],
                    ),
                    const Text(
                      "Forgot Password  ",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color(0xffffffff)),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22, right: 22, top: 35),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const Splashscreen2())));
                  },
                  child: Container(
                    child: const Center(
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffffffff)),
                      ),
                    ),
                    height: 50,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Color(0xff246BFD),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                  ),
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Don’t have account? ",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Color(0xffc4c4c4)),
                  ),
                  Text(
                    " Sign UP",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff246BFD)),
                  ),
                  SizedBox(
                    height: 90,
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
