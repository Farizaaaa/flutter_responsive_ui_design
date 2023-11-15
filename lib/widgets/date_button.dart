import 'package:flutter/material.dart';

class DateButton extends StatelessWidget {
  const DateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(color: Colors.amber),
      child: Text(
        "2022 5 Aug 26 Mon",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
