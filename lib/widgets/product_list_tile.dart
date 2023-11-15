import 'package:flutter/material.dart';

class ProductListTileView extends StatelessWidget {
  const ProductListTileView({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height * 1 / 2,
      width: screenSize.width,
      child: ListView.builder(
        itemCount: 10,
        itemExtent: 100,
        itemBuilder: (context, index) {
          return Container(
            height: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("fffff",
                      style:
                          TextStyle(color: Colors.grey.shade500, fontSize: 18)),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "hello",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 18),
                    ),
                  ),
                  trailing: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "1 like",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
            width: screenSize.width,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(width: 1, color: Colors.grey.shade200),
              ),
            ),
          );
        },
      ),
    );
  }
}
  
// Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text("Some text"),
//             ListView
            
//           ],
//         ))