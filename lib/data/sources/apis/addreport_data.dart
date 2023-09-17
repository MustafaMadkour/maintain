import 'package:maintain/api_links.dart';
import 'package:maintain/core/class/crud.dart';

class AddReportData {
  Crud crud;
  AddReportData(this.crud);

  postData(String operation, String fault, String solution, String faultdate,
      String estimatedtime, String spareparts, String status) async {
    var response = await crud.postData(ApiLinks.addreport, {
      "operation": operation,
      "fault": fault,
      "solution": solution,
      "faultdate": faultdate,
      "estimatedtime": estimatedtime,
      "spareparts": spareparts,
      "status": status
    });
    return response.fold((l) => l, (r) => r);
  }
}
