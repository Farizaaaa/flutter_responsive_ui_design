import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  const TextWidget({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(8),
      child: Text(text,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
    );
  }
}
