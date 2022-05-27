import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/variable.dart';
import 'package:flutter_application_1/view/numberpage1.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => homepageState();
}

class homepageState extends State<homepage> {
  TextEditingController nicknamecontrol = TextEditingController();
  Color? colorInput = Colors.teal;

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: buildText(
              text: "QuestionApp", size: 18.0, weight: FontWeight.bold),
        ),
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildText(
                    text: "กรุณากรอกชื่อ",
                    size: 20.0,
                    weight: FontWeight.bold,
                    color: Colors.green),
                buildInput(text: "ชื่อเล่น", color: colorInput),
                buildHigh(height: 50.0),
                buildButton(
                    text: "Start",
                    size: 16.0,
                    weight: FontWeight.normal,
                    widthButton: 100.0,
                    heightButton: 50.0)
              ],
            ),
          ),
        ));
  }

  buildText({text, size, weight, color}) {
    return Text(
      text,
      style: TextStyle(fontSize: size, fontWeight: weight, color: color),
    );
  }

  buildInput({text, color}) {
    return TextFormField(
      controller: nicknamecontrol,
      decoration: InputDecoration(
          labelText: text,
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: color)),
          labelStyle: TextStyle(color: color)),
    );
  }

  buildButton({text, size, weight, color, heightButton, widthButton}) {
    return Container(
      width: widthButton,
      height: heightButton,
      child: ElevatedButton(
          onPressed: () {
            if (nicknamecontrol.text == "") {
              colorInput = Colors.red;
            } else {
              nickname = nicknamecontrol.text;
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => NumberPage1()),
                  (Route) => false);
            }
          },
          child:
              buildText(text: text, size: size, weight: weight, color: color)),
    );
  }

  buildHigh({height}) {
    return SizedBox(
      height: height,
    );
  }
}
