import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/controllers/work_history_controller.dart';
import 'package:get/get.dart';

class ProductListTileView extends StatelessWidget {
  final workHistoryController = Get.put(WorkHistoryController());
  ProductListTileView({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height * 1 / 2,
      width: screenSize.width,
      child: ListView.builder(
        itemCount: 4,
        itemExtent: 100,
        itemBuilder: (context, index) {
          return Container(
            height: 300,
            width: screenSize.width,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(width: 1, color: Colors.grey.shade200),
              ),
            ),
            child: Obx(() {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                        workHistoryController
                            .workHistory[index == 0 ? 1 : index].date,
                        style: TextStyle(
                            color: Colors.grey.shade500, fontSize: 18)),
                  ),
                  ListTile(
                    title: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        workHistoryController.workHistory[index].workName,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 18),
                      ),
                    ),
                    trailing: const Padding(
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
              );
            }),
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