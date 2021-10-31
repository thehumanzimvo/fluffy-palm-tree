import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class design {
  static const Color mainBlue = Color.fromRGBO(54, 112, 201, 1);
  static const Color bgColour = Color.fromRGBO(38, 25, 65, 1);
}

class normalButton extends StatelessWidget {
  final btnText;
  final btnFunction;

  const normalButton({this.btnText, this.btnFunction});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => btnFunction)),
        color: Colors.lightBlue[400],
        height: 45,
        minWidth: 305,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        child: Text(
          btnText,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

// class multiD extends StatefulWidget {
//   final String btnText;
//   final btnFunction;
//   const multiD({required this.btnText, this.btnFunction});

//   @override
//   _multiDState createState() => _multiDState();
// }

// class _multiDState extends State<multiD> {
//   late String btnText;

//   bool userInput = false;
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         height: 49,
//         width: 334,
//         child: GestureDetector(
//           onTap: () {
//             setState(() {
//               userInput = !userInput;
//             });
//           },
//           child: DecoratedBox(
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 border: Border.all(
//                     width: 3, color: Color.fromRGBO(80, 116, 171, 1))),
//             child: Container(
//               padding: EdgeInsets.symmetric(horizontal: 15),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(multiD(btnText: ,),
//                       style: TextStyle(color: Colors.white, fontSize: 20)),
//                   DecoratedBox(
//                     decoration: BoxDecoration(
//                         color: userInput ? Colors.transparent : Colors.white,
//                         border: Border.all(width: 0),
//                         borderRadius: BorderRadius.circular(30)),
//                     child: userInput
//                         ? Icon(CupertinoIcons.check_mark_circled_solid,
//                             color: Color.fromRGBO(80, 116, 171, 1), size: 35)
//                         : Icon(CupertinoIcons.check_mark_circled_solid,
//                             color: Colors.transparent, size: 35),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class multiC extends StatelessWidget {
  final btnText;
  final btnFunction;
  bool userInput = false;
  multiC({required this.btnText, required this.btnFunction});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 49,
        width: 334,
        child: GestureDetector(
          onTap: () {},
          child: DecoratedBox(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                    width: 3, color: Color.fromRGBO(80, 116, 171, 1))),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(btnText,
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  DecoratedBox(
                    decoration: BoxDecoration(
                        color: userInput ? Colors.transparent : Colors.white,
                        border: Border.all(width: 0),
                        borderRadius: BorderRadius.circular(30)),
                    child: userInput
                        ? Icon(CupertinoIcons.check_mark_circled_solid,
                            color: Color.fromRGBO(80, 116, 171, 1), size: 35)
                        : Icon(CupertinoIcons.check_mark_circled_solid,
                            color: Colors.transparent, size: 35),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class questionNo extends StatelessWidget {
  final Currentquestion;
  final totalQuestions;
  const questionNo({this.Currentquestion, this.totalQuestions});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(
        text: TextSpan(
          style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              letterSpacing: 1.2000000000000002,
              fontWeight: FontWeight.w700),
          children: [
            TextSpan(text: "Question $Currentquestion"),
            TextSpan(
              text: "/$totalQuestions",
              style: TextStyle(
                fontSize: 14,
                letterSpacing: 1.2000000000000002,
                color: Color.fromRGBO(148, 132, 132, 1),
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MySeparator extends StatelessWidget {
  final double height;
  final Color color;

  const MySeparator({this.height = 2, this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        final dashWidth = 6.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
        );
      },
    );
  }
}
