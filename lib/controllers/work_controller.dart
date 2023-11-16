import 'package:flutter_responsive_ui/models/work_model.dart';
import 'package:get/get.dart';

class WorkController extends GetxController {
  var aboutWork = <Works>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchWorks();
  }

  void fetchWorks() async {
    await Future.delayed(Duration(seconds: 1));
    var workResult = [
      Works(
          id: 1,
          name: "Part Time Nurse",
          link:
              "https://3.imimg.com/data3/PN/FT/MY-1940339/home-nursing-services-500x500.jpg",
          salary: 7000,
          place: "Kochi, Kerala",
          company: "Portea Home Healthcare",
          description:
              "Qualification GNM or B.sc nursing with RN certificate.Willing for Part timeWillingness to work for home care environmentShould visit the patient twice a week."),
      Works(
          id: 2,
          name: "Staff Nurse",
          link:
              "https://connecteam.com/wp-content/uploads/2022/01/Home-Nursing-Care_Image-02-scaled.jpg",
          salary: 17000,
          place: "Kochi, Kerala",
          company: "Kumar Centre for Back Neck Pain",
          description:
              "Nurse with basic qualification and basic skills like IV , BP monitorin")
    ];
    aboutWork.value = workResult;
  }
}
