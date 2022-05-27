import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/variable.dart';
import 'package:flutter_application_1/view/numberpage3.dart';

class NumberPage2 extends StatefulWidget {
  const NumberPage2({Key? key}) : super(key: key);

  @override
  State<NumberPage2> createState() => _NumberPage2State();
}

class _NumberPage2State extends State<NumberPage2> {
  String? answer = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Question"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildProgress(),
            buildText(
                text: "คำถามข้อ 2",
                size: 20.0,
                weight: FontWeight.bold,
                color: Colors.black),
            buildRadio(text: "ตอบ A", value: "A"),
            buildRadio(text: "ตอบ B", value: "B"),
            buildRadio(text: "ตอบ C", value: "C"),
            buildRadio(text: "ตอบ D", value: "D"),
            buildButton(text: "NEXT", heightButton: 50.0, widthButton: 100.0)
          ],
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
        value: 0.4,
        valueColor: new AlwaysStoppedAnimation(Colors.pink),
        backgroundColor: Colors.black,
      ),
    );
  }

  buildRadio({text, value}) {
    return ListTile(
      title: buildText(text: text, size: 20.0),
      leading: Radio<String?>(
        value: value,
        groupValue: answer,
        onChanged: (val) {
          setState(() {
            answer = val;
          });
        },
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
              if (answer != "") {
                income_answer.add(answer);
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => NumberPage3()),
                    (Route) => false);
              }
            },
            child: buildText(text: text, size: 15.0)),
      ),
    );
  }
}
