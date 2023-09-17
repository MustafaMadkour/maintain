import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maintain/controllers/home_controller.dart';
import 'package:maintain/core/constants/app_color.dart';

class HomeReportCard extends GetView<HomeController> {
  // final reportsModel shipsModel;
  const HomeReportCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        // color: AppColor.secondaryColor,
      ),
      height: 480,
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          width: 20,
        ),
        itemCount: controller.reports.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                  controller.toReportDetails(
                      controller.reports[index]['report_operation'].toString());
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    // side: const BorderSide(
                    //     // color: AppColor.secondaryColor,

                    //     ),
                  ),
                  elevation: 20,
                  shadowColor: AppColor.secondaryColor,
                  // color: AppColor.primaryColor,
                  child: SizedBox(
                    width: 300,
                    height: 450,
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Container(
                            // alignment: Alignment.center,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 10),
                            margin: const EdgeInsets.only(bottom: 20, top: 10),
                            height: 150,
                            width: 100,
                            child: const Icon(
                              Icons.assignment,
                              size: 100,
                              color: AppColor.secondaryColor,
                            ),
                          ),
                          ListTile(
                            leading: const Icon(
                              Icons.assignment,
                              color: AppColor.primaryColor,
                              size: 30,
                            ),
                            title: Text(
                              "${controller.reports[index]['report_operation']}",
                              style: const TextStyle(
                                color: AppColor.primaryColor,
                                fontSize: 18,
                                // fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            subtitle: const Text(
                              "Operation",
                              style: TextStyle(
                                color: AppColor.secondaryColor,
                              ),
                            ),
                          ),
                          ListTile(
                            leading: const Icon(
                              Icons.date_range,
                              color: AppColor.primaryColor,
                              size: 30,
                            ),
                            title: Text(
                              "${controller.reports[index]['fault_date']}",
                              style: const TextStyle(
                                color: AppColor.primaryColor,
                                fontSize: 18,
                                // fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            subtitle: const Text(
                              "Date",
                              style: TextStyle(
                                color: AppColor.secondaryColor,
                              ),
                            ),
                          ),
                          ListTile(
                            leading: const Icon(
                              Icons.flag,
                              color: AppColor.primaryColor,
                              size: 30,
                            ),
                            title: Text(
                              "${controller.reports[index]['status']}",
                              style: const TextStyle(
                                color: AppColor.primaryColor,
                                fontSize: 18,
                                // fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            subtitle: const Text(
                              "Status",
                              style: TextStyle(
                                color: AppColor.secondaryColor,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
