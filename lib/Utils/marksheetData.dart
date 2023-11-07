import 'package:flutter/cupertino.dart';

class MarksheetData {
  static TextEditingController schoolNameController = TextEditingController();
  static String? schoolName;
  static TextEditingController studentNameController = TextEditingController();
  static String? studentName;
  static TextEditingController rollNumberController = TextEditingController();
  static String? rollNumber;
  static TextEditingController examinationController = TextEditingController();
  static String? examination;
  static TextEditingController accountController = TextEditingController();
  static String? account;
  static TextEditingController statController = TextEditingController();
  static String? stat;
  static TextEditingController ecoController = TextEditingController();
  static String? eco;
  static TextEditingController englishController = TextEditingController();
  static String? english;
  static TextEditingController gujaratiController = TextEditingController();
  static String? gujarati;
  static TextEditingController spController = TextEditingController();
  static String? sp;
  static TextEditingController baController = TextEditingController();
  static String? ba;
  static int? total;

  static getTotal() {
    total = int.parse(account!) +
        int.parse(stat!) +
        int.parse(eco!) +
        int.parse(english!) +
        int.parse(gujarati!) +
        int.parse(sp!) +
        int.parse(ba!);
  }
}
