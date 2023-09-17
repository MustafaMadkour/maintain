import 'package:get/get.dart';

validator(String val, int min, int max, String type) {
  if (val.isEmpty) {
    return type + "validate_required".tr;
  }

  if (type == "username_label".tr) {
    if (!GetUtils.isUsername(val)) {
      return type + "validate_notvalid".tr;
    }
  }

  if (type == "email_label".tr) {
    if (!GetUtils.isEmail(val)) {
      return type + "validate_notvalid".tr;
    }
  }

  if (type == "phone_label".tr) {
    if (!GetUtils.isPhoneNumber(val)) {
      return type + "validate_notvalid".tr;
    }
  }

  if (val.length < min) {
    return type + "validate_short".tr;
  }

  if (val.length > max) {
    return type + "validate_long".tr;
  }
}
