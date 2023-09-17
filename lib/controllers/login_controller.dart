import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maintain/core/class/status_request.dart';
import 'package:maintain/core/constants/route_names.dart';
import 'package:maintain/core/functions/handling_data.dart';
import 'package:maintain/core/services/services.dart';
import 'package:maintain/data/sources/apis/auth/login_data.dart';

abstract class LoginAbst extends GetxController {
  login();
  toRegster();
  toForgetPass();
}

class LoginController extends LoginAbst {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  bool isShowPass = true;

  LoginData loginData = LoginData(Get.find());
  List data = [];
  MyServices myServices = Get.find();

  StatusRequest statusRequest = StatusRequest.none;

  showPass() {
    isShowPass = isShowPass == true ? false : true;
    update();
  }

  @override
  login() async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await loginData.postData(email.text, password.text);
      statusRequest = handlingData(response);

      if (statusRequest == StatusRequest.success) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          myServices.sharedPreferences
              .setString("id", response['data']['admin_id'].toString());
          myServices.sharedPreferences
              .setString("email", response['data']['admin_email']);
          myServices.sharedPreferences
              .setString("username", response['data']['admin_name']);
          myServices.sharedPreferences.setString("step", "2");
          Get.offNamed(AppRoutes.home);
        } else {
          Get.defaultDialog(
              title: "Auth Failed",
              middleText: "Please, check your email or password and try again");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
      //
    } else {}
  }

  @override
  toRegster() {
    Get.offNamed(AppRoutes.register);
  }

  @override
  toForgetPass() {
    Get.offNamed(AppRoutes.forgetPass);
  }

  @override
  void onInit() {
    FirebaseMessaging.instance.getToken().then((value) {
      print(value);
      String? token = value;
    });
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}