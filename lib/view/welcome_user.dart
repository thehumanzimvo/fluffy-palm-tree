import 'package:bluesclues/view/components/constants.dart';
import 'package:bluesclues/view/student/multichoice.dart';
import 'package:flutter/material.dart';

class welcome_user extends StatefulWidget {
  const welcome_user({Key? key}) : super(key: key);

  @override
  _welcome_userState createState() => _welcome_userState();
}

class _welcome_userState extends State<welcome_user> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            normalButton(btnText: "Student", btnFunction: multiChoice()),
            SizedBox(height: 20),
            normalButton(btnText: "Teacher", btnFunction: null)
          ],
        ),
      ),
    );
  }
}
