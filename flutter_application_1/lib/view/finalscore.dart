import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/variable.dart';
import 'package:flutter_application_1/view/homepage.dart';

class finalscore extends StatefulWidget {
  const finalscore({Key? key}) : super(key: key);

  @override
  State<finalscore> createState() => _finalscoreState();
}

class _finalscoreState extends State<finalscore> {
  int point = 0;
  var check = [];

  @override
  Widget build(BuildContext context) {
    buildResult();
    return Scaffold(
      appBar: AppBar(
        title: Text("Question"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildProgress(),
              buildText(
                  text: "คะแนนรวม" + nickname + "ชื่อเล่น",
                  size: 20.0,
                  weight: FontWeight.bold,
                  color: Colors.black),
              Text("$point"),
              for (var i = 0; i < answer.length; i++)
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text("ข้อที่:" +
                      (i + 1).toString() +
                      "คุณ" +
                      nickname +
                      "ตอบ :" +
                      income_answer[i] +
                      "เป็นคำตอบที่ :" +
                      check[i] +
                      "เฉลย" +
                      answer[i]),
                ),
              buildHigh(height: 22.0),
              buildButton(
                  text: "GO BACK", heightButton: 50.0, widthButton: 100.0)
            ],
          ),
        ),
      ),
    );
  }

  buildText({text, size, weight, color}) {
    return Text(text,
        style: TextStyle(fontSize: size, fontWeight: weight, color: color));
  }

  buildProgress() {
    return Container(
      alignment: Alignment.topCenter,
      margin: EdgeInsets.all(20.0),
      child: LinearProgressIndicator(
        value: 1.2,
        valueColor: new AlwaysStoppedAnimation(Colors.pink),
        backgroundColor: Colors.black,
      ),
    );
  }

  buildButton({text, heightButton, widthButton}) {
    return Center(
      child: Container(
        width: widthButton,
        height: heightButton,
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => homepage()),
                  (Route) => false);
            },
            child: buildText(text: text, size: 15.0)),
      ),
    );
  }

  buildResult() {
    //point = 0;
    for (var i = 0; i < answer.length; i++) {
      if (income_answer[i] == answer[i]) {
        point++;
        check.add("True");
      } else {
        check.add("false");
      }
    }
  }

  buildHigh({height}) {
    return SizedBox(
      height: height,
    );
  }
}
