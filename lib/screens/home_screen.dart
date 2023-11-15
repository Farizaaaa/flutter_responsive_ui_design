import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/widgets/date_button.dart';
import 'package:flutter_responsive_ui/widgets/date_list.dart';
import 'package:flutter_responsive_ui/widgets/product_item.dart';
import 'package:flutter_responsive_ui/widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchBarWidget(hasBackButton: false, isReadOnly: true),
      body: Column(
        children: [DateButton(), DateList(), ProductItem()],
      ),
    );
    ;
  }
}
