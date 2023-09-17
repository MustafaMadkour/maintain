import 'package:maintain/api_links.dart';
import 'package:maintain/core/class/crud.dart';

class ReportDetailsData {
  Crud crud;
  ReportDetailsData(this.crud);
  postdata(String report ) async {
    var response = await crud.postData(ApiLinks.reportdetails, {
      "report" : report , 
    });
    return response.fold((l) => l, (r) => r);
  }
}