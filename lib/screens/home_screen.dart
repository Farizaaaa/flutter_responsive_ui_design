import 'package:flutter/material.dart';
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
      appBar: SearchBarWidget(hasBackButton: false, isReadOnly: true),
      body: const Stack(children: [
        SingleChildScrollView(
          //controller: controller,
          child: Column(
            children: [
              DateButton(),
              DateList(),
              ProductItem(),
              ProductItem(),
              ProductItem()
            ],
          ),
        ),
      ]),
    );
    ;
  }
}
