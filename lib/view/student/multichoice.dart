import 'dart:async';

import 'package:bluesclues/data/trivia.dart';
import 'package:bluesclues/view/components/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class multiChoice extends StatefulWidget {
  const multiChoice({Key? key}) : super(key: key);

  @override
  _multiChoiceState createState() => _multiChoiceState();
}

class _multiChoiceState extends State<multiChoice> {
  bool _isSelected = false;
  bool _timeOut = false;
  String timeCounter = "";
  // Timer _timer;

  @override
  void initState() {
    super.initState();
    Timer _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        timeCounter = "${DateTime.now().second}";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: design.bgColour,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              new Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 334,
                        height: 35,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color.fromRGBO(171, 21, 129, 1),
                              Color.fromRGBO(116, 41, 211, 1)
                            ]),
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                              width: 2,
                              color: Color.fromRGBO(89, 81, 81, 1),
                            ),
                          ),
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(CupertinoIcons.clock_fill,
                                    color: Colors.transparent, size: 25),
                                Text(
                                  "${timeCounter}s",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                DecoratedBox(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(width: 0),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Icon(CupertinoIcons.clock_fill,
                                      color: Color.fromRGBO(178, 177, 255, 1),
                                      size: 25),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      questionNo(Currentquestion: "1", totalQuestions: "9"),
                      SizedBox(height: 10),
                      const MySeparator(color: Colors.grey),
                      SizedBox(height: 20),
                      Text(quest.questions[0].question,
                          style: TextStyle(color: Colors.white, fontSize: 24))
                    ],
                  )),
              new Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      multiC(
                          btnText: quest.questions[0].options[0],
                          btnFunction: null),
                      SizedBox(height: 15),
                      multiC(
                        btnText: quest.questions[0].options[1],
                        btnFunction: null,
                      ),
                      SizedBox(height: 15),
                      Container(
                        height: 49,
                        width: 334,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _isSelected = !_isSelected;
                            });
                          },
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                    width: 3,
                                    color: Color.fromRGBO(80, 116, 171, 1))),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(quest.questions[0].options[2],
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20)),
                                  DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(width: 0),
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: _isSelected
                                        ? Icon(
                                            CupertinoIcons
                                                .check_mark_circled_solid,
                                            color:
                                                Color.fromRGBO(80, 116, 171, 1),
                                            size: 35)
                                        : Icon(CupertinoIcons.circle_filled,
                                            color:
                                                Color.fromRGBO(80, 116, 171, 1),
                                            size: 35),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      // multiC(
                      //     btnText: quest.questions[0].options[2],
                      //     btnFunction: null),
                      SizedBox(height: 40),
                      MaterialButton(
                        onPressed: () {},
                        elevation: 0,
                        height: 50,
                        minWidth: 217,
                        color: design.mainBlue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        child: Text("Next",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                letterSpacing: 1.5,
                                fontWeight: FontWeight.bold)),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
