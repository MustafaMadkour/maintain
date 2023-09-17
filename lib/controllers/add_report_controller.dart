import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maintain/core/class/status_request.dart';
import 'package:maintain/core/constants/route_names.dart';
import 'package:maintain/core/functions/handling_data.dart';
import 'package:maintain/core/services/services.dart';
import 'package:maintain/data/sources/apis/addreport_data.dart';

abstract class AddReportAbs extends GetxController {
  addReport();
  toHome();
}

class AddReportController extends AddReportAbs {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController operation;
  late TextEditingController fault;
  late TextEditingController solution;
  late TextEditingController faultdate;
  late TextEditingController estimatedtime;
  late TextEditingController spareparts;
  late TextEditingController status;
  bool isShowPass = true;

  

  StatusRequest statusRequest = StatusRequest.none;
  AddReportData addReportData = AddReportData(Get.find());
  MyServices myServices = Get.find();
  List data = [];
  
  showPass() {
    isShowPass = isShowPass == true ? false : true;
    update();
  }

  @override
  addReport() async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await addReportData.postData(operation.text, fault.text,
          solution.text, faultdate.text, estimatedtime.text, spareparts.text, status.text);
      statusRequest = handlingData(response);

      if (statusRequest == StatusRequest.success) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.offNamed(AppRoutes.home);
        } else {
          Get.defaultDialog(
              title: "Error", middleText: "Error sending report data");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
      //
    } else {}
  }

  @override
  void onInit() {
    operation = TextEditingController();
    fault = TextEditingController();
    solution = TextEditingController();
    faultdate = TextEditingController();
    estimatedtime = TextEditingController();
    spareparts = TextEditingController();
    status = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    operation.dispose();
    fault.dispose();
    solution.dispose();
    faultdate.dispose();
    estimatedtime.dispose();
    spareparts.dispose();
    status.dispose();
    super.dispose();
  }

  @override
  toHome() {
    Get.offAllNamed(AppRoutes.home);
  }
}