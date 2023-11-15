import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final String title;

  final String hintText;
  const TextFieldWidget(
      {super.key, required this.title, required this.hintText});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  late FocusNode focusNode;
  bool isInFocus = false;
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
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(
            widget.title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ),
        Container(
          alignment: Alignment.center,
          height: 45,
          width: screenSize.width * .95,
          decoration: BoxDecoration(boxShadow: [
            isInFocus
                ? BoxShadow(
                    color: Colors.orange.withOpacity(0.4),
                    blurRadius: 8,
                    spreadRadius: 2)
                : BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 8,
                    spreadRadius: 2)
          ]),
          child: TextField(
            focusNode: focusNode,
            maxLines: 1,
            decoration: InputDecoration(
                hintText: widget.hintText,
                hintStyle: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w500),
                fillColor: Colors.grey.shade300,
                filled: true,
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange, width: 1))),
          ),
        )
      ],
    );
  }
}
