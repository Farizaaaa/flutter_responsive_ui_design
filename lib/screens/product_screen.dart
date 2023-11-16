import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/utils/constants.dart';
import 'package:flutter_responsive_ui/widgets/product_appbar.dart';
import 'package:flutter_responsive_ui/widgets/product_list_tile.dart';
import 'package:flutter_responsive_ui/widgets/product_list_view.dart';

class ProductScreen extends StatelessWidget {
  final ScrollController controller = ScrollController();
  ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 139, 161, 248),
      appBar: const ProductAppbar(),
      body: SingleChildScrollView(
        controller: controller,
        child: Column(
          children: [
            Container(
              height: kAppBarHeight,
              width: screenSize.width,
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Some text",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    Text("Some Other Text 30",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const ProductsShowcaseListView(),
            Container(
                padding: const EdgeInsets.all(10),
                width: screenSize.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(color: Colors.grey)],
                ),
                child: Text(
                  "Works Completed",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade800,
                      fontSize: 18),
                )),
            ProductListTileView()
          ],
        ),
      ),
    );
  }
}
