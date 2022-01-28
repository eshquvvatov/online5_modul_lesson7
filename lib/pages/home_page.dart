import 'dart:async';

import 'package:flutter/material.dart';

import 'animation_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = "/home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double time = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    delay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/im_party.jpeg")),
        ),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                Colors.black54.withOpacity(time + 0.2),
                Colors.black54.withOpacity(time + 0.1),
                Colors.black54.withOpacity(time + 0.05),
                Colors.black54.withOpacity(time),
              ])),
          child: Padding(
            padding: const EdgeInsets.only(
              right: 15,
              left: 15,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                    flex: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FadeAnimation(child:Text(
                          "Find the best\nparties near you.",
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),delay: 2,),

                        SizedBox(
                          height: 20,
                        ),
                        FadeAnimation(child:Text(
                          "Let us find you a party for your interest",
                          style: TextStyle(color: Colors.grey, fontSize: 25),
                        ),delay: 2,),

                      ],
                    )),
                SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                // #button
                FadeAnimation(child:SizedBox(
                  child: MaterialButton(
                    onPressed: () {},
                    height: 30,
                    shape: StadiumBorder(),
                    child: const Text(
                      "start",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    minWidth: MediaQuery.of(context).size.width,
                    color: Colors.orange,
                  ),
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                ),delay: 3,),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void delay() {
    for (int i = 0; i < 5; i++) {
      Timer(Duration(seconds: 1), () {
        setState(() {
          time = time + 0.1;
        });
      });
    }
  }

  void timer() {}
}
