import 'package:flutter/Material.dart';
import 'package:flutter_responsive_ui/layout/screen_layout.dart';

void main() {
  runApp(const ResponsiveUi());
}

class ResponsiveUi extends StatelessWidget {
  const ResponsiveUi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Responsive UI",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(scaffoldBackgroundColor: const Color.fromARGB(255, 237, 225, 221)),
      home: const ResponsiveLayout(),
    );
  }
}
