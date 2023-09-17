

import 'package:maintain/api_links.dart';
import 'package:maintain/core/class/crud.dart';

class LoginData {
  Crud crud;
  LoginData(this.crud);

  postData(String email, String password) async {
    var response = await crud.postData(ApiLinks.login, {
      "password": password,
      "email": email
    });
    return response.fold((l) => l, (r) => r);
  }
}
