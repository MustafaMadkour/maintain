import 'package:get/get.dart';
import 'package:maintain/core/class/status_request.dart';
import 'package:maintain/core/constants/route_names.dart';
import 'package:maintain/core/functions/handling_data.dart';
import 'package:maintain/data/sources/apis/reportdetails_data.dart';

abstract class ReportDetailsAbs extends GetxController {
  getReportDetails(String report);
  toHome();
}

class ReportDetailsController extends ReportDetailsAbs {
  ReportDetailsData reportDetailsData = ReportDetailsData(Get.find());

  String? report;
  Map reportdetails = {};

  StatusRequest statusRequest = StatusRequest.none;
  @override
  getReportDetails(String report) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await reportDetailsData.postdata(report);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        reportdetails.addAll(response['data']);
        // print(shipdetails['ship_name'].toString());
      } else {
        Get.defaultDialog(
            title: "ُWarning", middleText: "Report Name is not correct");
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  toHome() {
    Get.offAllNamed(AppRoutes.home);
  }

  @override
  void onInit() {
    report = Get.arguments['report'];
    // toHome();
    getReportDetails(report!);
    super.onInit();
  }
}