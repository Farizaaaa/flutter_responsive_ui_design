import 'package:flutter/Material.dart';
import 'package:flutter_responsive_ui/layout/screen_layout.dart';
import 'package:get/get.dart';

void main() {
  runApp(const ResponsiveUi());
}

class ResponsiveUi extends StatelessWidget {
  const ResponsiveUi({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Responsive UI",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: Color.fromARGB(255, 240, 237, 236)),
      home: const ResponsiveLayout(),
    );
  }
}
