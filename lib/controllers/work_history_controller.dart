import 'package:flutter_responsive_ui/models/work_history_model.dart';
import 'package:get/get.dart';

class WorkHistoryController extends GetxController {
  var workHistory = <WorkHistory>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchDoneWork();
  }

  void fetchDoneWork() async {
    await Future.delayed(Duration(seconds: 1));
    var workDoneResult = [
      WorkHistory(date: "10 / 08 / 2001", workName: "Blog about Flutter Getx"),
      WorkHistory(date: "21 / 01 / 2023", workName: "Calculator App"),
      WorkHistory(date: "30 / 10 / 2020", workName: "Firebase Example"),
      WorkHistory(date: "30 / 10 / 2020", workName: "Provider Example"),
      WorkHistory(date: "30 / 10 / 2020", workName: "Spotify App")
    ];
    workHistory.value = workDoneResult;
  }
}
