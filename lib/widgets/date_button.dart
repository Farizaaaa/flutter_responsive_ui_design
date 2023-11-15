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
      height: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 203, 153, 5),
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.amber,
              Color.fromARGB(255, 203, 153, 5),
            ],
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.orange.withOpacity(0.4),
                blurRadius: 8,
                spreadRadius: 2)
          ]),
      child: const Text(
        "2022 5 Aug 26 Mon",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
    );
  }
}
