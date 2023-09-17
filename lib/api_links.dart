class ApiLinks {
  static const String server = "http://192.168.1.8/maintain-api";
  static const String images = "$server/upload";

  static const String test = "$server/test.php";

  // ================================ Images ========================= //
  static const String shipImages = "$images/ships";
  static const String shipSVGImages = "$images/ships/svg";
  static const String shipCertImages = "$images/shipcerts";
  static const String crewCertsImages = "$images/crewcerts";

  // ================================= Auth ========================== //

  static const String login = "$server/auth/login.php";
  // static const String verifyregister = "$server/auth/verifycode.php";

  static const String home = "$server/home.php";
  static const String addreport = "$server/reports/addreport.php";
  static const String reportdetails = "$server/reports/getreport.php";
}
