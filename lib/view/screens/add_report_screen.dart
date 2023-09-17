import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maintain/controllers/add_report_controller.dart';
import 'package:maintain/core/class/handling_data_view.dart';
import 'package:maintain/core/constants/app_color.dart';
import 'package:maintain/core/functions/validator.dart';
import 'package:maintain/view/widgets/auth/aut_title.dart';
import 'package:maintain/view/widgets/auth/auth_button.dart';
import 'package:maintain/view/widgets/auth/auth_subtitle.dart';
import 'package:maintain/view/widgets/auth/auth_textform.dart';

class AddReport extends StatelessWidget {
  const AddReport({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AddReportController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: const AuthTitle(
          title: "Add New Report",
        ),
      ),
      body: Container(
        child: GetBuilder<AddReportController>(
          builder: (controller) => HandlingDataRequest(
              statusRequest: controller.statusRequest,
              widget: Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Form(
                  key: controller.formstate,
                  child: ListView(
                    children: [
                      // const SizedBox(
                      //   height: 10,
                      // ),
                      const SizedBox(
                        height: 30,
                      ),
                      const AuthSubTitle(
                        subtitle: "Please enter your new report details",
                      ),
                      const SizedBox(
                        height: 30,
                      ),

                      AuthTextForm(
                        isNum: false,
                        labeltext: "Operation Name",
                        hinttext: "Add report operation name",
                        fieldicon: Icons.build,
                        myController: controller.operation,
                        validate: (val) {
                          return validator(val!, 5, 100, "Operation Name");
                        },
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      // Date,
                      AuthTextForm(
                        isNum: false,
                        labeltext: "Fault Description",
                        hinttext: "Add fault description or summary",
                        fieldicon: Icons.cancel,
                        myController: controller.fault,
                        validate: (val) {
                          return validator(val!, 5, 100, "Fault Description");
                        },
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      AuthTextForm(
                        isNum: false,
                        labeltext: "Suggested Solution",
                        hinttext: "Add suggested solution to fix this fault",
                        fieldicon: Icons.emoji_objects_outlined,
                        myController: controller.solution,
                        validate: (val) {
                          return validator(val!, 5, 100, "Suggested Solution");
                        },
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      // InputDatePickerFormField(
                      //   firstDate: DateTime(2016),
                      //   lastDate: DateTime.now(),

                      // ),
                      AuthTextForm(
                        isNum: false,
                        labeltext: "Fault Date",
                        hinttext: "YYYY/MM/DD",
                        fieldicon: Icons.calendar_month,
                        myController: controller.faultdate,
                        validate: (val) {
                          return validator(val!, 5, 100, "Fault Date");
                        },
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      AuthTextForm(
                        isNum: false,
                        labeltext: "Estimated Time",
                        hinttext: "Add estimated time to fix this fault",
                        fieldicon: Icons.browse_gallery,
                        myController: controller.estimatedtime,
                        validate: (val) {
                          return validator(val!, 4, 10, "Estimated Time");
                        },
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      AuthTextForm(
                        isNum: false,
                        labeltext: "Spare Parts",
                        hinttext:
                            "Add spare parts needed to acheive fault solution",
                        fieldicon: Icons.engineering,
                        myController: controller.spareparts,
                        validate: (val) {
                          return validator(val!, 5, 100, "Spare Parts");
                        },
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      AuthTextForm(
                        isNum: false,
                        labeltext: "Status",
                        hinttext: "Add operation status",
                        fieldicon: Icons.flag,
                        myController: controller.status,
                        validate: (val) {
                          return validator(val!, 5, 100, "Status");
                        },
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      // GetBuilder<RegisterController>(
                      //   builder: (controller) => AuthTextForm(
                      //     isPass: controller.isShowPass,
                      //     onTapIcon: () {
                      //       controller.showPass();
                      //     },
                      //     isNum: false,
                      //     labeltext: "pass_confirm_label".tr,
                      //     hinttext: "pass_confirm_hint".tr,
                      //     fieldicon: Icons.lock_reset_outlined,
                      //     validate: (val) {
                      //       return validator(val!, 5, 30, "pass_confirm_label".tr);
                      //     },
                      //   ),
                      // ),
                      const SizedBox(
                        height: 25,
                      ),
                      AuthButton(
                        text: "Save",
                        onPressed: () {
                          controller.addReport();
                        },
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      AuthButton(
                        text: "Cancel",
                        onPressed: () {
                          controller.toHome();
                        },
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      // AuthToPage(
                      //   text: "to_signin".tr,
                      //   linkText: "signin".tr,
                      //   onTap: () {
                      //     controller.toLogin();
                      //   },
                      // ),
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
