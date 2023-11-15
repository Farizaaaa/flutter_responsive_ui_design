import 'package:flutter/material.dart';

class CheckBoxSecondWidget extends StatefulWidget {
  final String title;
  final String title2;
  final String hintText;
  final String title3;
  const CheckBoxSecondWidget(
      {super.key,
      required this.title,
      required this.title2,
       required this.title3,
      required this.hintText});

  @override
  State<CheckBoxSecondWidget> createState() => _CheckBoxSecondWidgetState();
}

class _CheckBoxSecondWidgetState extends State<CheckBoxSecondWidget> {
  late FocusNode focusNode;
  bool isInFocus = false;
  bool valuefirst = false;
  @override
  void initState() {
    super.initState();
    focusNode = FocusNode();
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        setState(() {
          isInFocus = true;
        });
      } else {
        setState(() {
          isInFocus = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: Text(
            widget.title2,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              height: 45,
              width: screenSize.width * .12,
              child: Checkbox(
                checkColor: Colors.white,
                activeColor: Colors.amber,
                value: valuefirst,
                onChanged: (bool? value) {
                  setState(() {
                    valuefirst = value!;
                  });
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Text(
                widget.title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 45,
              width: screenSize.width * .12,
              child: Checkbox(
                checkColor: Colors.white,
                activeColor: Colors.amber,
                value: valuefirst,
                onChanged: (bool? value) {
                  setState(() {
                    valuefirst = value!;
                  });
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Text(
                widget.hintText,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 45,
              width: screenSize.width * .12,
              child: Checkbox(
                checkColor: Colors.white,
                activeColor: Colors.amber,
                value: valuefirst,
                onChanged: (bool? value) {
                  setState(() {
                    valuefirst = value!;
                  });
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Text(
                widget.title3,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
