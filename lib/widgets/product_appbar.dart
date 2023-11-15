import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/utils/constants.dart';

class ProductAppbar extends StatelessWidget implements PreferredSizeWidget {
  const ProductAppbar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      height: kAppBarHeight,
      width: screenSize.width,
      decoration: BoxDecoration(color: Color.fromARGB(255, 139, 161, 248)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back_ios, color: Colors.white)),
            Text("Working History",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
            IconButton(
                onPressed: () {},
                icon: Icon(color: Colors.white, Icons.remove_circle_outline))
          ],
        ),
      ),
    );
  }
}
