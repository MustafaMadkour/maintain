import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maintain/controllers/home_controller.dart';
import 'package:maintain/core/class/handling_data_view.dart';
import 'package:maintain/view/widgets/home/appbar.dart';
import 'package:maintain/view/widgets/home/homeheading.dart';
import 'package:maintain/view/widgets/home/homereportcard.dart';
import 'package:maintain/view/widgets/home/toaddreport.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
      body: GetBuilder<HomeController>(
        builder: (controller) => HandlingDataRequest(
          statusRequest: controller.statusRequest,
          widget: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: [
                HomeAppBar(
                  hint: "Find a report",
                  onSearch: () {},
                  onpressed: () {},
                ),
                const SizedBox(
                  height: 50,
                ),
                ToAdd(
                  text: "Add Report",
                  onPressed: () {
                    controller.toAddReport();
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
                const HomeHeading(
                  title: "Your Reports",
                ),
                const SizedBox(
                  height: 50,
                ),
                const HomeReportCard(),
                const SizedBox(
                  height: 50,
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
