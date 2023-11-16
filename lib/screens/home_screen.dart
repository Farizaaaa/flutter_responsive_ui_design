import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/utils/colors.dart';
import 'package:flutter_responsive_ui/widgets/date_button.dart';
import 'package:flutter_responsive_ui/widgets/date_list.dart';
import 'package:flutter_responsive_ui/widgets/product_item.dart';
import 'package:flutter_responsive_ui/widgets/search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      appBar: SearchBarWidget(hasBackButton: false, isReadOnly: false),
      body: Stack(children: [
        SingleChildScrollView(
          //controller: controller,
          child: Column(
            children: [const DateButton(), const DateList(), ProductItem()],
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {},
        child: const Icon(
          Icons.location_on_outlined,
          color: Colors.black,
          size: 35,
        ),
      ),
    );
  }
}
