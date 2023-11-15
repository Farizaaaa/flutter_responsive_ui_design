import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/widgets/button.dart';
import 'package:flutter_responsive_ui/widgets/check_box.dart';
import 'package:flutter_responsive_ui/widgets/check_box_second.dart';
import 'package:flutter_responsive_ui/widgets/custom_square_button.dart';
import 'package:flutter_responsive_ui/widgets/registration_app_bar.dart';
import 'package:flutter_responsive_ui/widgets/text_field.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: const RegistrationAppBar(),
      body: SizedBox(
        height: screenSize.height,
        width: screenSize.width,
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child:
                  TextFieldWidget(title: "Name", hintText: "Enter your name"),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child:
                  TextFieldWidget(title: "Email", hintText: "Enter your Email"),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextFieldWidget(
                  title: "Phone Number", hintText: "Enter Phone Number"),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child:
                  TextFieldWidget(title: "Address", hintText: "Enter Address"),
            ),
            Container(
              height: 200,
              width: screenSize.width,
              child: Image.network(
                  "https://staticmapmaker.com/img/google-placeholder.png"),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextSquareFieldWidget(title: "Time", hintText: "10:00"),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextSquareFieldWidget(title: "Time", hintText: "11:00"),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CheckBoxSecondWidget(
                  title3: "Hindi",
                  title: "malayalam",
                  title2: "Languages Known",
                  hintText: "English"),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextFieldWidget(
                  title: "Occupation", hintText: "Enter Occuaption"),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextFieldWidget(title: "Age", hintText: "Enter Age"),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CheckBoxWidget(
                  title: "Male", title2: "Gender", hintText: "Female"),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CheckBoxWidget(
                  title: "Indian", title2: "Nationality", hintText: "Other"),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: CustomMainButton(
                  color: const Color.fromARGB(255, 205, 147, 143),
                  onPressed: () {},
                  child: const Text("submit")),
            )
          ],
        ),
      ),
    );
  }
}
