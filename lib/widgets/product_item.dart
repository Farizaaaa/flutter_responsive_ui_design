import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/controllers/work_controller.dart';
import 'package:get/get.dart';

class ProductItem extends StatelessWidget {
  final workController = Get.put(WorkController());
  

  ProductItem(
      {super.key,
   });

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Container(
        margin: const EdgeInsets.all(20),
        height: screenSize.height / 1.1,
        width: screenSize.width,
        child: ListView.builder(
            itemCount: 2,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: const BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                            )),
                        width: screenSize.width,
                        height: (screenSize.height / 2) / 2,
                        child: Obx(() {
                          return Image.network(
                            workController.aboutWork[index].link,
                            fit: BoxFit.cover,
                          );
                        }),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Obx(() {
                          return Text(
                            workController.aboutWork[index].name,
                            style: const TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 18),
                          );
                        }),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 30,
                              width: 200,
                              alignment: Alignment.center,
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: const Color.fromARGB(255, 202, 193, 193),
                              ),
                              child: const Text(
                                "Contact Recruiter",
                                style: TextStyle(
                                    color: Colors.amber,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ),
                            Obx(() {
                              return Text(
                                "₹${workController.aboutWork[index].salary}",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              );
                            }),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Obx(() {
                          return Text(
                            workController.aboutWork[index].description,
                            maxLines: 1,
                            style: const TextStyle(fontSize: 18),
                          );
                        }),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Obx(() {
                          return Text(
                            workController.aboutWork[index].company,
                            style: const TextStyle(fontSize: 18),
                          );
                        }),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Obx(() {
                          return Text(
                            workController.aboutWork[index].place,
                            style: const TextStyle(fontSize: 18),
                          );
                        }),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Like",
                              style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Icon(
                              Icons.favorite_border,
                              color: Colors.grey.shade500,
                            )
                          ],
                        ),
                      )
                      // decoration: BoxDecoration(
                      //     image: NetworkImage(""))),
                    ],
                  ),
                ),
              );
            }));
  }
}
