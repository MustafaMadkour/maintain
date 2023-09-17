import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maintain/controllers/report_details_controller.dart';
import 'package:maintain/core/class/handling_data_view.dart';
import 'package:maintain/core/class/pdf_generator.dart';
import 'package:maintain/core/constants/app_color.dart';
import 'package:maintain/view/widgets/home/homeheading.dart';

class ReportDetails extends StatelessWidget {
  const ReportDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ReportDetailsController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Report Details"),
      ),
      body: GetBuilder<ReportDetailsController>(
        builder: (controller) => HandlingDataRequest(
          statusRequest: controller.statusRequest,
          widget: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: [
                const SizedBox(
                  height: 50,
                ),
                HomeHeading(
                  title: "${controller.reportdetails['report_operation']}",
                ),
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.build,
                          size: 40.0,
                          color: AppColor.secondaryColor,
                        ),
                        const SizedBox(width: 16.0),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Operation",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.secondaryColor),
                              ),
                              const SizedBox(height: 16.0),
                              Text(
                                "${controller.reportdetails['report_operation']}",
                                style: const TextStyle(
                                  fontSize: 24.0,
                                  color: AppColor.primaryColor,
                                ),
                              ),
                              const SizedBox(height: 8.0),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.cancel,
                          size: 40.0,
                          color: AppColor.secondaryColor,
                        ),
                        const SizedBox(width: 16.0),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Fault",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.secondaryColor),
                              ),
                              const SizedBox(height: 16.0),
                              Text(
                                textDirection: TextDirection.rtl,
                                "${controller.reportdetails['fault_description']}",
                                style: const TextStyle(
                                  fontSize: 20.0,
                                  color: AppColor.primaryColor,
                                ),
                              ),
                              const SizedBox(height: 8.0),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.emoji_objects_outlined,
                          size: 40.0,
                          color: AppColor.secondaryColor,
                        ),
                        const SizedBox(width: 16.0),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Solution",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.secondaryColor),
                              ),
                              const SizedBox(height: 16.0),
                              Text(
                                textDirection: TextDirection.rtl,
                                "${controller.reportdetails['suggested_solution']}",
                                style: const TextStyle(
                                  fontSize: 20.0,
                                  color: AppColor.primaryColor,
                                ),
                              ),
                              const SizedBox(height: 8.0),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.edit_calendar,
                          size: 40.0,
                          color: AppColor.secondaryColor,
                        ),
                        const SizedBox(width: 16.0),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Fault Date",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.secondaryColor),
                              ),
                              const SizedBox(height: 16.0),
                              Text(
                                textDirection: TextDirection.rtl,
                                "${controller.reportdetails['fault_date']}",
                                style: const TextStyle(
                                  fontSize: 20.0,
                                  color: AppColor.primaryColor,
                                ),
                              ),
                              const SizedBox(height: 8.0),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.browse_gallery,
                          size: 40.0,
                          color: AppColor.secondaryColor,
                        ),
                        const SizedBox(width: 16.0),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Estimated Time",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.secondaryColor),
                              ),
                              const SizedBox(height: 16.0),
                              Text(
                                textDirection: TextDirection.rtl,
                                "${controller.reportdetails['operation_estimated_time']}",
                                style: const TextStyle(
                                  fontSize: 20.0,
                                  color: AppColor.primaryColor,
                                ),
                              ),
                              const SizedBox(height: 8.0),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.flag,
                          size: 40.0,
                          color: AppColor.secondaryColor,
                        ),
                        const SizedBox(width: 16.0),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Operation Status",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.secondaryColor),
                              ),
                              const SizedBox(height: 16.0),
                              Text(
                                textDirection: TextDirection.rtl,
                                "${controller.reportdetails['status']}",
                                style: const TextStyle(
                                  fontSize: 20.0,
                                  color: AppColor.primaryColor,
                                ),
                              ),
                              const SizedBox(height: 8.0),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Container(
                //   margin: const EdgeInsets.symmetric(horizontal: 20),
                //   // width: 600,
                //   // height: MediaQuery.of(context).size.height * 2 / 3,
                //   // color: AppColor.primaryColor,
                //   decoration: const BoxDecoration(
                //     borderRadius: BorderRadius.only(
                //       topLeft: Radius.circular(10),
                //       topRight: Radius.circular(10),
                //     ),
                //   ),
                //   child: Center(
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.start,
                //       children: [
                //         Container(
                //           // width: double.infinity,
                //           child: Column(
                //             children: [
                //               SizedBox(
                //                 // width:
                //                 //     MediaQuery.of(context).size.width * 2 / 3,
                //                 child: ListTile(
                //                   leading: const Icon(
                //                     Icons.build,
                //                     color: AppColor.primaryColor,
                //                     size: 30,
                //                   ),
                //                   subtitle: Text(
                //                     "${controller.reportdetails['report_operation']}",
                //                     style: const TextStyle(
                //                       color: AppColor.primaryColor,
                //                       fontSize: 18,
                //                       // fontWeight: FontWeight.bold,
                //                     ),
                //                     textAlign: TextAlign.start,
                //                   ),
                //                   title: const Text(
                //                     "Operation Name",
                //                     style: TextStyle(
                //                       color: AppColor.secondaryColor,
                //                     ),
                //                   ),
                //                 ),
                //               ),
                //               SizedBox(
                //                 // width:
                //                 //     MediaQuery.of(context).size.width * 2 / 3,
                //                 child: ListTile(
                //                   leading: const Icon(
                //                     Icons.cancel,
                //                     color: AppColor.primaryColor,
                //                     size: 30,
                //                   ),
                //                   subtitle: Text(
                //                     "${controller.reportdetails['fault_description']}",
                //                     style: const TextStyle(
                //                       color: AppColor.primaryColor,
                //                       fontSize: 18,
                //                       // fontWeight: FontWeight.bold,
                //                     ),
                //                     textAlign: TextAlign.start,
                //                   ),
                //                   title: const Text(
                //                     "Fault Description",
                //                     style: TextStyle(
                //                       color: AppColor.secondaryColor,
                //                     ),
                //                   ),
                //                 ),
                //               ),
                //               SizedBox(
                //                 // width:
                //                 //     MediaQuery.of(context).size.width * 2 / 3,
                //                 child: ListTile(
                //                   leading: const Icon(
                //                     Icons.emoji_objects_outlined,
                //                     color: AppColor.primaryColor,
                //                     size: 30,
                //                   ),
                //                   subtitle: Text(
                //                     "${controller.reportdetails['suggested_solution']}",
                //                     style: const TextStyle(
                //                       color: AppColor.primaryColor,
                //                       fontSize: 18,
                //                       // fontWeight: FontWeight.bold,
                //                     ),
                //                     textAlign: TextAlign.start,
                //                   ),
                //                   title: const Text(
                //                     "Suggested Solution",
                //                     style: TextStyle(
                //                       color: AppColor.secondaryColor,
                //                     ),
                //                   ),
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ),
                //         Expanded(
                //           child: Column(
                //             children: [
                //               SizedBox(
                //                 // width:
                //                 //     MediaQuery.of(context).size.width * 2 / 3,
                //                 child: ListTile(
                //                   leading: const Icon(
                //                     Icons.edit_calendar,
                //                     color: AppColor.primaryColor,
                //                     size: 30,
                //                   ),
                //                   subtitle: Text(
                //                     "${controller.reportdetails['fault_date']}",
                //                     style: const TextStyle(
                //                       color: AppColor.primaryColor,
                //                       fontSize: 18,
                //                       // fontWeight: FontWeight.bold,
                //                     ),
                //                     textAlign: TextAlign.start,
                //                   ),
                //                   title: const Text(
                //                     "Fault Date",
                //                     style: TextStyle(
                //                       color: AppColor.secondaryColor,
                //                     ),
                //                   ),
                //                 ),
                //               ),
                //               SizedBox(
                //                 // width:
                //                 //     MediaQuery.of(context).size.width * 2 / 3,
                //                 child: ListTile(
                //                   leading: const Icon(
                //                     Icons.browse_gallery,
                //                     color: AppColor.primaryColor,
                //                     size: 30,
                //                   ),
                //                   subtitle: Text(
                //                     "${controller.reportdetails['operation_estimated_time']}",
                //                     style: const TextStyle(
                //                       color: AppColor.primaryColor,
                //                       fontSize: 18,
                //                       // fontWeight: FontWeight.bold,
                //                     ),
                //                     textAlign: TextAlign.start,
                //                   ),
                //                   title: const Text(
                //                     "Estimated_time",
                //                     style: TextStyle(
                //                       color: AppColor.secondaryColor,
                //                     ),
                //                   ),
                //                 ),
                //               ),
                //               SizedBox(
                //                 width:
                //                     MediaQuery.of(context).size.width * 2 / 3,
                //                 child: ListTile(
                //                   leading: const Icon(
                //                     Icons.engineering,
                //                     color: AppColor.primaryColor,
                //                     size: 30,
                //                   ),
                //                   subtitle: Text(
                //                     "${controller.reportdetails['spare_parts_needed']}",
                //                     style: const TextStyle(
                //                       color: AppColor.primaryColor,
                //                       fontSize: 18,
                //                       // fontWeight: FontWeight.bold,
                //                     ),
                //                     textAlign: TextAlign.start,
                //                   ),
                //                   title: const Text(
                //                     "Spare Parts",
                //                     style: TextStyle(
                //                       color: AppColor.secondaryColor,
                //                     ),
                //                   ),
                //                 ),
                //               ),
                //               SizedBox(
                //                 width:
                //                     MediaQuery.of(context).size.width * 2 / 3,
                //                 child: ListTile(
                //                   leading: const Icon(
                //                     Icons.flag,
                //                     color: AppColor.primaryColor,
                //                     size: 30,
                //                   ),
                //                   subtitle: Text(
                //                     "${controller.reportdetails['status']}",
                //                     style: const TextStyle(
                //                       color: AppColor.primaryColor,
                //                       fontSize: 18,
                //                       // fontWeight: FontWeight.bold,
                //                     ),
                //                     textAlign: TextAlign.start,
                //                   ),
                //                   title: const Text(
                //                     "Operation Status",
                //                     style: TextStyle(
                //                       color: AppColor.secondaryColor,
                //                     ),
                //                   ),
                //                 ),
                //               ),
                //             ],
                //           ),
                //         )
                //       ],
                //     ),
                //   ),
                // ),
                Container(
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 25,
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        height: 40,
                        child: MaterialButton(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 0),
                          onPressed: () {
                            PdfGenerator.createpdf(
                              "${controller.reportdetails['report_operation']}",
                              "${controller.reportdetails['fault_description']}",
                              "${controller.reportdetails['suggested_solution']}",
                              "${controller.reportdetails['fault_date']}",
                              "${controller.reportdetails['operation_estimated_time']}",
                              "${controller.reportdetails['spare_parts_needed']}",
                              "${controller.reportdetails['status']}",
                            );
                          },
                          color: AppColor.secondaryColor,
                          textColor: AppColor.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: const Text(
                            "Generate PDF",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      // bottomNavigationBar: const BottomBar(),
    );
  }
}
