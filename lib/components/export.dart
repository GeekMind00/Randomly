import 'dart:io';
import 'dart:async';

import 'package:flutter/material.dart';

import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';

import 'package:pdf/widgets.dart' as pw;

class Pdf {
  static Future<File> generateCenteredText(String text) async {
    final pdf = pw.Document();
    pdf.addPage(pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (context) => pw.Center(
        child: pw.Text(text, 
        style: pw.TextStyle(fontSize: 5),
        softWrap: true,
        
        
        )
      ),
    ));

    return saveDocument(name: 'my_generated_numbers.pdf', pdf: pdf);
  }
  static Future<File> saveDocument({
    required String name,
    required pw.Document pdf,
  }) async {
    final bytes = await pdf.save();

    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/$name');

    await file.writeAsBytes(bytes);

    return file;
  }
    
    
  static Future openFile(File file) async {
    final url = file.path;

    await OpenFile.open(url);
  }
  
}