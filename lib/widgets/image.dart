import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final String url;
  const ImageWidget({super.key,required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
            image: NetworkImage(
               url),
            fit: BoxFit.fill,
          )),
      // child: Image.network(
      //     "https://b.zmtcdn.com/data/collections/2e5c28a5fbcb2b35d84c0a498b0e1ba2_1674825837.jpg?fit=around|562.5:360&crop=562.5:360;*,*"),
    );
  }
}
