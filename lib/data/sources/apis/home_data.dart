import 'package:maintain/api_links.dart';
import 'package:maintain/core/class/crud.dart';

class HomeData {
  Crud crud;
  HomeData(this.crud);

  getData() async {
    var response = await crud.postData(ApiLinks.home, {});
    return response.fold((l) => l, (r) => r);
  }

  getShip(String report) async {
    var response = await crud.postData(ApiLinks.home, {"report": report});
    return response.fold((l) => l, (r) => r);
  }
}
