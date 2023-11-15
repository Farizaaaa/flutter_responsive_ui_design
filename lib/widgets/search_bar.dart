import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/utils/colors.dart';
import 'package:flutter_responsive_ui/utils/constants.dart';

class SearchBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final bool isReadOnly;
  final bool hasBackButton;

  SearchBarWidget(
      {super.key,
      prefferedSize,
      required this.hasBackButton,
      required this.isReadOnly});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
//final Size prefferedSize=;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      height: kAppBarHeight,
      decoration: const BoxDecoration(),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        hasBackButton
            ? IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back))
            : Container(),
        Container(
          width: screenSize.width * 0.6,
          height: 45,
          color: primary,
          child: TextField(
            readOnly: isReadOnly,
            decoration: InputDecoration(
              hintText: "Search ",
              hintStyle: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.w500),
              fillColor: Colors.grey.shade300,
              filled: true,
              border: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(90.0)),
              ),
            ),
          ),
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.tune_rounded)),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_outline,
              color: Colors.red,
              size: 30,
            )),
      ]),
    );
  }
}
