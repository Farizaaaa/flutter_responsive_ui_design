import 'package:flutter/material.dart';

class ProductsShowcaseListView extends StatelessWidget {
  const ProductsShowcaseListView({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double height = screenSize.height / 4;
    double width = screenSize.width;
    double titleHeight = 25;
    return Container(
      padding: const EdgeInsets.all(8),
      height: height,
      width: width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40),
          topLeft: Radius.circular(40),
        ),
      ),
      child: SizedBox(
        height: height - (titleHeight + 26),
        width: screenSize.width,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(40, 5, 20, 5),
              child: Container(
                  height: 50,
                  width: 400,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        offset: const Offset(
                          5.0,
                          5.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      )
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: GridView.builder(
                      itemCount: 12,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 10,
                        mainAxisExtent: 40,
                      ),
                      itemBuilder: (
                        context,
                        index,
                      ) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 128, 110, 55),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Icon(
                                Icons.check,
                                size: 30,
                                color: Colors.white,
                              )),
                        );
                      })),
            );
          },
        ),
      ),
    );
  }
}
