import 'dart:io';
import 'package:flutter/services.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class PdfGenerator {
  static late pw.Font arFont;
  static init() async {
    arFont = pw.Font.ttf(
        (await rootBundle.load("assets/fonts/Cairo/Cairo-Bold.ttf")));
    String path = (await getApplicationDocumentsDirectory()).path;
  }

  static createpdf(
      name, fault, solution, date, estimated, spare, status) async {
    String path = (await getApplicationDocumentsDirectory()).path;
    File file = File("${path}_Maintain_Report.pdf");

    pw.Document pdf = pw.Document();

    pdf.addPage(
        _createPage(name, fault, solution, date, estimated, spare, status));

    Uint8List bytes = await pdf.save();
    await file.writeAsBytes(bytes);
    await OpenFile.open(file.path);
  }

  static pw.Page _createPage(String name, String fault, String solution,
      String date, String estimated, String spare, String status) {
    final logo = pw.MemoryImage(
      File("assets/images/logo-no-background.png").readAsBytesSync(),
    );

    return pw.Page(
      textDirection: pw.TextDirection.rtl,
      theme: pw.ThemeData.withFont(
        base: arFont,
      ),
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return pw.Container(
          child: pw.Column(
            children: [
              pw.Container(
                alignment: pw.Alignment.centerRight,
                child: pw.Image(
                  logo,
                  width: 150,
                  height: 150,
                  alignment: pw.Alignment.topCenter,
                ),
              ),
              pw.SizedBox(height: 30),
              pw.Container(
                alignment: pw.Alignment.center,
                child: pw.Text(
                  "Report :   " + name,
                  style: const pw.TextStyle(
                    fontSize: 20,
                    color: PdfColor.fromInt(0xFFFF851B),
                  ),
                ),
              ),
              pw.Row(
                children: [
                  pw.Container(
                    child: pw.Text(
                      "Date: ",
                      style: const pw.TextStyle(
                        fontSize: 20,
                        color: PdfColor.fromInt(0xFF31C48E),
                      ),
                    ),
                  ),
                  pw.Expanded(
                    child: pw.Header(
                      margin: const pw.EdgeInsets.symmetric(
                        vertical: 20,
                        // horizontal: 25,
                      ),
                      textStyle: const pw.TextStyle(
                        fontSize: 15,
                        color: PdfColor.fromInt(0xFFFF851B),
                      ),
                      text: date,
                    ),
                  ),
                  pw.Container(
                    child: pw.Text(
                      "Estimated Time: ",
                      style: const pw.TextStyle(
                        fontSize: 20,
                        color: PdfColor.fromInt(0xFF31C48E),
                      ),
                    ),
                  ),
                  pw.Expanded(
                    child: pw.Header(
                      margin: const pw.EdgeInsets.symmetric(
                        vertical: 20,
                        // horizontal: 25,
                      ),
                      textStyle: const pw.TextStyle(
                        fontSize: 15,
                        color: PdfColor.fromInt(0xFFFF851B),
                      ),
                      text: estimated,
                    ),
                  ),
                ],
              ),
              pw.SizedBox(height: 20),
              pw.Container(
                alignment: pw.Alignment.centerLeft,
                child: pw.Text(
                  "Fault:  ",
                  style: const pw.TextStyle(
                    fontSize: 20,
                    color: PdfColor.fromInt(0xFF31C48E),
                  ),
                ),
              ),
              pw.Container(
                alignment: pw.Alignment.centerRight,
                child: pw.Text(
                  fault,
                  style: const pw.TextStyle(
                    fontSize: 15,
                    color: PdfColor.fromInt(0xFFFF851B),
                  ),
                ),
              ),
              pw.Divider(
                color: const PdfColor.fromInt(0xFF31C48E),
              ),
              pw.SizedBox(height: 20),
              pw.Container(
                alignment: pw.Alignment.centerLeft,
                child: pw.Text(
                  "Solution:  ",
                  style: const pw.TextStyle(
                    fontSize: 20,
                    color: PdfColor.fromInt(0xFF31C48E),
                  ),
                ),
              ),
              pw.Container(
                alignment: pw.Alignment.centerRight,
                child: pw.Text(
                  solution,
                  style: const pw.TextStyle(
                    fontSize: 15,
                    color: PdfColor.fromInt(0xFFFF851B),
                  ),
                ),
              ),
              pw.Divider(
                color: const PdfColor.fromInt(0xFF31C48E),
              ),
              pw.SizedBox(height: 20),
              pw.Container(
                alignment: pw.Alignment.centerLeft,
                child: pw.Text(
                  "Spare Parts:  ",
                  style: const pw.TextStyle(
                    fontSize: 20,
                    color: PdfColor.fromInt(0xFF31C48E),
                  ),
                ),
              ),
              pw.Container(
                alignment: pw.Alignment.centerRight,
                width: double.infinity,
                child: pw.Text(
                  spare,
                  style: const pw.TextStyle(
                    fontSize: 15,
                    color: PdfColor.fromInt(0xFFFF851B),
                  ),
                ),
              ),
              pw.Divider(
                color: const PdfColor.fromInt(0xFF31C48E),
              ),
              pw.SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }
}
